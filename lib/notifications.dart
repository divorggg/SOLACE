import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Notifikasi'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Container(
              child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 215, 212, 212)))),
                  child: ExpansionTile(
                    title: Container(
                      child: Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Solace Notifications')
                        ],
                      ),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 215, 212, 212)))),
                  child: ExpansionTile(
                    title: Container(
                      child: Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Icon(
                                Icons.event,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Events Notifications')
                        ],
                      ),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 215, 212, 212)))),
                  child: ExpansionTile(
                    title: Container(
                      child: Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Icon(
                                Icons.handshake,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Care Services Notifications')
                        ],
                      ),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 215, 212, 212)))),
                  child: ExpansionTile(
                    title: Container(
                      child: Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Icon(
                                Icons.pin_drop,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Local Biz & Services')
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
