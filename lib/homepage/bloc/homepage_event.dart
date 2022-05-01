part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class TrendingEvent extends HomepageEvent {
  final String start;
  final String limit;
  final String timePeriod;
  final String convert;
  // final String convertId;

  TrendingEvent(
      {this.convert = '',
      // this.convertId = '',
      this.limit = '',
      this.start = '',
      this.timePeriod = ''});
}
