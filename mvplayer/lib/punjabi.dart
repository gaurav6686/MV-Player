import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'config.dart';

// import 'package:on_audio_query/on_audio_query.dart';

class punjabiList extends StatefulWidget {
  const punjabiList({Key? key}) : super(key: key);


  @override
  State<punjabiList> createState() => punjabiListState();
}

String currentTitle = "";
String currentArtist = "";
String currentCover = "";
String currentSong = "";



AudioPlayer _audioPlayer = AudioPlayer();
bool isPlaying = false;
IconData btnIcon = Icons.play_arrow;
// Duration _duration = const Duration();
// Duration _position = const Duration();


class punjabiListState extends State<punjabiList> {

  List musicList = [
    {
      "title": "Excuses - Single",
      "artist": "AP Dhillon, Gurinder Gill & Intense",
      "cover":
      "https://is4-ssl.mzstatic.com/image/thumb/Music125/v4/47/47/ac/4747ac85-1658-64ae-bc82-220a4d6213d5/859747478890_cover.jpg/316x316bb.webp",
      "url":
      "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/1d/40/e3/1d40e37c-05cc-2dd5-070b-329417bbf9c3/mzaf_10303317287347489195.plus.aac.p.m4a"
    },
    {
      "title": "Pasoori - Single",
      "artist": "Shae Gill & Ali Shet",
      "cover":
      "https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/f3/f9/06/f3f906c3-79d5-ac9a-5fdd-262048f955f9/cover.jpg/316x316bb.webp",
      "url":
      "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/ab/ea/e9/abeae9f0-6ef9-e449-4ab3-891ec3d337ec/mzaf_10960578449199596609.plus.aac.p.m4a",
    },
    {
      "title": "Dance with Me",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-dance-with-me-3.mp3",
    },
    {
      "title": "Sleepy Cat",
      "artist": "Alejandro Magaña",
      "cover":
      "https://images.pexels.com/photos/1122868/pexels-photo-1122868.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url": "https://assets.mixkit.co/music/preview/mixkit-sleepy-cat-135.mp3",
    },
    {
      "title": "Delightful",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.pexels.com/photos/259707/pexels-photo-259707.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url": "https://assets.mixkit.co/music/preview/mixkit-delightful-4.mp3",
    },
    {
      "title": "Life is a Dream",
      "artist": "Michael Ramir",
      "cover":
      "https://images.pexels.com/photos/1884306/pexels-photo-1884306.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-life-is-a-dream-837.mp3",
    },
    {
      "title": "Feeling Happy",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.pexels.com/photos/2682877/pexels-photo-2682877.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-feeling-happy-5.mp3",
    },
    {
      "title": "Dance with Me",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-dance-with-me-3.mp3",
    },
    {
      "title": "Sleepy Cat",
      "artist": "Alejandro Magaña",
      "cover":
      "https://images.pexels.com/photos/1122868/pexels-photo-1122868.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url": "https://assets.mixkit.co/music/preview/mixkit-sleepy-cat-135.mp3",
    },
    {
      "title": "Delightful",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.pexels.com/photos/259707/pexels-photo-259707.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "url":"https://assets.mixkit.co/music/preview/mixkit-life-is-a-dream-837.mp3",
    },
  ];


  playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      _audioPlayer.pause();

