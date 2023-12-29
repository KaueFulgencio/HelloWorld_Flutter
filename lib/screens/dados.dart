import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/widgets/custom_text_fields.dart';
import 'package:primeira_aplicacao/widgets/demo_bottom_app_bar.dart';

class DadosUsuario extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  DadosUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Página'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomTextFields(
          nameController: _nameController,
          surnameController: _surnameController,
          passwordController: _passwordController,
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    DadosUsuario(),
    //OutraTela(), // Adicione outras telas aqui conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: DemoBottomAppBar(
        fabLocation: FloatingActionButtonLocation.centerDocked,
        shape: const CircularNotchedRectangle(),
        onIconPressed: () {
          setState(() {
            _currentIndex = 1; 
          });
        },
      ),
    );
  }
}
