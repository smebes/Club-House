import 'package:club_house/ui/home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Home(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF5d5fee),
        scaffoldBackgroundColor: const Color(0xFFf8f7fd),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          textTheme: TextTheme(
            titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF010105),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: const Color(0xFF5d5fee),
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: const Color(0xFF5d5fee),
      //   scaffoldBackgroundColor: const Color(0xFF0a0a0a),
      //   appBarTheme: const AppBarTheme(
      //     elevation: 0,
      //     brightness: Brightness.dark,
      //     backgroundColor: Colors.transparent,
      //     textTheme: TextTheme(
      //       titleLarge: TextStyle(
      //         color: Colors.white,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w500,
      //       ),
      //     ),
      //     iconTheme: IconThemeData(
      //       color: Colors.white,
      //     ),
      //   ),
      //   textTheme: const TextTheme(
      //     headlineMedium: TextStyle(
      //       fontWeight: FontWeight.w600,
      //       color: Colors.white,
      //       fontSize: 16,
      //     ),
      //     bodyMedium: TextStyle(
      //       color: Colors.white,
      //       fontSize: 14,
      //     ),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       elevation: 0,
      //       backgroundColor: const Color(0xFF5d5fee),
      //       padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(16),
      //       ),
      //     ),
      //   ),
      //   iconTheme: const IconThemeData(
      //     color: Colors.white,
      //   ),
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
      // ),
    );
  }
}
