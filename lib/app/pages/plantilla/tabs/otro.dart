import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;






class OtroTab extends StatelessWidget {
  final String apiUrl = "http://127.0.0.1:5000/json";
  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['partido'];

  }

  String _name(dynamic user){
    return user['liga'];
  }

  String _location(dynamic user){
    return user['home_goals'];
  }



  @override
  Widget build(BuildContext context) {
    return  Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return
                      Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(_name(snapshot.data[index])),
//                              subtitle: ListTile(_location(snapshot.data[index])),
                            )
                          ],
                        ),
                      );
                  });
            }else {
              return Center(child: CircularProgressIndicator());
            }
          },


        ),

    );
  }

}