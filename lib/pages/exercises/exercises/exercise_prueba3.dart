// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ExercisePrueba3 extends StatefulWidget {
  const ExercisePrueba3({Key? key}) : super(key: key);

  @override
  State<ExercisePrueba3> createState() => _ExercisePrueba3State();
}

class _ExercisePrueba3State extends State<ExercisePrueba3> {
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
                      'clave de fa',
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
                              'assets/images/clave_de_fa.png',
                            ),
                            const Positioned(
                              top: 147,
                              left: 1,
                              child: Text('Nombre Nota:'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 97,
                              child: Text('Sol/G -'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 143,
                              child: Text('Si/B -'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 183,
                              child: Text('Re/D -'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 224,
                              child: Text(' Fa/F -'),
                            ),
                            const Positioned(
                              top: 147,
                              left: 260,
                              child: Text('  La/A'),
                            ),
                            Positioned(
                              top: 104,
                              left: 85,
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
                                            const Text('Si es la nota: G/Sol'),
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
                                  size: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 75,
                              left: 125,
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
                                            const Text('Si es la nota: B/Si'),
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
                                  size: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 46,
                              left: 165,
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
                                            const Text('Si es la nota: D/Re'),
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
                                  size: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 19,
                              left: 205,
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
                                            const Text('Si es la nota: F/Fa'),
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
                                  size: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: 245,
                              child: IconButton(
                                onPressed: () {
                                  if (note == 5) {
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
                                            const Text('Si es la nota: A/La'),
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
                                  size: 40,
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
                          'Despues de dar click en el boton\nva a sonar una nota de la clave de fa\ndebes dar click en la figura ♩ de la nota correcta'),
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
