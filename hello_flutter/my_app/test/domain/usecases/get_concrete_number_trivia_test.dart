import 'package:mockito/mockito.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/features/features/domain/repositories_interfaces/number_trivia_repo.dart';
import 'package:my_app/features/features/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
}
