import 'package:flutter/material.dart';

class customListView extends StatefulWidget {
  customListView({Key key}) : super(key: key);

  @override
  _customListViewState createState() => _customListViewState();
}

class _customListViewState extends State<customListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 0),
            width: MediaQuery.of(context).size.width * 0.85,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.redAccent,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Billabong',
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    color: Colors.blueAccent),
                child: ListTile(
                  onTap: () => {
                    print('Hallelujah'),
                  },
                  contentPadding: EdgeInsets.only(top: 0),
                  title: Center(
                    child: Text(
                      'Menu 1',
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  color: Colors.greenAccent,
                ),
                child: ListTile(
                  onTap: () => {
                    print('Hallelujah 2'),
                  },
                  contentPadding: EdgeInsets.only(top: 0),
                  title: Center(
                    child: Text(
                      'Menu 2',
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
            padding: EdgeInsets.only(top: 0),
          ),
        ),
      ],
    );
  }
}
