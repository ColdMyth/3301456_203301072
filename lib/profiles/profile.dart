import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String name;
  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF072227),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF004141),
        title: const Text("Aurora Benchmark"),
      ),
      body: FutureBuilder(
          future: fetch(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Hoş Geldiniz...",
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 40,
                    color: Color(0xFFddffff),
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Adınız:",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30,
                        color: Color(0xFFddffff),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 25,
                        color: Color(0xFFddffff),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Email Adresiniz:",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30,
                        color: Color(0xFFddffff),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      email,
                      style: const TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 22,
                        color: Color(0xFFddffff),
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }

  fetch() async {
    final user = _auth.currentUser;
    if (user != null) {
      await _firestore.collection('persons').doc(user.uid).get().then((ds) {
        name = ds['userName'];
        email = ds['email'];
      }).catchError((e) {
        print(e);
      });
    }
  }
}
