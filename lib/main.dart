import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class  NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  int ninjaLevel = 0;
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
      title: Text("Ninja ID Card"),
      centerTitle: true ,
      backgroundColor: Colors.grey[850],
      elevation: 0 ,
      ),
      
      body:Padding(
        padding: EdgeInsets.fromLTRB(30, 40,30, 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>
         [
          Center(
            child: CircleAvatar(
            backgroundImage: AssetImage('assets/WIN_20190419_14_49_16_Pro.jpg'),
            radius:40,
            ),
          ),
          Divider(
           height: 90 ,
           color: Colors.grey[800],
          ),
          Text ("Name",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2,
          ),
          ),
          SizedBox(height:10),
            Text ("Nathalie Nabil LOUIS",
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height:30),
           Text ("Nickname",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2,
          ),
          ),
          SizedBox(height:10),
            Text ("$ninjaLevel",
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height:30),
          Row
          (
           children: <Widget>[
             Icon(
             Icons.email,
             color: Colors.grey[400],
             ),
             SizedBox(width:10),
             Text("nouna.hot@yahoo.co",
              style: TextStyle( 
                color: Colors.grey[400],
                fontSize: 18,
                letterSpacing: 1.6,
              ),
             ),
           ],
          ),
         ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child: Icon(Icons.add),
         backgroundColor: Colors.grey[800],
      ),
    );
  }
}


