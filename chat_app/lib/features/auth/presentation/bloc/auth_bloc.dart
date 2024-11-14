import 'package:chat_app/features/auth/data/repo/auth_repo.dart';
import 'package:chat_app/features/auth/presentation/bloc/auth_events.dart';
import 'package:chat_app/features/auth/presentation/bloc/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvents, AuthStates> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(login);
  }

  Future<void> login(LoginEvent event, Emitter<AuthStates> emit) async {
    {
      emit(LoginLoading());
      await AuthRepo.login(event.loginModel).then((value) {});
    }
  }
}
