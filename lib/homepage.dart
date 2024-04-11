import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'book_dto.dart';
import 'login.dart';
import 'newdoc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des livres', style: TextStyle(color: Colors.orangeAccent),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddBookForm()),
              ),
              child: Text('Ajoute un livre', style: TextStyle(color: Colors.orangeAccent),),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('1').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Une erreur est survenue');
                }

                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                List<BookDto> books = snapshot.data!.docs.map((doc) {
                  return BookDto.fromJson(doc.data() as Map<String, dynamic>);
                }).toList();

                return ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot bookDoc = snapshot.data!.docs[index]; // Récupère le document Firestore
                    return Card(
                      color: Colors.orangeAccent,
                      child: ListTile(
                        title: Text(
                          books[index].title,
                          style: TextStyle(color: Color(0xFFF5F5DC)),
                        ),
                        subtitle: Text(
                          'ID: ${books[index].id}\nAuteur: ${books[index].author}\nAnnée de publication: ${books[index].yearOfPublication}',
                          style: TextStyle(color: Color(0xFF5E5E5D)),
                        ),
                        isThreeLine: true,
                        trailing: IconButton(
                          icon: Icon(Icons.delete_forever, color: Colors.red),
                          onPressed: () async {
                            // Supprime le document de Firestore
                            await FirebaseFirestore.instance.collection('1').doc(bookDoc.id).delete();
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
