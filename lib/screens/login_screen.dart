import 'package:flutter/cupertino.dart';
import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _hostController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('تسجيل الدخول'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                CupertinoIcons.lock_shield,
                size: 64,
                color: CupertinoColors.activeBlue,
              ),
              const SizedBox(height: 32),
              CupertinoTextField(
                controller: _hostController,
                placeholder: 'عنوان الراوتر (IP Address)',
                padding: const EdgeInsets.all(16),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(CupertinoIcons.globe, color: CupertinoColors.systemGrey),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.secondarySystemBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                controller: _passwordController,
                placeholder: 'كلمة المرور',
                obscureText: true,
                padding: const EdgeInsets.all(16),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(CupertinoIcons.key, color: CupertinoColors.systemGrey),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.secondarySystemBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(height: 24),
              CupertinoButton.filled(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(builder: (context) => const MainScreen()),
                  );
                },
                child: const Text('دخول'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
