import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageTutorialTiles extends StatelessWidget {
  final String titletext, subtitleText, image, tileTitletext, tileSubtitleText;
  final int index;
  const HomePageTutorialTiles({
    Key? key,
    this.image = 'assets/images/cryptocurrency.jpg',
    this.subtitleText = 'Latest Crypto News Simpliefied',
    this.titletext = 'Learn Latest About Crytocurrency',
    required this.tileSubtitleText,
    required this.tileTitletext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 200,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Provider.of<ThemeNotifier>(context)
                    .themeColorCustom
                    .shadowColor,
                color: Provider.of<ThemeNotifier>(context)
                    .themeColorCustom
                    .cardbackground,
                elevation: 15,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 27, 221, 43),
                          Color.fromARGB(255, 19, 187, 230),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.mirror),
                  ),
                  child: ListTile(
                    // minLeadingWidth: 100,
                    title: Text(
                      tileTitletext,
                      style: Provider.of<ThemeNotifier>(context)
                          .textThemeCustom
                          .valueText2,
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Container(
                                padding: const EdgeInsets.only(top: 10),
                                height: 30,
                                child: Text(tileSubtitleText,
                                    overflow: TextOverflow.visible,
                                    style: Provider.of<ThemeNotifier>(context)
                                        .textThemeCustom
                                        .titleAppBar3)),
                          ),
                          WidgetSpan(
                            child: Container(
                              height: 80,
                              alignment: Alignment.bottomRight,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: SizedBox(
                                  width: 150,
                                  height: 70,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
