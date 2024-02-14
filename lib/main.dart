import 'package:flutter/material.dart';
import 'package:flutterprojects/pages/choose_location.dart';
import 'package:flutterprojects/pages/loading.dart';
import './pages/home.dart';
// that widget will allow us to use google material design features, its a wrapper [the root] of the rest of our widgets inside the app
void main() => runApp(MaterialApp(
  // to determine what s gonna displayed on the homescreen for our app
 // home: Home(),
  // this is gonna be a map
  initialRoute: '/home',
  routes: {
    // the context keep track of our position in the widget tree
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/locations' : (context) => ChooseLocation(),
  },
));














/*
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote('the only excuse for making a useless thing is that one admires it intensely', 'Oscar Wilde'),
    Quote('A grande passion is the privilege of people who have nothing to do', 'Oscar Wilde')

  ];
   Widget quoteTemplate(quote){
     return QuoteCard(quote);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Dorian Gray Quotes',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quo) {
          return quoteTemplate(quo);
        }).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15.0
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 15.0
              ),)
          ],
        ),
      ),
    );
  }
}





class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // define data to be changed
  int celebAge = 0;
  @override
  Widget build(BuildContext context) {
    // make a quick layout
    return Scaffold(
      appBar: AppBar(
          title: Text('Celebrity Card'),
          centerTitle: true,
          backgroundColor: Colors.purple[200],
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              celebAge += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.purple[200],),
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
            Text(
              'Age',
              style: TextStyle(
                fontFamily: 'Outfit',
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$celebAge',
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

