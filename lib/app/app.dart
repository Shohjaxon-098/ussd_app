import 'package:ussd_app/screens/home/ui/home_page.dart';
import 'package:ussd_app/utils/tools/app_router.dart';
import 'package:ussd_app/utils/tools/file_importants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutName.home,
      onGenerateRoute: AppRouter.generateRoute,
      title: 'Ussd Codes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
