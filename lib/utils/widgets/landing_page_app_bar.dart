import 'package:cryptochain/homepage/homepage.dart';
import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:cryptochain/utils/device_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPageAppBar extends StatelessWidget {
  const LandingPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dimensions = deviceDimensions(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: 'Crypto',
              style: Provider.of<ThemeNotifier>(context)
                  .textThemeCustom
                  .titleAppBar1,
              children: <TextSpan>[
                TextSpan(
                  text: 'Chain',
                  style: Provider.of<ThemeNotifier>(context)
                      .textThemeCustom
                      .titleAppBar2,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Text(
              'Skip',
              style: Provider.of<ThemeNotifier>(context)
                  .textThemeCustom
                  .titleAppBar3,
            ),
          )
        ],
      ),
    );
  }
}
