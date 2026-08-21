import 'package:flutter/cupertino.dart';

class RouterDashboardSettingsScreen extends StatelessWidget {
  const RouterDashboardSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('إعدادات اللوحة'),
        largeTitle: Text('Dashboard Config'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: const [
            CupertinoListSection.insetGrouped(
              header: Text('تخصيص الواجهة'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.square_grid_2x2, color: CupertinoColors.activeBlue),
                  title: Text('ترتيب الويدجت'),
                  additionalInfo: Icon(CupertinoIcons.chevron_right, size: 16, color: CupertinoColors.systemGrey),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.refresh, color: CupertinoColors.systemGreen),
                  title: Text('معدل التحديث التلقائي'),
                  additionalInfo: Text('5 ثوانٍ'),
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
