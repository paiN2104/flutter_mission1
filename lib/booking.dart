import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
// import 'package:flutter_widget/aldialog.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _bookingKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isName = false;
  bool isPhoneNumber = false;
  bool isEmail = false;
  bool isCity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: _bookingKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: ctrlName,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    isName = value!.isEmpty ? false : true;

                    if (!isName) {
                      return 'Please enter a name.';
                    }
                    return null;
                    // return value!.isEmpty ? false : true;
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? "Email tidak valid"
                        : null;
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlPhone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    isPhoneNumber = value!.isEmpty ||
                            !RegExp(r'^[0-9]*$').hasMatch(value) ||
                            value.length < 8 ||
                            value.length > 13
                        ? false
                        : true;
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]*$').hasMatch(value) ||
                        value.length < 8 ||
                        value.length > 13) {
                      return 'Please enter a phone number.';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlCity,
                  keyboardType: TextInputType.streetAddress,
                  decoration: const InputDecoration(
                    labelText: "City",
                    prefixIcon: Icon(Icons.location_city),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    isCity = value!.isEmpty ? false : true;
                    if (!isCity) {
                      return 'Please enter a city.';
                    }
                    return null;
                    // return value!.isEmpty ? false : true;
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_bookingKey.currentState!.validate() == false) {
                        showPlatformDialog(
                          context: context,
                          builder: (context) => BasicDialogAlert(
                            title: Text("Booking Confirmation"),
                            content: Text("Please fill all the fields"),
                            actions: <Widget>[
                              BasicDialogAction(
                                title: Text("OK"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      } else {
                        showPlatformDialog(
                          context: context,
                          builder: (context) => BasicDialogAlert(
                            title: Text("Booking Confirmation"),
                            content: Text(
                                "Name: ${ctrlName.text}\nEmail: ${ctrlEmail.text}\nPhone: ${ctrlPhone.text}\nCity: ${ctrlCity.text}"),
                            actions: <Widget>[
                              BasicDialogAction(
                                title: Text("OK"),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      }
                      // Fluttertoast.showToast(
                      //     msg:
                      //         "Email: ${ctrlEmail.text} & Password: ${ctrlPassword.text}",
                      //     backgroundColor: Colors.orange);
                    },
                    icon: Icon(Icons.save),
                    label:
                        Text("Book Now", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: EdgeInsets.all(12),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
