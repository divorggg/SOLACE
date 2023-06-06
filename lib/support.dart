import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<SupportPage> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    String username = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Feedback & Support'),
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, '/settings', arguments: username);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
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
                          'Contact Support',
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
                              Navigator.pushNamed(context, '/feedback',
                                  arguments: username);
                            });
                          },
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(
                              color: _value == 2
                                  ? Colors.black
                                  : Color.fromARGB(255, 173, 167, 167),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email',
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Email Id',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 215, 212, 212))),
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Contact Number',
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your contact number',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 215, 212, 212))),
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Subject',
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Message Subject',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 215, 212, 212))),
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Issue Type',
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
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                hint: Text(
                                  'Select option',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 173, 167, 167)),
                                ),
                                items: null,
                                onChanged: (value) {},
                              ),
                            ))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Suggestion Box',
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'How can we help you today?',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 215, 212, 212))),
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
                          width: 120,
                          child: const Text(
                            'Send Message',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
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
