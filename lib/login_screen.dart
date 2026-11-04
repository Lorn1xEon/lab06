import 'package:flutter/material.dart';
import 'signup_screen.dart'; // підключення екрана реєстрації
import 'recovery_screen.dart'; // підключення екрана відновлення паролю

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизація'),
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
            // Поле для логіна
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін або Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            
            // Поле для пароля
            const TextField(
              obscureText: true, // приховує символи пароля
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Кнопка підтвердження авторизації (з діалоговим вікном)
            ElevatedButton(
              onPressed: () {
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
              child: const Text("Логін"),
            ),
            const SizedBox(height: 12),

            // Кнопка переходу на екран реєстрації
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
              child: const Text("Реєстрація"),
            ),
            const SizedBox(height: 8),

            // Кнопка переходу на екран відновлення паролю
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecoveryScreen(),
                  ),
                );
              },
              child: const Text("Забули пароль?"),
            ),
          ],
        ),
      ),
    );
  }
}