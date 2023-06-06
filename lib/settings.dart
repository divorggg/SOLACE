import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingsPage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    String username = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard', arguments: username);
          },
        ),
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Profile'),
            Container(
              alignment: Alignment.center,
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notifications');
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 28,
                ),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        constraints: BoxConstraints(minHeight: 860),
        decoration: BoxDecoration(color: Colors.red),
        child: Stack(
          children: [
            Positioned.fill(
              top: 180,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                padding: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child: ExpansionTile(
                            title: Text('FAQ'),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child: ExpansionTile(
                            title: Text('Feedbacks & Support'),
                            children: [
                              ListView(
                                shrinkWrap: true,
                                children: [
                                  ListTile(
                                    title: Text('Feedbacks'),
                                    onTap: () {
                                      Navigator.pushNamed(context, '/feedback',
                                          arguments: username);
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Support'),
                                    onTap: () {
                                      Navigator.pushNamed(context, '/support',
                                          arguments: username);
                                    },
                                  )
                                ],
                              ),
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child:
                              ExpansionTile(title: Text('Terms & Conditions'))),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child: ExpansionTile(title: Text('Privacy'))),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child: ExpansionTile(title: Text('About Us'))),
                      Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromARGB(255, 215, 212, 212)))),
                          child: ExpansionTile(title: Text('Contact Us'))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 35,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 16),
                                ),
                                Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              'Follow us on',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Icon(
                                    FontAwesomeIcons.tiktok,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              ),
            ),
            Container(
              height: 235,
              padding: EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 215, 212, 212)),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            username,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_android,
                                color: Colors.red,
                                size: 18,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('080011223344')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(50, 15, 0, 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/profile',
                                          arguments: username);
                                    },
                                    child: Text(
                                      'Personal Info',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 50, 10),
                                  child: InkWell(
                                    child: Text(
                                      'Settings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Positioned(
                      top: 10,
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 212, 212),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 75,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
