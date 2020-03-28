import 'package:equatable/equatable.dart';

abstract class FeaturesState extends Equatable {
  const FeaturesState();
}

class InitialFeaturesState extends FeaturesState {
  @override
  List<Object> get props => [];
}
