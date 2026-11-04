import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Відновлення паролю'),
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
            const Text(
              'Введіть свій логін або електронну пошту для відновлення паролю:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Поле для вводу пошти або логіна
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін або Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Кнопка запуску процедури скидання паролю
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Відновлення'),
                      content: Text("Інструкцію для відновлення надіслано на пошту!"),
                    );
                  },
                );
              },
              child: const Text("Скинути пароль"),
            ),
            const SizedBox(height: 12),

            // Кнопка повернення назад на екран авторизації
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context); // Повертає на попередній екран (авторизацію)
              },
              child: const Text("Назад до авторизації"),
            ),
          ],
        ),
      ),
    );
  }
}