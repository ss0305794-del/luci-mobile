import 'package:flutter/cupertino.dart';
import 'dashboard_screen.dart';
import 'clients_screen.dart';
import 'interfaces_screen.dart';
import 'more_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'العملاء',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.waveform),
            label: 'الواجهات',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
            label: 'المزيد',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const DashboardScreen();
          case 1:
            return const ClientsScreen();
          case 2:
            return const InterfacesScreen();
          default:
            return const CupertinoTabView(
              builder: null, // أو استبدلها بشاشة المزيد للملف التالي
            );
        }
      },
    );
  }
}
