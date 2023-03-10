import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Chats/Mike.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/Gizlilik/Gruplar.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/Gizlilik/Hakkimda.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/Gizlilik/Profil_Fotografi.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/Gizlilik/son_g%C3%B6r%C3%BClme.dart';
import 'package:tsr/Widgets/Ayarlar.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

class Hesap extends StatefulWidget {
  const Hesap({super.key});

  @override
  State<Hesap> createState() => _HesapState();
}

class _HesapState extends State<Hesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const homepage_mobile(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Gizlilik'),
      ),
      body: ListView(
        children: [
          Card(
            child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const songorulme(),
                    ),
                  );
                }),
                child: ayar(
                  text: 'Songörülme ve Çevrimiçi',
                  subtitle: 'Kişiler,Herkes',
                )),
          ),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profilfotografi(),
                  ),
                );
              }),
              child: Card(
                child: ayar(
                  text: 'Profil Fotoğrafi',
                  subtitle: 'Kişiler',
                ),
              )),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const hakkimda(),
                  ),
                );
              }),
              child: Card(
                child: ayar(
                  text: 'Hakkimda',
                  subtitle: 'Kişiler',
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const gruplar(),
                  ),
                );
              }),
              child: Card(
                child: ayar(text: 'Gruplar', subtitle: 'Herkes'),
              )),
          Card(
            child: ayar(text: 'Engellenmiş Kişiler', subtitle: '0'),
          ),
        ],
      ),
    );
  }
}
