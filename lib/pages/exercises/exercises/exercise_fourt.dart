import 'dart:math';

import 'package:dacappo/pages/exercises/exercises/exercise_prueba.dart';
import 'package:dacappo/pages/exercises/exercises/exercise_prueba4.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'exercise_prueba2.dart';

class ExerciseFourt extends StatefulWidget {
  const ExerciseFourt({Key? key}) : super(key: key);

  @override
  State<ExerciseFourt> createState() => _ExerciseFourtState();
}

class _ExerciseFourtState extends State<ExerciseFourt> {
  bool viewExercise = false;
  bool viewButton = true;
  bool viewButtonReplay = false;
  bool viewText = true;
  late int note = 0;
  int score = 0;
  int maxScore = 500;
  int exerciseCount = 0;
  int correctCount = 0;
  bool isNextExerciseDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (viewExercise && !isNextExerciseDialogOpen) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
              title: const Text('Acción inválida'),
              contentPadding: const EdgeInsets.all(20.0),
              content: const Text(
                'Debes terminar el ejercicio antes de retroceder.',
              ),
            ),
          );
        }
        return !viewExercise;
      },
      child: Scaffold(
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
                                left: 10,
                                child: Text('Nombre Nota:'),
                              ),
                              const Positioned(
                                top: 147,
                                left: 113,
                                child: Text('La/A -'),
                              ),
                              const Positioned(
                                top: 147,
                                left: 155,
                                child: Text('Do/C -'),
                              ),
                              const Positioned(
                                top: 147,
                                left: 200,
                                child: Text('Mi/E -'),
                              ),
                              const Positioned(
                                top: 147,
                                left: 240,
                                child: Text('Sol/G'),
                              ),
                              Positioned(
                                top: 90,
                                left: 95,
                                child: IconButton(
                                  onPressed: () {
                                    if (note == 1) {
                                      debugPrint('si es la nota');
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(true);
                                                _startNextExercise();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                          title: const Text('Felicidades'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                            'Si es la nota: La/A',
                                          ),
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(false);
                                                _startNextExercise();
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
                                top: 60,
                                left: 135,
                                child: IconButton(
                                  onPressed: () {
                                    if (note == 2) {
                                      debugPrint('si es la nota');
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(true);
                                                _startNextExercise();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                          title: const Text('Felicidades'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                            'Si es la nota: Do/C',
                                          ),
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(false);
                                                _startNextExercise();
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
                                top: 30,
                                left: 175,
                                child: IconButton(
                                  onPressed: () {
                                    if (note == 3) {
                                      debugPrint('si es la nota');
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(true);
                                                _startNextExercise();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                          title: const Text('Felicidades'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                            'Si es la nota: Mi/E',
                                          ),
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(false);
                                                _startNextExercise();
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
                                top: 5,
                                left: 215,
                                child: IconButton(
                                  onPressed: () {
                                    if (note == 4) {
                                      debugPrint('si es la nota');
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(true);
                                                _startNextExercise();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                          title: const Text('Felicidades'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                            'Si es la nota: Sol/G',
                                          ),
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                _handleAnswer(false);
                                                _startNextExercise();
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
                        visible: viewButton && !viewExercise,
                        child: const Text(
                          'Después de hacer clic en el botón,\nse reproducirá una nota de la clave de fa.\nDebes hacer clic en la figura ♩ de la nota correcta',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Visibility(
                      visible: viewButton && !viewExercise,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExercisePrueba4(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.spatial_audio_sharp),
                            label: const Text(
                              'Prueba',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        setState(() {
                                          var intValue =
                                              Random().nextInt(4) + 1;
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
                                    'Oprime \'OK\' para empezar el ejercicio',
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.play_arrow_outlined),
                            label: const Text(
                              'Ejercicio',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
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
                    ),
                    const SizedBox(height: 20),
                    Visibility(
                      visible: !viewButton,
                      child: Column(
                        children: [
                          Text(
                            'Puntuación: $score / $maxScore',
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Veces acertadas: $correctCount / 10',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> playSound(int note) async {
    if (note == 1) {
      AudioPlayer()
          .play(AssetSource('sounds/notes/clave_de_fa/la_espacio.mp3'));
    } else if (note == 2) {
      AudioPlayer()
          .play(AssetSource('sounds/notes/clave_de_fa/do_espacio.mp3'));
    } else if (note == 3) {
      AudioPlayer()
          .play(AssetSource('sounds/notes/clave_de_fa/mi_espacio.mp3'));
    } else if (note == 4) {
      AudioPlayer()
          .play(AssetSource('sounds/notes/clave_de_fa/sol_espacio.mp3'));
    }
  }

  void _handleAnswer(bool isCorrect) {
    if (isCorrect) {
      score += 50;
      correctCount++;
    }
    if (score > maxScore) {
      score = maxScore;
    }
    if (score < 0) {
      score = 0;
    }
    setState(() {
      viewExercise = false;
      viewText = true;
      viewButton = true;
      viewButtonReplay = false;
      exerciseCount++;
    });
    if (exerciseCount >= 10) {
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
          title: const Text('¡Felicitaciones!'),
          contentPadding: const EdgeInsets.all(20.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Has completado el ejercicio.'),
              const SizedBox(height: 10),
              Text('Veces acertadas: $correctCount'),
            ],
          ),
        ),
      );
    }
  }

  void _startNextExercise() {
    if (exerciseCount < 10) {
      isNextExerciseDialogOpen = true;
      showDialog(
        context: context,
        barrierDismissible: false,
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
                isNextExerciseDialogOpen = false;
              },
              child: const Text('OK'),
            ),
          ],
          title: const Text('Siguiente ejercicio'),
          contentPadding: const EdgeInsets.all(20.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Repetición: $exerciseCount / 10'),
              const SizedBox(height: 10),
              Text('Veces acertadas: $correctCount / 10'),
            ],
          ),
        ),
      );
    }
  }
}
