import 'package:cryptochain/bottom_bar/bottom_bar.dart';
import 'package:cryptochain/homepage/bloc/homepage_bloc.dart';
import 'package:cryptochain/homepage/repository/repository.dart';
import 'package:cryptochain/homepage/screens/homepage.dart';
import 'package:cryptochain/landing.dart';
import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomepageBloc(
              repository: HomepageRepository(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const BottomBar(),
        ),
      ),
    );
  }
}
