import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class FeaturesBloc extends Bloc<FeaturesEvent, FeaturesState> {
  @override
  FeaturesState get initialState => InitialFeaturesState();

  @override
  Stream<FeaturesState> mapEventToState(
    FeaturesEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
