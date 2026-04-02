import 'package:flutter/material.dart';

class ClienteScreen extends StatefulWidget {
  const ClienteScreen({super.key});

  @override
  State<ClienteScreen> createState() => _ClienteScreenState();
}

class _ClienteScreenState extends State<ClienteScreen> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtSobrenome = TextEditingController();
  TextEditingController txtIdade = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cadastro de Clientes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 111, 163, 151),
        foregroundColor: const Color.fromARGB(255, 168, 2, 197),
      ),
      body: Container(
        color: const Color.fromARGB(255, 226, 195, 255),
        child: Column(
          children: [
            TextField(
              controller: txtNome,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: txtSobrenome,
              decoration: InputDecoration(labelText: "Sobrenome"),
            ),
            TextField(
              controller: txtIdade,
              decoration: InputDecoration(labelText: "Idade"),
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 176, 252, 229),
                foregroundColor: const Color.fromARGB(255, 74, 0, 158),
                onPressed: () {
                  String nome = txtNome.text;
                  String sobrenome = txtSobrenome.text;
                  String idade = txtIdade.text;

                  setState(() {
                    resultado =
                        "Nome: $nome, Sobrenome: $sobrenome, Idade: $idade";
                  });
                },
                child: Text("Carregar"),
              ),
            ),
            Text(resultado),
          ],
        ),
      ),
    );
  }
}
