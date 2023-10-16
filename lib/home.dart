import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.cyan[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      child: Image.asset(
                        'images/ass4.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Flexible(
                  flex: 3,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/ass2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/ass2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/ass2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/ass2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                    ],
                  )),
              Flexible(
                  flex: 8,
                  child: Column(
                    children: [
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Welcome to Golden Tulip Holland Batu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      )),
                      Flexible(
                          child: Container(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque feugiat lectus vel vestibulum suscipit. Nunc pellentesque, massa nec ultricies tempus, velit mauris laoreet lectus, ut malesuada arcu ligula ac lorem. Nulla risus magna, placerat non aliquam non, venenatis ut lorem. Ut eu erat in magna efficitur tempus. Morbi a iaculis metus, eget consequat elit. Donec volutpat risus vitae nunc bibendum, vitae imperdiet tellus sodales. Aliquam purus massa, mollis a finibus a, tincidunt at nisi. Donec id vulputate nunc. Maecenas vitae nisl non lorem efficitur fringilla. Ut semper tristique massa, eget scelerisque tortor lacinia nec. Integer semper, dui sed hendrerit iaculis, elit metus scelerisque orci, at dignissim nibh nunc ac felis. Praesent eu dapibus lacus."),
                              ))),
                    ],
                  )),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: _toggleFavorite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.black45,
          child: _isFavorited
              ? Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : Icon(Icons.favorite_outline_rounded),
        ));
  }
}
