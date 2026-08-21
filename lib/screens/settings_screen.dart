import 'package:flutter/cupertino.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('الإعدادات العامة'),
        largeTitle: Text('Settings'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: const [
            CupertinoListSection.insetGrouped(
              header: Text('المظهر واللغة'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.moon_fill, color: CupertinoColors.systemIndigo),
                  title: Text('الوضع الداكن'),
                  additionalInfo: CupertinoSwitch(
                    value: true,
                    onChanged: null,
                  ),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.globe, color: CupertinoColors.activeBlue),
                  title: Text('اللغة'),
                  additionalInfo: Text('العربية'),
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
