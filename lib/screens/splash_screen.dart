import 'package:flutter/cupertino.dart';
import 'login_screen.dart'; // الانتقال لشاشة تسجيل الدخول بعد التحميل

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // الانتقال تلقائياً لشاشة تسجيل الدخول بعد ثانيتين
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // أيقونة التطبيق بتصميم أبل
            Icon(
              CupertinoIcons.router,
              size: 80,
              color: CupertinoColors.activeBlue,
            ),
            SizedBox(height: 24),
            Text(
              'Luci Mobile',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 32),
            // مؤشر التحميل الخاص بـ iOS
            CupertinoActivityIndicator(radius: 14),
          ],
        ),
      ),
    );
  }
}
