import 'package:flutter/material.dart';
import 'package:primeira_aplicacao/screens/home_screen.dart';

class CustomTextFields extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController passwordController;

  const CustomTextFields({
    Key? key,
    required this.nameController,
    required this.surnameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: nameController,
          decoration: const InputDecoration(
            labelText: 'Nome',
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: surnameController,
          decoration: const InputDecoration(
            labelText: 'Sobrenome',
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Senha',
          ),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 40),
        ElevatedButton(
        onPressed: () {
          final String name = nameController.text;
          final String surname = surnameController.text;
          final String password = passwordController.text;

          print('Nome: $name, Sobrenome: $surname, Senha: $password');

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.purple,
        ),
        child: const Text('Confirmar'),
      ),
      ],
    );
  }
}
