import 'package:flutter/material.dart';

// that widget will allow us to use google material design features, its a wrapper [the root] of the rest of our widgets inside the app
void main() => runApp(MaterialApp(
  // to determine what s gonna displayed on the homescreen for our app
  home: Home()
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // make a quick layout
    return Scaffold(
      appBar: AppBar(
          title: Text('Celebrity Card'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/d/d5/Taylor_Swift_-_1989_%28Taylor%27s_Version%29.png'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.purple,
            ),
            Text(
              'Full Name',
              style: TextStyle(
                fontFamily: 'Outfit',
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Taylor Swift',
              style: TextStyle(
                fontFamily: 'Outfit',
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 17.0
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
              'Next Album',
              style: TextStyle(
                fontFamily: 'Outfit',
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'The Tortured Poets Departement',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
              ),
            ),
            SizedBox(height: 40.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.purple[200],
                ),
                SizedBox(width: 20.0,),
                Text('alisonswift@gmail.uk',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}

/*
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Location Time App'),
      centerTitle: true,
      backgroundColor: Colors.orangeAccent,
    ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/img.jpg')),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.deepOrange,
              child: Text('1'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.orangeAccent,
            child: Text('2'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.orange,
            child: Text('3'),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Time App'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      // a row is a widget
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('This is one of the children of the row'),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.cyan,
            child: Text('pick me') ,
          ),
          Container(
              color: Colors.greenAccent,
              padding: EdgeInsets.all(30.0)
          )
        ],
      )
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('This is one of the children of the row'),
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.cyan,
              child: Text('pick me') ,
          ),
          Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.all(30.0)
          )
        ],
      ),
    );
  }
}*/
/*
class Home extends StatelessWidget {
  const Home({super.key});
  // the hot reload to not to re-build the whole app, just where the code changed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Time App'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        // apply 20 px of padding around all edges
        //padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
       // padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(50.0),
        color: Colors.indigo,
        // there is a padding widget
        child: Text('when you know you know'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.purple[200],
      ),
    );
  }
}
*/

