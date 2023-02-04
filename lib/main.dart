import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: jay_id(),
));


class jay_id extends StatefulWidget {
  @override
  State<jay_id> createState() => _jay_idState();
}

class _jay_idState extends State<jay_id> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Jay ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/front.png'),
                radius: 40.0,
                backgroundColor: Colors.blueAccent[100],
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[850],
            ),
            Text(
                'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            )
            ),
            SizedBox(height: 10.0),
            Text(
                'Jay Patel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30.0),

            Text(
                'Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '$level',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 10.0),
                Text(
                  'jay.patel@mitaoe.ac.in',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

