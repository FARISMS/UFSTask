import 'package:flutter/material.dart';
import 'package:ufstask/widgets/option_first.dart';

import '../widgets/form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

List<String> menuName = [
  'Risk Assessment',
  'Safety Hazard',
  'Chemical Hazard',
  'Biological Hazard',
  'Ergonomics Hazard'
];
List<String> subMenuName = ['Cleaning Products', 'Pesticide', 'Asbestos'];

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("Risk Assessment"),
          ),
          const SizedBox(height: 16,),
          ListView.builder(
              shrinkWrap: true,
              itemCount: menuName.length,
              itemBuilder: (context, i) {
                return ExpansionTile(
                  collapsedBackgroundColor:
                      const Color.fromRGBO(229, 241, 255, 1),
                  title: ListOption(
                    text: menuName[i],
                  ),
                  children: [
                    SizedBox(
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(shrinkWrap: true, children: [
                          ExpansionTile(
                            backgroundColor:
                                const Color.fromRGBO(249, 249, 249, 1),
                            title: ListOption(
                              text: subMenuName[0],
                            ),
                            children: const [FormOptions()],
                          ),
                          ExpansionTile(
                            backgroundColor:
                                const Color.fromRGBO(249, 249, 249, 1),
                            title: ListOption(
                              text: subMenuName[1],
                            ),
                            children: const [FormOptions()],
                          ),
                          ExpansionTile(
                            backgroundColor:
                                const Color.fromRGBO(249, 249, 249, 1),
                            title: ListOption(
                              text: subMenuName[2],
                            ),
                            children: const [FormOptions()],
                          ),
                        ]),
                      ),
                    ),
                  ],
                );
              }),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                maxLines: 2,
                decoration: InputDecoration(
                    border: InputBorder.none, labelText: 'Enter Notes'),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 241, 205, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.black),
                      ))),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                  flex: 3,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(229, 170, 23, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.black),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
