import 'package:dacappo/pages/examples/exaple_notes_F2.dart';
import 'package:flutter/material.dart';

class ClassSeven extends StatefulWidget {
  const ClassSeven({Key? key}) : super(key: key);

  @override
  State<ClassSeven> createState() => _ClassSevenState();
}

class _ClassSevenState extends State<ClassSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clase 7 - ¿Qué es la Clave de fa?'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Clase 7 - ¿Qué es la Clave de fa?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'La Clave de fa es un símbolo musical que se ubica en el pentagrama para representar notas de tonos medios a agudos. Se utiliza para posicionar gráficamente las notas musicales en una determinada altura. Dependiendo de la línea en donde se ubica la Clave de fa, se encuentra la nota de sol, y las demás notas musicales se posicionan en las diferentes líneas y espacios del pentagrama.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              const Text(
                'La Clave de fa en el pentagrama',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'La Clave de fa se representa gráficamente en el pentagrama ubicándola sobre la segunda línea de abajo hacia arriba. Su figura tiene una forma redondeada en la parte inferior.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              const Text(
                'Las notas musicales en las lineas del pentagrama de sol son: A (la), C (do), E (mi), G (sol).',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExampleNotesF2(),
                    ),
                  );
                },
                child: const Icon(Icons.ads_click),
              )
            ],
          ),
        ),
      ),
    );
  }
}
