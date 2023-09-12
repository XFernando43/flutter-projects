import 'package:flutter/material.dart';
import 'package:project1/info.dart';
import 'package:project1/back_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 22, 2, 56)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MSK Tools'),
      routes: {
        '/info': (context) => CredentialsPage(), // Ruta para CredentialsPage
        '/back_info': (context) => back_infoPage(), // Ruta para CredentialsPage
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {  Navigator.pushNamed(context, '/info');},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      child: Text(
                        "Credentials",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'tahoma',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {Navigator.pushNamed(context, '/back_info');},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      child: Text(
                        "Company",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'tahoma',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          
          Stack(
            alignment: Alignment.topCenter, // Ajusta el valor vertical (-0.2) según sea necesario
            children: [ 
              SizedBox( 
                child: GestureDetector(
                  onTap: () {Navigator.pushNamed(context, '/info');},
                  child: Image.asset(
                    'assets/symetri3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              Positioned(
                top:180,
                left: 80,
                child: Text(
                  'Fernando Aquino Iman',
                  style: TextStyle(color: Colors.black, fontSize: 17, fontFamily: 'tahoma'),
                ),
              ),


              Positioned(
                top: 90,
                left: 320,
                child: Text(
                  'UPC',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Positioned(
                top: 98,
                left: 104,
                child: Text('Active',
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)
                ),
              )
              
            ],
          )


        ],
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

@override
Widget build(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.menu), // Icono de menú
      onPressed: () {
        // Acción al hacer clic en el icono de menú
      },
    ),
    actions: [
      TextButton(
        onPressed: () {Navigator.pushNamed(context, '/info');},
        child: Text(
          'Wallet',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 18, // Tamaño de fuente más grande
            fontFamily: 'Poppins', // Usar la fuente Poppins
          ),
        ),
      ),
    ],
  );
}
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
