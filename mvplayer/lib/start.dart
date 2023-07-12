import 'package:flutter/material.dart';
import 'package:mvplayer/config.dart';
import 'package:mvplayer/song_type.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 68, 124, 221), Colors.black]),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 200.fh),
                child: Text(
                  'Welcome to Music Video Player',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      color: Colors.white,fontWeight: FontWeight.bold,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.fh),
                child: Container(
                  child: CircleAvatar(
                    radius: 120.fw,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Windows_Media_Player_simplified_logo.svg/768px-Windows_Media_Player_simplified_logo.svg.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.fh),
                child: Container(
                  height: 50.fh,
                  width: 250.fw,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const songTypes()),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
