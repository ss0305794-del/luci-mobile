import 'package:flutter/cupertino.dart';
import 'settings_screen.dart'; // الشاشة التالية بالترتيب

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('المزيد'),
        largeTitle: Text('More'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              header: const Text('إعدادات التطبيق'),
              children: [
                CupertinoListTile(
                  prefix: const Icon(CupertinoIcons.settings, color: CupertinoColors.systemGrey),
                  title: const Text('الإعدادات العامة'),
                  additionalInfo: const Icon(CupertinoIcons.chevron_right, size: 16, color: CupertinoColors.systemGrey),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => const SettingsScreen()),
                    );
                  },
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                const CupertinoListTile(
                  prefix: Icon(CupertinoIcons.info, color: CupertinoColors.activeBlue),
                  title: Text('حول التطبيق'),
                  additionalInfo: Text('v1.0.0'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
