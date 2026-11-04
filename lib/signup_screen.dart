import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Реєстрація'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 300,  // ширина логотипа
              height: 300, // висота логотипа
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Ім’я користувача',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            
            // Кнопка реєстрації
            ElevatedButton(
              onPressed: () {
                // Дія при реєстрації
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Message'),
                      content: Text("Need to implement authorization logic"),
                    );
                  },
                );
              },
              child: const Text("Зареєструватися"),
            ),
            const SizedBox(height: 12),

            // Кнопка повернення назад на екран авторизації
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}