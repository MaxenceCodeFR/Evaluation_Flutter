import 'package:eval_flutter/register.dart';
import 'package:flutter/material.dart';
import 'authwrapper.dart';
import 'firebase_options.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthWrapper()));

}


class MonApp extends StatefulWidget {
  const MonApp({super.key});

  @override
  _MonAppState createState() => _MonAppState();
}


class _MonAppState extends State<MonApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion ou Inscription', style: TextStyle(color: Colors.white)),

        backgroundColor: Colors.orangeAccent, // Optionnel: ajuste la couleur de l'AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  primary: Colors.orangeAccent, // Couleur de fond du bouton
                  onPrimary: Colors.white, // Couleur du texte du bouton
                ),
                child: Text('Login', style: TextStyle(fontSize: 24)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  primary: Colors.orangeAccent, // Couleur de fond du bouton
                  onPrimary: Colors.white, // Couleur du texte du bouton
                ),
                child: Text('Inscription', style: TextStyle(fontSize: 24)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



