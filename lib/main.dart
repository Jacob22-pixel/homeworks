import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wybór zadania",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Visibility/Opacity",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(),
                  ),
                );
              },
            ),
            TextButton(
              child:
              Text("Card ListTile", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("ListView.builder",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFive(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextField", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSix(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextEditingController",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSeven(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  PageTwo();
  @override
  _PageTwoState createState() => _PageTwoState();
}

double _myOpacity = 1.0;

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invisible/Opacity", textAlign: TextAlign.center),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              child: Text(
                "Invisible",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
              visible: false,
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              child: Text(
                "Visible",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
              visible: true,
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                "transparent ",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
                opacity: _myOpacity,
                child: Text(
                  "Lorem ipsum dolor sit amet dolor."
                      " Vestibulum non ullamcorper ac, tincidunt congue. Lorem ipsum non diam."
                      " Nam nunc ac accumsan sit amet felis. Etiam in erat in sapien. Donec facilisis luctus et quam."
                      " Maecenas vehicula, enim aliquam quis, feugiat congue, lacus pede, cursus consectetuer. "
                      "Quisque in purus sit amet quam. Integer sollicitudin vitae, tortor. Morbi quis nisl."
                      " Vestibulum consectetuer arcu erat, fringilla orci. Donec rutrum vel, consequat mollis sodales."
                      " Aenean commodo et, faucibus vestibulum. Nunc a laoreet hendrerit magna felis auctor neque at arcu."
                      " Morbi a ornare pulvinar felis, vestibulum faucibus gravida non, sollicitudin ac, molestie placerat, nulla ac nibh. ",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Change",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                setState(() {
                  if (_myOpacity > 0.1) {
                      _myOpacity = _myOpacity - 0.1;}
                   else {
                       _myOpacity = _myOpacity + 0.9;
                       }
                });
              },
            ),

            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Back", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and ListTile"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Find your phone"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text("Location"),
                  subtitle: Text("Show details"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Phone details"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.android),
                  title: Text("Android version"),
                  subtitle: Text("11.8"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.flag),
                  title: Text("Language"),
                  subtitle: Text("English"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              TextButton(
                child: Text("Back", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  final List<String> items;

  PageFive({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = List<String>.generate(20001, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder", textAlign: TextAlign.center),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('items', items));
  }
}

class PageSix extends StatelessWidget {
  PageSix();

  TextEditingController _NameControler = TextEditingController();
  TextEditingController _SecondNameControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField", textAlign: TextAlign.center),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _NameControler,
                  decoration: InputDecoration(
                      hintText: "Your name",
                      labelText: "name",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Roboto",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.new_releases)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  controller: _SecondNameControler,
                  decoration: InputDecoration(
                      hintText: "Your Second Name",
                      labelText: "Second Name",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Roboto",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.drive_file_rename_outline)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.shield),
                  ),
                  obscureText: true,
                  maxLength: 20,
                  maxLines: 1,
                  onSubmitted: (text) {
                    if (text == "Password123") {
                      showDialog( context: context,
                          builder: (context) => AlertDialog(
                              content: Text("Welcome again " +
                                  _NameControler.text +
                                  " " +
                                  _SecondNameControler.text)));
                    }
                    else{showDialog( context: context,
                        builder: (context) => AlertDialog(
                            content: Text("Password is incorrect")));}
                  }),
              TextButton(
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
                );
  }
}

class PageSeven extends StatefulWidget {
  @override
  _PageSeven createState() => _PageSeven();
}

class _PageSeven extends State<PageSeven> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextEditingController", textAlign: TextAlign.center),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "Phone",
                labelText: "Write your phone number",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                  fontFamily: "Roboto",
                ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              maxLength: 12,
              maxLines: 1,
            ),
            TextButton(
              child: Text(
                "Back",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  content: Text("You write: ${myController.text}")));
        },
        tooltip: 'Increment',
        child: Icon(Icons.looks),
      ),
    );
  }
}