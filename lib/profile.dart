import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        constraints: BoxConstraints(minHeight: 810),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Email ID',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Date of Birth',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Gender :',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 173, 167, 167),
                                  fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 1;
                                });
                              },
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: _value == 1
                                      ? Colors.black
                                      : Color.fromARGB(255, 173, 167, 167),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 2;
                                });
                              },
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  color: _value == 2
                                      ? Colors.black
                                      : Color.fromARGB(255, 173, 167, 167),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'City, State, Country'),
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Zipcode',
                          style: TextStyle(
                              color: Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 215, 212, 212)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 35,
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow),
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                    child: Text(
                                      'Personal Info',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 15, 50, 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/settings',
                                          arguments: username);
                                    },
                                    child: Text(
                                      'Settings',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ))
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
