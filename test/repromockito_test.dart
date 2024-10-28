import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<Foo>()])
import 'repromockito_test.mocks.dart';

typedef CreateInt = Function();

class BaseFoo<T> {
  BaseFoo(this.t);
  final T t;
}

class Foo extends BaseFoo<CreateInt> {
  Foo() : super(() => 1);
}
