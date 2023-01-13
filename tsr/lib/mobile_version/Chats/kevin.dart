import 'package:flutter/material.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

class kevin_mobile extends StatefulWidget {
  const kevin_mobile({super.key});

  @override
  State<kevin_mobile> createState() => _kevinState();
}

class _kevinState extends State<kevin_mobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/photo3.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('Kevin', style: TextStyle(fontSize: 15)),
                  const Text('Son Görülme: 30 dakika önce',
                      style: TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: (() {}), icon: const Icon(Icons.video_camera_back)),
            IconButton(onPressed: (() {}), icon: const Icon(Icons.camera)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true, fillColor: Colors.grey, hintText: 'chat'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
