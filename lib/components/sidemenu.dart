import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final List<String> listTitle = <String>[
    'Expériences',
    'Formation',
    'Projets',
    'Technologies',
    'Soft skills',
    'GIT'
  ];

  final List<IconData> listIcon = <IconData>[
    Icons.work,
    Icons.school,
    Icons.biotech,
    Icons.add_to_queue_sharp,
    Icons.person_add,
    Icons.computer
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
        width: mediaQuery.size.width/2 ,
        height: mediaQuery.size.height,
          child : ListView.builder(

                itemCount: listTitle.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: mediaQuery.size.height * 0.1,
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            listIcon[index],
                            size: (mediaQuery.size.width *
                                    mediaQuery.size.height) *
                                0.00004,
                            color: Colors.black,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${listTitle[index]}',
                                style: TextStyle(
                                    fontSize: (mediaQuery.size.width *
                                            mediaQuery.size.height) *
                                        0.00003,
                                    color: Colors.black),
                              ))
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),

                  );
                }),

        );
  }
}
