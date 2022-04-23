import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:cryptochain/utils/device_dimensions.dart';
import 'package:cryptochain/utils/widgets/landing_page_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late SharedPreferences sharedPreferences;

  getSharedPreferencesInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = deviceDimensions(context);
    return Scaffold(
      appBar: const PreferredSize(
        child: LandingPageAppBar(),
        preferredSize: Size.fromHeight(55.0),
      ),
      backgroundColor:
          Provider.of<ThemeNotifier>(context).themeColorCustom.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: dimensions[0] * 0.1,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: dimensions[1] * 0.2),
            color: Provider.of<ThemeNotifier>(context)
                .themeColorCustom
                .cardbackground,
            // color:
            //     Provider.of<ThemeNotifier>(context).themeColorCustom.background,

            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome Cryptonite !!!',
                textAlign: TextAlign.center,
                style: Provider.of<ThemeNotifier>(context)
                    .textThemeCustom
                    .landingPageTitleText,
              ),
            ),
          ),
          SizedBox(
            height: dimensions[0] * 0.1,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: dimensions[1] * 0.8,
              height: dimensions[0] * 0.2,
              child: Image.asset(
                'assets/images/cryptocurrency.jpg',
                // height: 500,
                fit: BoxFit.fill,

                // width: 200,
                // fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: dimensions[0] * 0.1),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: dimensions[1] * 0.2,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Color.fromARGB(255, 226, 221, 221))
                ]),
            width: dimensions[1] * 0.7,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: dimensions[0] * 0.05,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: dimensions[1] * 0.2),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Color.fromARGB(255, 226, 221, 221))
                ]),
            width: dimensions[1] * 0.7,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 216, 51, 51))),
              child: const Text(
                'Signup',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
