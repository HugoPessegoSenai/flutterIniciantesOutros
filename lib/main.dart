import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: testetela(),
  ));
}

class testetela extends StatefulWidget {
  const testetela({Key? key}) : super(key: key);

  @override
  _testetelaState createState() => _testetelaState();
}

class _testetelaState extends State<testetela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Valor 1'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => voltar()),
                  );
                },
                title: Text('Valor 2'),
              ),
              ListTile(
                title: Text('Valor 3'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Aplicativo'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amber,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(50),
                        color: Colors.amber,
                      ),
                      Container(
                        padding: EdgeInsets.all(50),
                        color: Colors.blueGrey,
                      ),
                      Container(
                        padding: EdgeInsets.all(50),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.network(
                      'https://cdn.maioresemelhores.com/imagens/cachorros-pequenos-1.jpg'),
                ),
                Container(
                  width: 50,
                  child: Image.network(
                      'https://cdn.maioresemelhores.com/imagens/cachorros-pequenos-1.jpg'),
                ),
                Container(
                  child: Image.network(
                      'https://cdn.maioresemelhores.com/imagens/cachorros-pequenos-1.jpg'),
                ),
                Container(
                  width: 50,
                  child: Image.network(
                      'https://cdn.maioresemelhores.com/imagens/cachorros-pequenos-1.jpg'),
                ),
              ],
            ),
          ),
        ));
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu primeiro cadastro'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: null,
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text('Empresa'),
            onTap: () => alertDialog(context, "Cadastro Empresa", "Obrigado"),
          ),
          ListTile(
            title: Text('Cadastro'),
            onTap: () => alertDialog(context, "Cadastro Empresa", "Obrigado"),
          ),
          ListTile(
            title: Text('Produto'),
            onTap: () => alertDialog(context, "Cadastro Empresa", "Obrigado"),
          )
        ],
      )),
      body: Center(
          child: Form(
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void alertDialog(BuildContext context, String titulo, String texto) {
    var alert = AlertDialog(
      title: Text(titulo),
      content: Text(texto),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}

class voltar extends StatefulWidget {
  const voltar({ Key? key }) : super(key: key);

  @override
  _voltarState createState() => _voltarState();
}

class _voltarState extends State<voltar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pagina'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
             Navigator.of(context).pop(false),
          }
        ),),
    );
  }
}