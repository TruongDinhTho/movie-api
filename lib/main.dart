import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/login_screen/authentication_bloc/authentication_bloc.dart';
import 'package:movie_app/login_screen/authentication_bloc/authentication_event.dart';
import 'package:movie_app/login_screen/screens/login/login_screen.dart';
import 'package:movie_app/login_screen/simple_bloc_obsever.dart';
import 'package:movie_app/repository/user_repository.dart';
import 'package:movie_app/screens/home_screen.dart';


/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  BlocOverrides.runZoned(
    () {},
    blocObserver: SimpleBlocObserver(),
  );
  final UserRepository userRepository = UserRepository();

  runApp(
      BlocProvider(
        create: (context) => AuthenticationBloc(userRepository)..add(AuthenticatonStarted()),
        child: MyApp(userRepository: userRepository),
      )
  );
}

class MyApp extends StatefulWidget {
  final UserRepository _userRepository;

  MyApp({required UserRepository userRepository}) : _userRepository = userRepository;

  @override
  _MyAppState createState() => _MyAppState(userRepository: _userRepository);
}

class _MyAppState extends State<MyApp> {
  final UserRepository _userRepository;

  _MyAppState({required UserRepository userRepository}) : _userRepository = userRepository;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(userRepository: _userRepository),
    );
  }
}