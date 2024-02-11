import 'package:flutter/material.dart';

// that widget will allow us to use google material design features, its a wrapper [the root] of the rest of our widgets inside the app
void main() => runApp(MaterialApp(
  // propreties
  home: Home()
));

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

/*
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

