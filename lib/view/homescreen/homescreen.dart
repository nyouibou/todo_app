import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> one = [
    '1',
    '2',
  ];
  final List<String> two = ['1', '2', '3'];
  final List<String> three = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  itemCount: one.length,
                  controller: ScrollController(),
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: ((context, index) => Container(
                        height: 50,
                        color: Colors.white,
                        child: Text('${one[index]}'),
                      )),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ListView.separated(
                  controller: ScrollController(),
                  itemCount: two.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: ((context, index) => Container(
                        height: 50,
                        color: Colors.white,
                        child: Text('${two[index]}'),
                      )),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ListView.separated(
                  controller: ScrollController(),
                  itemCount: three.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: ((context, index) => Container(
                        height: 50,
                        color: Colors.white,
                        child: Text('${three[index]}'),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
