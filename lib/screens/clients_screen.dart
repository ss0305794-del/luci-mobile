import 'package:flutter/cupertino.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('العملاء (Clients)'),
        largeTitle: Text('Clients'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CupertinoSearchTextField(
                placeholder: 'بحث عن عميل...',
              ),
            ),
            CupertinoListSection.insetGrouped(
              header: Text('الأجهزة المتصلة حالياً'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.device_laptop, color: CupertinoColors.activeBlue),
                  title: Text('Dell Latitude 5410'),
                  subtitle: Text('192.168.1.15 - نشط'),
                  additionalInfo: Text('أونلاين'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.phone, color: CupertinoColors.activeGreen),
                  title: Text('iPhone 13 Pro'),
                  subtitle: Text('192.168.1.20 - نشط'),
                  additionalInfo: Text('أونلاين'),
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
