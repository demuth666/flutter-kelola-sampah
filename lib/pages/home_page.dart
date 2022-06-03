import 'package:coba/pages/drawer/maindrawer.dart';
import 'package:coba/pages/map/google_map.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
 

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SIMS', textAlign: TextAlign.center,),
        ),
        drawer: Drawer(
          child: maindrawer(),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: [
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.lightBlue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Bank Sampah',
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  )),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ImageIcon(const AssetImage('assets/images/7.png'),
                            color: Colors.blue),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Kecamatan', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  )),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ImageIcon(const AssetImage('assets/images/8.png'),
                            color: Colors.orange),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.orange),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'UPTD',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        ImageIcon(const AssetImage('assets/images/9.png'),
                            color: Colors.lightGreen),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.lightGreen),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'UPTD',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )),
            ),
                
          ],
          
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => inimap()));
          },
          tooltip: 'Google Map',
          child: Icon(Icons.pin_drop_outlined),
        ),
        
        );
  }
}


