part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

class HomepageInitialState extends HomepageState {}

class HomepageLoadingState extends HomepageState {}

class TrendingLoadedState extends HomepageState {
  final TrendingModel model;
  TrendingLoadedState({required this.model});
}

class HomepageErrorState extends HomepageState {
  final String erorr;
  HomepageErrorState({required this.erorr});
}
