import 'package:flutter/cupertino.dart';

class InterfacesScreen extends StatelessWidget {
  const InterfacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('الواجهات (Interfaces)'),
        largeTitle: Text('Network Interfaces'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: ListView(
          children: const [
            CupertinoListSection.insetGrouped(
              header: Text('واجهات الشبكة المحلية والخارجية'),
              children: [
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.wifi, color: CupertinoColors.activeBlue),
                  title: Text('WAN (الإنترنت)'),
                  subtitle: Text('متصل - 100 Mbps'),
                  additionalInfo: Text('PPPoE'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.ethernet, color: CupertinoColors.systemGreen),
                  title: Text('LAN (الشبكة المحلية)'),
                  subtitle: Text('192.168.1.1'),
                  additionalInfo: Text('نشط'),
                  tilingType: CupertinoListTileTilingType.inset,
                ),
                CupertinoListTile(
                  prefix: Icon(CupertinoIcons.antenna_radiowaves_left_right, color: CupertinoColors.systemOrange),
                  title: Text('Wi-Fi (5GHz)'),
                  subtitle: Text('SSID: OpenWrt_5G'),
                  additionalInfo: Text('يعمل'),
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
