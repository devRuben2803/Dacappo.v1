// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ExercisePrueba2 extends StatefulWidget {
  const ExercisePrueba2({Key? key}) : super(key: key);

  @override
  State<ExercisePrueba2> createState() => _ExercisePrueba2State();
}

class _ExercisePrueba2State extends State<ExercisePrueba2> {
  bool viewExercise = false;
  bool viewButton = true;
  bool viewButtonReplay = false;
  bool viewText = true;
  late int note = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Note'),
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
                      'Clave de Sol',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Visibility(
                      visible: viewExercise,
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
                              'assets/images/clave_de_sol.png',
                            ),
                            const Positioned(
                              top: 147,
                              left: 1,
                              child: Text('Nombre Nota:'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 107,
                              child: Text('Fa/F -'),
                            ),
                            Positioned(
                              top: 72,
                              left: 95,
                              child: IconButton(
                                onPressed: () {
                                  if (note == 1) {
                                    debugPrint('si es la nota');
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              setState(() {
                                                viewExercise = false;
                                                viewText = true;
                                                viewButton = true;
                                                viewButtonReplay = false;
                                              });
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Felicidades'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content:
                                            const Text('Si es la nota: Fa/F'),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Fallaste'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content: const Text('No es la nota'),
                                      ),
                                    );
                                    debugPrint('Vuelva a intentar');
                                  }
                                },
                                icon: const Icon(
                                  Icons.music_note,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 147,
                              left: 143,
                              child: Text('La/A -'),
                            ),
                            Positioned(
                              top: 58,
                              left: 135,
                              child: IconButton(
                                onPressed: () {
                                  if (note == 2) {
                                    debugPrint('si es la nota');
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              setState(() {
                                                viewExercise = false;
                                                viewButton = true;
                                                viewButtonReplay = false;
                                                viewText = true;
                                              });
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Felicidades'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content:
                                            const Text('Si es la nota: La/A'),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Fallaste'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content: const Text('No es la nota'),
                                      ),
                                    );
                                    debugPrint('Vuelva a intentar');
                                  }
                                },
                                icon: const Icon(
                                  Icons.music_note,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 147,
                              left: 183,
                              child: Text('Do/C -'),
                            ),
                            Positioned(
                              top: 45,
                              left: 175,
                              child: IconButton(
                                onPressed: () {
                                  if (note == 3) {
                                    debugPrint('si es la nota');
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              setState(() {
                                                viewExercise = false;
                                                viewButton = true;
                                                viewText = true;
                                                viewButtonReplay = false;
                                              });
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Felicidades'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content:
                                            const Text('Si es la nota: Do/C'),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Fallaste'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content: const Text('No es la nota'),
                                      ),
                                    );
                                    debugPrint('Vuelva a intentar');
                                  }
                                },
                                icon: const Icon(
                                  Icons.music_note,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 147,
                              left: 230,
                              child: Text('Mi/E -'),
                            ),
                            Positioned(
                              top: 32,
                              left: 215,
                              child: IconButton(
                                onPressed: () {
                                  if (note == 4) {
                                    debugPrint('si es la nota');
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              setState(() {
                                                viewExercise = false;
                                                viewButton = true;
                                                viewButtonReplay = false;
                                                viewText = true;
                                              });
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Felicidades'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content:
                                            const Text('Si es la nota: Mi/E'),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                        title: const Text('Fallaste'),
                                        contentPadding:
                                            const EdgeInsets.all(20.0),
                                        content: const Text('No es la nota'),
                                      ),
                                    );
                                    debugPrint('Vuelva a intentar');
                                  }
                                },
                                icon: const Icon(
                                  Icons.music_note,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Visibility(
                      visible: viewButton,
                      child: const Text(
                          'Despues de dar click en el boton\nva a sonar una nota de la clave de sol\ndebes dar click en la figura ♩ de la nota correcta'),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Visibility(
                    visible: viewButton,
                    child: FloatingActionButton(
                      child: const Icon(Icons.play_arrow_outlined),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  setState(() {
                                    var intValue = Random().nextInt(4) + 1;
                                    playSound(intValue);
                                    note = intValue;
                                    debugPrint('note $note');
                                    debugPrint('random $intValue');
                                    viewExercise = true;
                                    viewButton = false;
                                    viewButtonReplay = true;
                                    viewText = false;
                                  });
                                },
                                child: const Text('OK'),
                              ),
                            ],
                            title: const Text('Ejercicio de Notas'),
                            contentPadding: const EdgeInsets.all(20.0),
                            content: const Text(
                                'oprime \'ok\' para empezar el ejercicio'),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Visibility(
                    visible: viewButtonReplay,
                    child: FloatingActionButton(
                      child: const Icon(Icons.replay),
                      onPressed: () {
                        playSound(note);
                      },
                    ),
                  )
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
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_sol/mi.mp3'));
    } else if (note == 2) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_sol/sol.mp3'));
    } else if (note == 3) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_sol/si.mp3'));
    } else if (note == 4) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_sol/re.mp3'));
    } else if (note == 5) {
      AudioPlayer().play(AssetSource('sounds/notes/clave_de_sol/fa.mp3'));
    }
  }
}
