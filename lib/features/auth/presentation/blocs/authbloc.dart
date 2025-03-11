import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/auth_repository.dart';
import 'authevent.dart';
import 'authstate.dart';
class AuthBloc extends Bloc<AuthEvent, AuthState> {


  final AuthRepository repository;

  AuthBloc({required this.repository}) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInEvent) {
      yield AuthLoading();
      final result = await repository.signIn(event.email, event.password);
      yield result.fold((l) => AuthError(l), (r) => Authenticated(r));
    } else if (event is SignUpEvent) {
      yield AuthLoading();
      final result = await repository.signUp(event.email, event.password);
      yield result.fold((l) => AuthError(l), (r) => Authenticated(r));
    }
  }
}
