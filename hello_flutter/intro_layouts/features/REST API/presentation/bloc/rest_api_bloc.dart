import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class RestApiBloc extends Bloc<RestApiEvent, RestApiState> {
  @override
  RestApiState get initialState => InitialRestApiState();

  @override
  Stream<RestApiState> mapEventToState(
    RestApiEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
