import 'package:flutter/material.dart';

class Gta5benchmark extends StatefulWidget {
  const Gta5benchmark({Key? key}) : super(key: key);

  @override
  State<Gta5benchmark> createState() => _Gta5benchmark();
}

class _Gta5benchmark extends State<Gta5benchmark> {
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
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Nvidia()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset("images/nvidia.jpg",
                            fit: BoxFit.cover, width: 173, height: 180),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Amd()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset("images/amd.jpg",
                            fit: BoxFit.cover, width: 173, height: 180),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                color: const Color(0xFF062C30),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 1),
                ],
              ),
              width: 380,
              height: 50,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı markasını seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 24,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: const Text(
                "Gta 5",
                style: TextStyle(
                  fontFamily: 'Witcher',
                  fontSize: 30,
                  color: Color(0xFFddffff),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              child: Image.network(
                'https://i.gifer.com/SZwE.gif',
                width: 390,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA Ekran kartı penceresi

class Nvidia extends StatelessWidget {
  const Nvidia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //**************************************************************************************************************************
            //GTX 1050 TI

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaGTX1050TI()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "GTX 1050 TI",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //GTX 1650 TI

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaGTX1650TI()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "GTX 1650 TI",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RTX 2060

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX2060()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 2060",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //GTX 3050

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX3050()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 3050",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RTX 3060

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NvidiaRTX3060()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RTX 3060",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************************************************************************************************************************
//NVIDIA İşlemci Kısmı

//NVIDIA GTX 1050 TI Ekran Kartı
class NvidiaGTX1050TI extends StatelessWidget {
  const NvidiaGTX1050TI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1050Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA GTX 1650 TI Ekran Kartı
class NvidiaGTX1650TI extends StatelessWidget {
  const NvidiaGTX1650TI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GTX1650Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 2060 Ekran Kartı
class NvidiaRTX2060 extends StatelessWidget {
  const NvidiaRTX2060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX2060Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 3050 Ekran Kartı
class NvidiaRTX3050 extends StatelessWidget {
  const NvidiaRTX3050({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//NVIDIA RTX 3060 Ekran Kartı
class NvidiaRTX3060 extends StatelessWidget {
  const NvidiaRTX3060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF416600),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3050i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RTX3060Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//**********************************************************************************************************************************
//AMD Ekran kartı penceresi

class Amd extends StatelessWidget {
  const Amd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7d0000),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        /* child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Nvidia'),
        ),*/
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "Ekran kartı modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //**************************************************************************************************************************
            //RX 560

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AmdRX560()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 560",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //RX 570

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AmdRX570()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 570",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 5600 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX5600XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 5600 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 6600 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX6600XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 6600 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Radeon RX 6700 XT

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AmdRX6700XT()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF7d0000),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "RX 6700 XT",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************************************************************************************************************************
//AMD İşlemci Kısmı

//AMD Radeon RX 560 Ekran Kartı
class AmdRX560 extends StatelessWidget {
  const AmdRX560({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26282C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7d0000),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX560Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 570
class AmdRX570 extends StatelessWidget {
  const AmdRX570({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570i710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570Ryzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX570Ryzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 5600 XT
class AmdRX5600XT extends StatelessWidget {
  const AmdRX5600XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX5600XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 6600 XT
class AmdRX6600XT extends StatelessWidget {
  const AmdRX6600XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d0000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6600XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AMD Radeon RX 6700 XT
class AmdRX6700XT extends StatelessWidget {
  const AmdRX6700XT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              width: 380,
              height: 70,
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  "İşlemci modelinizi seçiniz",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 30,
                    color: Color(0xFFddffff),
                  ),
                ),
              ),
            ),

            //İntel Core i3 10100

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi310100()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i3 10100",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i5 10400

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi510400()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i5 10400",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //İntel Core i7 10700K

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTi710700K()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "İntel Core i7 10700K",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 5 3600

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTRyzen53600()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 5 3600",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Ryzen 7 3700X

            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red.withOpacity(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RX6700XTRyzen73700X()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF416600),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  width: 300,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Ryzen 7 3700X",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//**************************************************************************************************************************
//İntel Core i3 10100 - Gtx 1050 TI
class GTX1050i310100 extends StatelessWidget {
  const GTX1050i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Gtx 1050 TI
class GTX1050i510400 extends StatelessWidget {
  const GTX1050i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - Gtx 1050 TI
class GTX1050i710700K extends StatelessWidget {
  const GTX1050i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Gtx 1050 TI
class GTX1050Ryzen53600 extends StatelessWidget {
  const GTX1050Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Gtx 1050 TI
class GTX1050Ryzen73700X extends StatelessWidget {
  const GTX1050Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Gtx 1650 TI
class GTX1650i310100 extends StatelessWidget {
  const GTX1650i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Gtx 1650 TI
class GTX1650i510400 extends StatelessWidget {
  const GTX1650i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - Gtx 1650 TI
class GTX1650i710700K extends StatelessWidget {
  const GTX1650i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Gtx 1650 TI
class GTX1650Ryzen53600 extends StatelessWidget {
  const GTX1650Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Gtx 1650 TI
class GTX1650Ryzen73700X extends StatelessWidget {
  const GTX1650Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 2060
class RTX2060i310100 extends StatelessWidget {
  const RTX2060i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 2060
class RTX2060i510400 extends StatelessWidget {
  const RTX2060i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 2060
class RTX2060i710700K extends StatelessWidget {
  const RTX2060i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 2060
class RTX2060Ryzen53600 extends StatelessWidget {
  const RTX2060Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 2060
class RTX2060Ryzen73700X extends StatelessWidget {
  const RTX2060Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 3050
class RTX3050i310100 extends StatelessWidget {
  const RTX3050i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 3050
class RTX3050i510400 extends StatelessWidget {
  const RTX3050i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 3050
class RTX3050i710700K extends StatelessWidget {
  const RTX3050i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 3050
class RTX3050Ryzen53600 extends StatelessWidget {
  const RTX3050Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 3050
class RTX3050Ryzen73700X extends StatelessWidget {
  const RTX3050Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - Rtx 3060
class RTX3060i310100 extends StatelessWidget {
  const RTX3060i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - Rtx 3060
class RTX3060i510400 extends StatelessWidget {
  const RTX3060i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K Rtx 3060
class RTX3060i710700K extends StatelessWidget {
  const RTX3060i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - Rtx 3060
class RTX3060Ryzen53600 extends StatelessWidget {
  const RTX3060Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - Rtx 3060
class RTX3060Ryzen73700X extends StatelessWidget {
  const RTX3060Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//***************************************************************************************************************
//İntel Core i3 10100 - rx560
class RX560i310100 extends StatelessWidget {
  const RX560i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX560
class RX560i510400 extends StatelessWidget {
  const RX560i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - RX560
class RX560i710700K extends StatelessWidget {
  const RX560i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX560
class RX560Ryzen53600 extends StatelessWidget {
  const RX560Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX560
class RX560Ryzen73700X extends StatelessWidget {
  const RX560Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX570
class RX570i310100 extends StatelessWidget {
  const RX570i310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX570
class RX570i510400 extends StatelessWidget {
  const RX570i510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K - RX570
class RX570i710700K extends StatelessWidget {
  const RX570i710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX570
class RX570Ryzen53600 extends StatelessWidget {
  const RX570Ryzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX570
class RX570Ryzen73700X extends StatelessWidget {
  const RX570Ryzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6600XT
class RX6600XTi310100 extends StatelessWidget {
  const RX6600XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6600XT
class RX6600XTi510400 extends StatelessWidget {
  const RX6600XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX6600XT
class RX6600XTi710700K extends StatelessWidget {
  const RX6600XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX6600XT
class RX6600XTRyzen53600 extends StatelessWidget {
  const RX6600XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX5600XT
class RX5600XTRyzen73700X extends StatelessWidget {
  const RX5600XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6600XT
class RX5600XTi310100 extends StatelessWidget {
  const RX5600XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6600XT
class RX5600XTi510400 extends StatelessWidget {
  const RX5600XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX6600XT
class RX5600XTi710700K extends StatelessWidget {
  const RX5600XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX6600XT
class RX5600XTRyzen53600 extends StatelessWidget {
  const RX5600XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX6600XT
class RX6600XTRyzen73700X extends StatelessWidget {
  const RX6600XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i3 10100 - RX6700XT
class RX6700XTi310100 extends StatelessWidget {
  const RX6700XTi310100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i5 10400 - RX6700XT
class RX6700XTi510400 extends StatelessWidget {
  const RX6700XTi510400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//İntel Core i7 10700K RX 6700 XT
class RX6700XTi710700K extends StatelessWidget {
  const RX6700XTi710700K({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 5 3600 - RX 6700 XT
class RX6700XTRyzen53600 extends StatelessWidget {
  const RX6700XTRyzen53600({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}

//Ryzen 7 3700X - RX 6700 XT
class RX6700XTRyzen73700X extends StatelessWidget {
  const RX6700XTRyzen73700X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26282C),
        title: const Text("Aurora Benchmark"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('100 FPS'),
        ),
      ),
    );
  }
}
