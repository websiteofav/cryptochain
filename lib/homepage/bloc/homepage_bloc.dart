import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cryptochain/homepage/models/trending_model.dart';
import 'package:cryptochain/homepage/repository/repository.dart';
import 'package:meta/meta.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageRepository repository;

  HomepageBloc({required this.repository}) : super(HomepageInitialState()) {
    on<HomepageEvent>(
      (event, emit) async {
        if (event is TrendingEvent) {
          emit(HomepageLoadingState());

          try {
            Map<String, String> jsonBody = {
              'start': event.start,
              'limit': event.limit,
              'time_period': event.timePeriod,
              'convert': event.convert,
              // 'convert_id': event.convertId
            };

            final TrendingModel model =
                await repository.trendingMostVisited(jsonBody: jsonBody);
            if (model.status.errorCode == 0) {
              emit(TrendingLoadedState(model: model));
            } else {
              emit(HomepageErrorState(
                  erorr: model.status.errorMessage ?? 'Server Erorr'));
            }
          } catch (e) {
            log(e.toString());

            emit(HomepageErrorState(erorr: e.toString()));
          }
        }
      },
    );
  }
}
