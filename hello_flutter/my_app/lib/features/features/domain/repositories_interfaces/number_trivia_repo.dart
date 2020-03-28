import 'package:dartz/dartz.dart';
import 'package:my_app/core/error/failure.dart';
import 'package:my_app/features/features/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}