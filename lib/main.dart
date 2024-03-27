import 'package:chatapp/bloc/auth_bloc/auth_bloc.dart';
import 'package:chatapp/cubits/auth_cubit/auth_cubit.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/views/chat_view.dart';
import 'package:chatapp/views/login_view.dart';
import 'package:chatapp/views/register_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AMBChatApp());
}

class AMBChatApp extends StatelessWidget {
  const AMBChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginView.id: (context) => const LoginView(),
          RegisterView.id: (context) => const RegisterView(),
          ChatView.id: (context) => const ChatView(),
        },
        initialRoute: LoginView.id,
      ),
    );
  }
}
