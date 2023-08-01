// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../navbar/bar_navigation.dart';

class ExampleNotesF1 extends StatefulWidget {
  const ExampleNotesF1({Key? key}) : super(key: key);

  @override
  State<ExampleNotesF1> createState() => _ExampleNotesF1State();
}

class _ExampleNotesF1State extends State<ExampleNotesF1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Note'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavBar(),
                  ),
                );
              },
              icon: const Icon(Icons.home))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      'Clave de Fa',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        border: Border.all(
                          width: 2,
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/clave_de_fa.png',
                          ),
                          Positioned(
                            top: 105,
                            left: 95,
                            child: IconButton(
                              onPressed: () {
                                playSound(1);
                                debugPrint('Botton de Nota Sol');
                              },
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 147,
                            left: 10,
                            child: Text('Nombre Nota:'),
                          ),
                          const Positioned(
                            top: 147,
                            left: 106,
                            child: Text('Sol/G -'),
                          ),
                          Positioned(
                            top: 75,
                            left: 135,
                            child: IconButton(
                              onPressed: () {
                                playSound(2);
                                debugPrint('Botton de Nota si');
                              },
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 147,
                            left: 150,
                            child: Text('Si/B -'),
                          ),
                          const Positioned(
                            top: 147,
                            left: 190,
                            child: Text('Re/D -'),
                          ),
                          Positioned(
                            top: 45,
                            left: 175,
                            child: IconButton(
                              onPressed: () {
                                playSound(3);
                                debugPrint('Botton de Nota re');
                              },
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 147,
                            left: 230,
                            child: Text(' Fa/F -'),
                          ),
                          Positioned(
                            top: 20,
                            left: 215,
                            child: IconButton(
                              onPressed: () {
                                playSound(4);
                                debugPrint('Botton de Nota fa');
                              },
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 147,
                            left: 265,
                            child: Text('  La/A'),
                          ),
                          Positioned(
                            top: -10,
                            left: 250,
                            child: IconButton(
                              onPressed: () {
                                playSound(5);
                                debugPrint('Botton de Nota la');
                              },
                              icon: const Icon(
                                Icons.music_note,
                                color: Colors.black87,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Has click en los iconos ♩ para\npara escuchar la nota de cada\nlinea.'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> playSound(int note) async {
    if (note == 1) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_fa/sol.mp3'));
    } else if (note == 2) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_fa/si.mp3'));
    } else if (note == 3) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_fa/re.mp3'));
    } else if (note == 4) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_fa/fa.mp3'));
    } else if (note == 5) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_fa/la.mp3'));
    }
  }
}
