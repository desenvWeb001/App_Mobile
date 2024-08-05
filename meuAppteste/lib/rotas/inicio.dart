import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeFj5epiDlO2DG983HNi3FE11ke2qoEMQiEQ&usqp=CAU"),
              Text("Bem vindo ao Easy Schedule",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'lista'); 
                },
                child: Text("Agendamentos"),
              ),
              SizedBox(height: 40),
              /*RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'CadastroUsuarios');
                },
                child: Text("Realizar o seu cadastro"),
              )*/
            ],
          ),
        ));
  }
}
