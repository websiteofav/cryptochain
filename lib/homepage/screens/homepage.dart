import 'dart:async';

import 'package:cryptochain/homepage/bloc/homepage_bloc.dart';
import 'package:cryptochain/homepage/models/tutorial_model.dart';
import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:cryptochain/utils/device_dimensions.dart';
import 'package:cryptochain/utils/widgets/homepage_horizontal_tiles.dart';
import 'package:cryptochain/utils/widgets/homepage_tutorial_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  late List<TutorialModel> tutorialItmes;

  int _currentPage = 0;
  late Timer _timer;

  void initState() {
    super.initState();

    tutorialItmes = [
      TutorialModel(
          image: 'assets/images/bitcoinVEtherium.jpg',
          subtitleText: 'What is the difference?',
          titleText: 'Bitcoin vs Etherium'),
      TutorialModel(
          image: 'assets/images/cryptoSustainable.jpg',
          subtitleText: ' Are Cryptocurrencies Susutainable?',
          titleText: 'Crypto Vs Enviroment'),
      TutorialModel(
          image: 'assets/images/cryptoFuture.jpg',
          subtitleText: 'What is the future of Digital Assets?',
          titleText: 'Cryptocurrencies Future')
    ];
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) async {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        await _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  void disposeAll() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = deviceDimensions(context);
    return Material(
      color: Provider.of<ThemeNotifier>(context).themeColorCustom.background,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: dimensions[2],
              ),
              // color: Provider.of<ThemeNotifier>(context)
              //     .themeColorCustom
              //     .cardbackground,
              height: 300,
              width: double.infinity,
              child: Card(
                color: Provider.of<ThemeNotifier>(context)
                    .themeColorCustom
                    .cardbackground,
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hello  ",
                                style: Provider.of<ThemeNotifier>(context)
                                    .textThemeCustom
                                    .titleAppBar1,
                              ),
                              WidgetSpan(
                                child: Icon(
                                  Icons.handshake,
                                  size: 24,
                                  color: Provider.of<ThemeNotifier>(context)
                                      .themeColorCustom
                                      .icon1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Welcome to CryptoChain',
                          style: Provider.of<ThemeNotifier>(context)
                              .textThemeCustom
                              .landingPageTitleText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ready to Invest in your favourites digital coins',
                          style: Provider.of<ThemeNotifier>(context)
                              .textThemeCustom
                              .titleAppBar2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          // margin:
                          //     EdgeInsets.symmetric(horizontal: dimensions[1] * 0.2),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Color.fromARGB(255, 226, 221, 221))
                              ]),
                          width: dimensions[1] * 0.9,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<HomepageBloc>(context)
                                  .add(TrendingEvent(
                                convert: 'INR',
                                limit: '5',
                                start: '1',
                                timePeriod: '24h',
                              ));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 216, 51, 51))),
                            child: const Text(
                              'Signup',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   width: double.infinity,
            //   child: PageView.builder(
            //     onPageChanged: (int index) => _pageNotifier.value = index,
            //     itemCount: 5,
            //     controller: _pageController,
            //     itemBuilder: (context, i) {
            //       return Container(
            //         decoration: const BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage('assets/images/cryptocurrency.jpg'),
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),

            const SizedBox(
              height: 15,
            ),

            const HomePageHorizontalTiles(
              titletext: 'Newly Launched on CryptoChain',
              subtitleText: 'Explore more assets for your portfolio',
              coinGain: '12.23',
              coinName: 'Stock',
              coinPrice: '1,329',
            ),
            const HomePageHorizontalTiles(
              titletext: 'Biggest Gainers',
              subtitleText:
                  'Coins whoese value increased the most in the last 24 hours',
              coinGain: '12.23',
              coinName: 'Stock',
              coinPrice: '1,329',
            ),
            const HomePageHorizontalTiles(
              titletext: 'Biggest Losers',
              subtitleText:
                  'Coins whoese value decreased the most in the last 24 hours',
              coinGain: '12.23',
              coinName: 'Stock',
              coinPrice: '1,329',
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Learn Latest About Crytocurrency',
                style: Provider.of<ThemeNotifier>(context)
                    .textThemeCustom
                    .valueText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Crypto Questions Answered',
                style: Provider.of<ThemeNotifier>(context)
                    .textThemeCustom
                    .subtitleText1,
              ),
            ),

            SizedBox(
              height: 250,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tutorialItmes.length,
                  itemBuilder: (context, index) {
                    return HomePageTutorialTiles(
                      index: index,
                      tileTitletext: tutorialItmes[index].titleText,
                      tileSubtitleText: tutorialItmes[index].subtitleText,
                      image: tutorialItmes[index].image,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
