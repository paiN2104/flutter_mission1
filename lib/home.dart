import 'package:flutter/material.dart';
import 'package:flutter_widget/booking.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mission 1',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.white,
                    ]),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'images/header.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  // Foto
                  Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 6,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/agito.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/build.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/decade.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/double.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/kuuga.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                          'images/kuugga.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                    flex: 4,
                    child: Column(children: [
                      Text(
                        "Kamen Rider",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '''Serial Kamen Rider atau dalam bahasa Jepang aslinya Kamen Rider Series (仮面ライダーシリーズ, Kamen Raidā Shirīzu, terjemahan resmi: Masked Rider Series)—sempat diterjemahkan menjadi "Ksatria Baja" ketika ditayangkan di Indonesia— adalah sebuah Waralaba media untuk Manga dan program drama Televisi dan film tokusatsu, yang diciptakan oleh seorang mangaka, Shotaro Ishinomori. 
Kamen Rider adalah serial yang bertemakan pahlawan super yang selalu mengendarai sepeda motor dan bermotif serangga melawan organisasi penjahat super, yang dikenal sebagai kaijin (怪人). Waralaba ini pertama kali menayangkan serial televisi Kamen Rider pada tahun 1971, di mana seorang mahasiswa yang bernama Takeshi Hongo dan usahanya untuk mengalahkan organisasi penakluk dunia, Shocker. Popularitasnya berkembang; serial asli melanjutkan sekuel televisi dan film dan meluncurkan Ledakan Kaiju Kedua (juga dikenal sebagai Henshin Boom) di televisi Jepang selama awal 1970-an, yang berdampak pada superhero dan genre aksi-petualangan lainnya di Jepang.
''',
                            style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 0.5,
                                letterSpacing: 0.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                child: Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
              )),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: 'Welcome to Booking Page!',
                          backgroundColor: Colors.green);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BookingPage();
                        }),
                      );
                    },
                    icon: Icon(Icons.check_box),
                    label: Text("Book Now"),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: EdgeInsets.all(12),
                      backgroundColor: Colors.lightBlue[100],
                      foregroundColor: Colors.blue,
                      textStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
