import 'package:coba/pages/home_page.dart';
import 'package:flutter/material.dart';

class maindrawer extends StatelessWidget {
  const maindrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Text(
          "SIMS",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Sistem Informasi Manajemen Sampah",
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          "MAIN MENU",
          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        ListTile(onTap: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));},
        leading: Icon(Icons.home,
        color: Colors.blue),
        title: Text("Dashboard", style: TextStyle(color: Colors.lightBlue),),
        ),
          ListTile(onTap: () {},
        leading: Icon(Icons.airplay_rounded,
        color: Colors.blue),
        title: Text("TPA", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/1.png'),
        color: Colors.blue,
        ),
        title: Text("Data Master", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/2.png'),
        color: Colors.blue,
        ),
        title: Text("Data Operasional", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/3.png'),
        color: Colors.blue,
        ),
        title: Text("Akun UPTD", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/4.png'),
        color: Colors.blue,
        ),
        title: Text("Laporan", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/5.png'),
        color: Colors.blue,
        ),
        title: Text("Berita", style: TextStyle(color: Colors.lightBlue),),
        ),
            ListTile(onTap: () {},
        leading: ImageIcon(new AssetImage('assets/images/6.png'),
        color: Colors.blue,
        ),
        title: Text("Pengaturan", style: TextStyle(color: Colors.lightBlue),),
        )
      ],
    );
  }
}
