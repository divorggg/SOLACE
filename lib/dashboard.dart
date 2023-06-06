import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    String username = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello $username,',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Welcome To',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Solace',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile',
                                arguments: username);
                          },
                          icon: Icon(Icons.person),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/notifications');
                          },
                          icon: Icon(Icons.notifications),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  'Solace Services',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 214, 176),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Icon(
                                Icons.phone,
                                color: Colors.green,
                              )),
                          Text('Call')
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Icon(
                                Icons.message,
                                color: Colors.green,
                              )),
                          Text('Chat')
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Icon(
                                Icons.sticky_note_2,
                                color: Colors.green,
                              )),
                          Text(
                            'Detail Report',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomended Conselor',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/conselor');
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                height: 95,
                                child: Stack(
                                  alignment: AlignmentDirectional.topCenter,
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        child: Image.asset(
                                          'assets/image/man1.jpg',
                                          fit: BoxFit.cover,
                                          width: 75,
                                          height: 75,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
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
                                            Icon(Icons.star,
                                                color: Colors.yellow),
                                            Text('5')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Usman Affan',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Rp 30/min'),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  'connect',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                height: 95,
                                child: Stack(
                                  alignment: AlignmentDirectional.topCenter,
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        child: Image.asset(
                                          'assets/image/woman1.jpeg',
                                          fit: BoxFit.cover,
                                          width: 75,
                                          height: 75,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
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
                                            Icon(Icons.star,
                                                color: Colors.yellow),
                                            Text('5')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Ayu Hasanah',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Rp 30/min'),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  'connect',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                height: 95,
                                child: Stack(
                                  alignment: AlignmentDirectional.topCenter,
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        child: Image.asset(
                                          'assets/image/woman2.jpg',
                                          fit: BoxFit.cover,
                                          width: 75,
                                          height: 75,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
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
                                            Icon(Icons.star,
                                                color: Colors.yellow),
                                            Text('5')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Angelia Hana',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Rp 30/min'),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  'connect',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 215, 212, 212)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                height: 95,
                                child: Stack(
                                  alignment: AlignmentDirectional.topCenter,
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        child: Image.asset(
                                          'assets/image/man2.jpeg',
                                          fit: BoxFit.cover,
                                          width: 75,
                                          height: 75,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
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
                                            Icon(Icons.star,
                                                color: Colors.yellow),
                                            Text('5')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Abu Hanif',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Rp 30/min'),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  'connect',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
