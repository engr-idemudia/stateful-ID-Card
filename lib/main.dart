import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaIDCard(),
  ));
}                        // void main() => runApp(MaterialApp());

class NinjaIDCard extends StatefulWidget {
  NinjaIDCard({Key? key}) : super(key: key);

  @override
  State<NinjaIDCard> createState() => _NinjaIDCardState();
}

class _NinjaIDCardState extends State<NinjaIDCard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,

      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey.shade800,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/thumb.jpg'),
              radius: 40.0,
            ),
          ),
                  Divider(
                    height: 90.0,
                    color: Colors.white30,
                  ),

                  Text(
                      'Name',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.grey,
                      ),
                  ),

                  SizedBox(height: 10.0),

                  Text(
                    'Chun-Li',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.amberAccent.shade200,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                SizedBox(height: 30.0),

                    Text(
                      'CURRENT NINJA LEVEL',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 10.0),

                    Text(
                      '$ninjalevel',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.amberAccent.shade200,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey.shade400,
              ),

              SizedBox(width: 10.0),

              Text(
                  'chun.li@thenetninja.co.uk',
                style: TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.grey.shade400,
                  fontSize: 20.0,
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

// class Tesrrrrrrr extends StatefulWidget {
//   const Tesrrrrrrr({Key? key}) : super(key: key);
//
//   @override
//   _TesrrrrrrrState createState() => _TesrrrrrrrState();
// }
//
// class _TesrrrrrrrState extends State<Tesrrrrrrr> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
