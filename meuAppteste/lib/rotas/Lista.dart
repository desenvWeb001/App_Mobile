
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Agendamento.dart';

class Lista extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text("Lista de Agendamento"), backgroundColor: Colors.indigo[300],),
        body: buildListView(),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, 'CriarAgendamento');
       }),
      ),
    );
    
  }
  

  buildListView(){
    final itens = List<String>.generate(5, (i) => "$i");
    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.access_alarm),
          //title: Text('${itens[index]}')
          title: Text('Agendamento: ${itens[index]}'),
          //trailing: Icon(Icons.delete),
          trailing: Container(
                child: Row(children: <Widget>[
                  Icon(Icons.delete, color: Colors.red),
                  Icon(Icons.edit, color: Colors.blue),
                ])),
        );
      },
    );
    }
  }
