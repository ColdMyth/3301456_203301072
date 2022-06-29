import 'package:aurora_benchmark/benchmark/acvalhallabenchmark.dart';
import 'package:aurora_benchmark/benchmark/apexlegendsbenchmark.dart';
import 'package:aurora_benchmark/benchmark/csgobenchmark.dart';
import 'package:aurora_benchmark/benchmark/cyberpunk2077benchmark.dart';
import 'package:aurora_benchmark/benchmark/deathstrandingbenchmark.dart';
import 'package:aurora_benchmark/benchmark/dyinglight2benchmark.dart';
import 'package:aurora_benchmark/benchmark/forzahorizon4benchmark.dart';
import 'package:aurora_benchmark/benchmark/forzahorizon5benchmark.dart';
import 'package:aurora_benchmark/benchmark/gta5benchmark.dart';
import 'package:aurora_benchmark/benchmark/hadesbenchmark.dart';
import 'package:aurora_benchmark/benchmark/mbbannerlordbenchmark.dart';
import 'package:aurora_benchmark/benchmark/minecraftbenchmark.dart';
import 'package:aurora_benchmark/benchmark/reddeadredemption2benchmark.dart';
import 'package:aurora_benchmark/benchmark/skyrimbenchmark.dart';
import 'package:aurora_benchmark/benchmark/thewitcher3benchmark.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),

      //Üstteki AppBar kısmı

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF004141),
        title: const Text("Aurora Benchmark"),
      ),

      //Body Kısmı

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  color: const Color(0xFF062C30),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.black, spreadRadius: 1),
                  ],
                ),
                width: 400,
                height: 160,
                padding: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    "Bilgisayarınızın hangi oyunda ne kadar performans alacağını öğrenmek istiyorsanız ekranı aşağıdan yukarıya doğru kaydırıp, istediğiniz oyunu seçip sistem özelliklerinizi giriniz.",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontSize: 21,
                      color: Color(0xFFddffff),
                    ),
                  ),
                ),
              ),

              //Aradaki görünmez duvar

              const SizedBox(
                height: 20,
              ),

              //Üçlü satır

              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Thewitcher3benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/thewitcher3.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "The Witcher 3",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Reddeadredemption2benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/reddeadredemption2.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "RDR 2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gta5benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/grandtheftauto5.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "GTA 5",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Cyberpunk2077benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/cyberpunk2077.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Cyberpunk 2077",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Acvalhallabenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/acvalhalla.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "AC Valhalla",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hadesbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/hades.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Hades",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dyinglight2benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/dyinglight2.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Dying Light 2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Forzahorizon4benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/forzahorizon4.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Forza Horizon 4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Forzahorizon5benchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/forzahorizon5.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Forza Horizon 5",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Csgobenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/counterstrikeglobaloffensive.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "CS GO",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Apexlegendsbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/apexlegends.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Apex Legends",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Deathstrandingbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/deathstranding.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Death Stranding",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Minecraftbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/minecraft.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Minecraft",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Mbbannerlordbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/mountandbladebannerlord.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "M&B Bannerlord",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(135, 200),
                      maximumSize: const Size(135, 200),
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Skyrimbenchmark()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Column(
                        children: [
                          Image.asset("images/theelderscrollsskyrim.jpg",
                              fit: BoxFit.cover, width: 120, height: 150),
                          Container(
                            width: 120,
                            height: 35,
                            child: const Center(
                              child: Text(
                                "Skyrim",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
