import 'package:app/constants.dart';
import 'package:app/widgets/home/HomeBody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescrean';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,

      appBar: homeAppBar(),

      // 🔥 هنا ضفنا الـ Drawer اللي بييجي من اليمين
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: kPrimaryColor),
              child: Center(
                child: Text(
                  "القائمة",
                  style: GoogleFonts.getFont(
                    'Almarai',
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "الصفحة الرئيسية",
                style: GoogleFonts.getFont('Almarai'),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "الملف الشخصي",
                style: GoogleFonts.getFont('Almarai'),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("الإعدادات", style: GoogleFonts.getFont('Almarai')),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "تسجيل الخروج",
                style: GoogleFonts.getFont('Almarai'),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
      ),
      centerTitle: false,
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer(); // فتح القائمة من اليمين
            },
          ),
        ),
      ],
    );
  }
}
