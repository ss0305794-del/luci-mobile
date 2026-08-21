import 'package:flutter/cupertino.dart';

class DashboardSettingsListScreen extends StatelessWidget {
  const DashboardSettingsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('إعدادات لوحة التحكم'),
        largeTitle: Text('Dashboard Settings'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: const [
            CupertinoListSection.insetGrouped(
              header: Text('خيارات العرض'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.eye, color: CupertinoColors.activeBlue),
                  title: Text('إظهار استهلاك المعالج'),
                  additionalInfo: CupertinoSwitch(
                    value: true,
                    onChanged: null, // ضع دالة التغيير هنا
                  ),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.chart_bar, color: CupertinoColors.systemGreen),
                  title: Text('تحديث البيانات تلقائياً'),
                  additionalInfo: CupertinoSwitch(
                    value: false,
                    onChanged: null,
                  ),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: Text('إعدادات الاتصال'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.arrow_clockwise, color: CupertinoColors.systemOrange),
                  title: Text('مهلة الاتصال (Timeout)'),
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
