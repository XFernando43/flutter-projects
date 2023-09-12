import 'package:flutter/material.dart';

class CredentialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 500,
                  height: 200,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/back_info');
                    },
                    child: Image.asset(
                      'assets/symetri1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 90, // Ajusta esta posición para colocar el texto donde lo necesitas
                  child: Text(
                    'Employe#: 986001845',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 90, // Ajusta esta posición para colocar el texto donde lo necesitas
                  child: Text(
                    'Moises Ernesto More',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  top: 13,
                  left: 170, // Ajusta esta posición para colocar el texto donde lo necesitas
                  child: Text(
                    'EPE-PRE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  top: 60,
                  left: 220, // Ajusta esta posición para colocar el texto donde lo necesitas
                  child: Text(
                    '                  Valid To:'+'\n'+'Dec 09 2023 00:00',
                    
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  top: 100,
                  left: 220, // Ajusta esta posición para colocar el texto donde lo necesitas
                  child: Text(
                    '             Last Syncs:'+'\n'+'Auq 22 2023 19:18',
                    
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  top: 140, // Ajusta esta posición para colocar la Card donde lo necesitas
                  left: 260,
                  width:90,
                  height: 50,
                  child: Card(
                    color: Color.fromARGB(255, 108, 104, 104),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Radio de la esquina del borde
                    side: BorderSide(color: Colors.white, width: 1.0), // Borde blanco
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Active',
                        textAlign: TextAlign.center, // Alinea el texto al centro
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    // Acción para Photo Status
                  },
                  icon: Icon(Icons.person),
                  label: Text('Photo Status'),
                ),
                SizedBox(width: 0),
                TextButton.icon(
                  onPressed: () {
                    // Acción para Credentials
                  },
                  icon: Icon(Icons.lock),
                  label: Text('Credentials'),
                ),
              ],
            ),
            SizedBox(height: 20),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea los widgets a la izquierda
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    // Acción para Update Credential
                  },
                  icon: Icon(Icons.update),
                  label: Text('Update Credential'),
                ),
                SizedBox(height: 10),
                TextButton.icon(
                  onPressed: () {
                    // Acción para Remove Credential
                  },
                  icon: Icon(Icons.remove_circle),
                  label: Text('Remove Credential'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
