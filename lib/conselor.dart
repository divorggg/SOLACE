import 'package:flutter/material.dart';

class ConselorPage extends StatefulWidget {
  const ConselorPage({super.key});

  @override
  State<ConselorPage> createState() => _ConselorPageState();
}

class _ConselorPageState extends State<ConselorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Konselor'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 215, 212, 212),
                            style: BorderStyle.solid))),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 145,
                              child: Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                        'assets/image/man1.jpg',
                                        fit: BoxFit.cover,
                                        height: 125,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 115,
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 215, 212, 212),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Usman Affan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.book),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Indonesia University,'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text('Psycologi '),
                                              Text(
                                                '+7 more',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.abc),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('English, Indonesian'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '+2 more',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Rp   30/min')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Icon(Icons.verified, color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Chat',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 215, 212, 212),
                            style: BorderStyle.solid))),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 145,
                              child: Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                        'assets/image/woman1.jpeg',
                                        fit: BoxFit.cover,
                                        height: 125,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 115,
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 215, 212, 212),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ayu Hasanah',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.book),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Gadjah Mada University,'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text('Criminology '),
                                              Text(
                                                '+7 more',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.abc),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('English, Mandarin'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '+2 more',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Rp   30/min')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Icon(Icons.verified, color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Chat',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 215, 212, 212),
                            style: BorderStyle.solid))),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 145,
                              child: Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                        'assets/image/man2.jpeg',
                                        fit: BoxFit.cover,
                                        height: 125,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 115,
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 215, 212, 212),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Abu Hanif',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.book),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Jambi University,'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text('Economy '),
                                              Text(
                                                '+7 more',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.abc),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('English, Arabic'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '+2 more',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Rp   30/min')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Chat',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 215, 212, 212),
                            style: BorderStyle.solid))),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 145,
                              child: Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.asset(
                                        'assets/image/woman2.jpg',
                                        fit: BoxFit.cover,
                                        height: 125,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 115,
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 215, 212, 212),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Angelia Hana',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.book),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Sriwijaya University,'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text('Informatics '),
                                              Text(
                                                '+7 more',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.abc),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('English, Russian'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '+2 more',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Rp   30/min')
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Chat',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