      if (_audioPlayer.play(UrlSource(url)) == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if (!isPlaying) {
      // int result = await _audioPlayer.play(url);
      if (_audioPlayer.play(UrlSource(url)) == 1) {
        setState(() {
          isPlaying = true;
          btnIcon = Icons.pause;
        });
      }
    }

    // _audioPlayer.onDurationChanged.listen((d) {
    //   setState(() {
    //     _duration = d;
    //   });
    // });
    //
    // _audioPlayer.onPositionChanged.listen((p) {
    //   setState(() {
    //     _position = p;
    //   });
    // });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Punjabi Songs'),
        flexibleSpace: Container(
          // color: Colors.black,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 23, 23, 33),
               Color.fromARGB(255, 14, 21, 117),
            ]),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [Colors.blueAccent, Colors.black]),
        // ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(

                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: musicList.length,
                    itemBuilder: (context, index) =>
                        InkWell(
                          onTap: () {
                            playMusic(musicList[index]["url"]);
                            setState(() {
                              currentTitle = musicList[index]["title"];
                              currentArtist = musicList[index]["artist"];
                              currentCover = musicList[index]["cover"];
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const punjabiPlay()),);
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                musicList[index]["cover"],
                              ),
                            ),
                            title: Text(
                              musicList[index]["title"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            subtitle: Text(
                              musicList[index]["artist"],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: Container(
                              margin: const EdgeInsets.all(17.0),
                              child: const Icon(
                                Icons.music_note,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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

class punjabiPlay extends StatefulWidget {
  const punjabiPlay({Key? key}) : super(key: key);

  @override
  State<punjabiPlay> createState() => punjabiPlayState();
}

class punjabiPlayState extends State<punjabiPlay> {

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  String formateTime(int seconds){
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8,'0');
  }

  @override
  void initState(){
    //  TODO: implement initState
    super.initState();

    _audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    _audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        _duration = newDuration;
      });
    });

    _audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        _position=newPosition;
      });
    });
  }

  playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      _audioPlayer.pause();
      if (_audioPlayer.play(UrlSource(url)) == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if (!isPlaying) {
      // int result = await _audioPlayer.play(url);
      if (_audioPlayer.play(UrlSource(url)) == 1) {
        setState(() {
          isPlaying = true;
          btnIcon = Icons.pause;
        });
      }
    }

  }

  

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

       appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.fh),
          child: AppBar(
            centerTitle: true,
            title:  Text(
              'Now Playing',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.2.fw,
                fontSize: MediaQuery.of(context).size.width * 0.052,
              ),
            ),

            flexibleSpace: Container(
              // color: Colors.black,
              decoration: const BoxDecoration(
              
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 23, 23, 33),
                Color.fromARGB(255, 14, 21, 117),
                ]),
              ),
            ), // ...
          )),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(15),
          color: Colors.black,
          child: Container(
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 25.fh,
              ),
              Center(
                child: Column(
                  children: [
                  Container(
                      width: 300.fw,
                      height: 268.fh,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.blue, spreadRadius: 5),
                        ],
                      ),
                      child: Image(image: NetworkImage(currentCover),),
                      // child: Icon(
                      //   Icons.music_note_rounded,
                      //   size: 300,
                      //   color: Colors.blue,
                      // ),
                    ),
                    // CircleAvatar(
                    //   radius: 100.0,
                    //   backgroundImage: NetworkImage(currentCover),
                    // ),
                    SizedBox(
                      height: 30.fh,
                    ),
                    Text(
                      currentTitle,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.fh,
                    ),
                    Text(
                      currentArtist,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.052,
                      color: Colors.white,),
                    ),
                     SizedBox(
                      height: 18.fh,
                    ),
                    Row(
                      children: [
                        Text("${_position.inMinutes}:${_position.inSeconds
                            .remainder(60)}",style: const TextStyle(color: Colors.white),),
                        // Text(formateTime(_position.inSeconds),style: TextStyle(color: Colors.white),),
                        Expanded(

                          child: Slider(min: 0, max: _duration.inSeconds
                              .toDouble(), value: _position.inSeconds
                              .toDouble(),onChanged:(value) {
                            final position = Duration(seconds: value.toInt());
                            _audioPlayer.seek(position);
                            _audioPlayer.resume();
                          },
                          inactiveColor: Colors.white,
                          ),

                        ),
                        Text("${_duration.inMinutes}:${_duration.inSeconds
                            .remainder(60)}",style: const TextStyle(color: Colors.white),),
                        // Text(formateTime((_duration-_position).inSeconds),style: TextStyle(color: Colors.white),),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              // if(_audioPlayer.){
                              // widget.audioPlayer.seekToPrevious();
                              // }
                            },
                            icon: Icon(
                              Icons.skip_previous,
                              size: 40.fw,color: Colors.white,
                            )),
                        IconButton(
                          onPressed: () {
                            if (isPlaying) {
                              _audioPlayer.pause();
                              setState(() {
                                btnIcon = Icons.play_arrow;
                                isPlaying = false;
                              });
                            } else {
                              _audioPlayer.resume();
                              setState(() {
                                btnIcon = Icons.pause;
                                isPlaying = true;
                              });
                            }
                          },
                          icon: Icon(btnIcon, size: 40.fw,color: Colors.white,),
                          // icon: Icon(
                          //     isPlaying ? Icons.pause : Icons.play_arrow,
                          //     size: 40)
                        ),
                        IconButton(
                            onPressed: () {
                            _audioPlayer.seek(_position);
                            },
                            icon:  Icon(Icons.skip_next, size: 40.fw,color: Colors.white,)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }

  void changeToSecond(int seconds) {
    Duration duration = Duration(seconds: seconds);
    _audioPlayer.seek(duration);
  }
}





