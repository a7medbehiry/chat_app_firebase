import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> userLogin(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          LoginFailure(
            errorMessage: 'No user found for that email',
          ),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          LoginFailure(
            errorMessage: 'Wrong password provided for that user',
          ),
        );
      }
    } catch (e) {
      emit(
        LoginFailure(
          errorMessage: 'Oops, there was an error. Please try again.',
        ),
      );
    }
  }

  Future<void> userRegistration(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          RegisterFailure(
            errorMessage: 'The password provided is too weak',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          RegisterFailure(
            errorMessage: 'The account already exists for that email',
          ),
        );
      }
    } catch (e) {
      emit(
        RegisterFailure(
          errorMessage: 'Oops, there was an error. Please try again.',
        ),
      );
    }
  }
}
