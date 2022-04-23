import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageHorizontalTiles extends StatelessWidget {
  final String titletext, subtitleText, image, coinName, coinPrice, coinGain;
  const HomePageHorizontalTiles({
    Key? key,
    required this.coinGain,
    required this.coinName,
    required this.coinPrice,
    this.image = 'assets/images/cryptocurrency.jpg',
    required this.subtitleText,
    required this.titletext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          titletext,
          style: Provider.of<ThemeNotifier>(context).textThemeCustom.valueText1,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subtitleText,
          style:
              Provider.of<ThemeNotifier>(context).textThemeCustom.subtitleText1,
        ),
      ),
      SizedBox(
        height: 180,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 150,
                child: Card(
                  shadowColor: Provider.of<ThemeNotifier>(context)
                      .themeColorCustom
                      .shadowColor,
                  color: Provider.of<ThemeNotifier>(context)
                      .themeColorCustom
                      .cardbackground,
                  elevation: 5,
                  child: ListTile(
                    // minLeadingWidth: 100,
                    title: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  image,
                                  // height: 500,
                                  fit: BoxFit.fill,

                                  // width: 200,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "\n$coinName",
                            style: Provider.of<ThemeNotifier>(context)
                                .textThemeCustom
                                .titleAppBar3,
                          ),
                        ],
                      ),
                    ),
                    subtitle: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Rs.$coinPrice \n',
                          style: Provider.of<ThemeNotifier>(context)
                              .textThemeCustom
                              .subtitleText1,
                        ),
                        TextSpan(
                          text: '$coinGain %',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 10, 190, 49),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                  ),
                ),
              );
            }),
      ),
    ]);
  }
}
