 import 'package:flutter/material.dart';

class back_infoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('                                                                         UPC',style: 
        TextStyle(
        color: Colors.black,
        fontSize: 16
        ),),

      ),
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
                      Navigator.pushNamed(context, '/info');
                    },
                    child: Image.asset(
                      'assets/symetri 2.png',
                      fit: BoxFit.cover,
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
