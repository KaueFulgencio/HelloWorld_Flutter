import 'package:flutter/material.dart';
import 'dados.dart'; // Importe a tela de dados aqui

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
  DadosUsuario(), 
  // OutraTela(), 
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: _currentIndex < _screens.length ? _screens[_currentIndex] : Container(), // Verifica se o índice é válido
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (int index) {
      setState(() {
        _currentIndex = index;
      });
    },
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      // Adicione mais itens para outras telas, se necessário
      ],
    ),
  );
  }
}
