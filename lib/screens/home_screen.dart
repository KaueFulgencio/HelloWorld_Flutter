import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/widgets/demo_bottom_app_bar.dart'; 
import 'dados.dart'; // Importe a tela de dados aqui

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Conteúdo da Home Screen'),
      ),
      bottomNavigationBar: DemoBottomAppBar(
        fabLocation: FloatingActionButtonLocation.centerDocked,
        shape: const CircularNotchedRectangle(),
        onIconPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DadosUsuario()),
          );
        },
      ),
    );
  }
}
