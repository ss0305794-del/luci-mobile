import 'package:flutter/cupertino.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('لوحة التحكم'),
        largeTitle: Text('Dashboard'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // قسم حالة النظام والأداء
            const CupertinoListSection.insetGrouped(
              header: Text('حالة الراوتر والنظام'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.cpu, color: CupertinoColors.activeBlue),
                  title: Text('استهلاك المعالج (CPU)'),
                  additionalInfo: Text('14%'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.waveform, color: CupertinoColors.activeGreen),
                  title: Text('الذاكرة العشوائية (RAM)'),
                  additionalInfo: Text('120 MB / 256 MB'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.time, color: CupertinoColors.systemOrange),
                  title: Text('وقت التشغيل (Uptime)'),
                  additionalInfo: Text('4 أيام, 6 ساعات'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
              ],
            ),
            const SizedBox(height: 12),
            // أزرار سريعة بستايل أبل
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CupertinoButton.filled(
                onPressed: () {
                  // إجراء إعادة التشغيل أو التحديث
                },
                child: const Text('إعادة تشغيل الخدمة'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
