import 'package:flutter/cupertino.dart';

class ManageRoutersScreen extends StatelessWidget {
  const ManageRoutersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('إدارة الراوترات'),
        largeTitle: Text('Routers Management'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: [
            const CupertinoListSection.insetGrouped(
              header: Text('الأجهزة المحفوظة'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.router, color: CupertinoColors.activeBlue),
                  title: Text('Xiaomi Router AX3200'),
                  subtitle: Text('192.168.1.1 - متصل'),
                  additionalInfo: Text('OpenWrt'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CupertinoButton.filled(
                onPressed: () {
                  // إضافة راوتر جديد
                },
                child: const Text('إضافة راوتر جديد'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
