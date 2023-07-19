import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import './pages/home_page.dart';
import './pages/chat_list_page.dart';
import './pages/camera_gallery_image_picker_example.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        initialRoute: "home",
        routes: {
          "home": (context) => const HomePage(),
          "chatlist": (context) => const ChatListPage(),
          "image_picker": (context) => const CameraGalleryImagePickerExample(),
        },
      );
}
