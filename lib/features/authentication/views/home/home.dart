import 'package:finik/features/authentication/views/home/widgets/draggable_scrollable_sheet.dart';
import 'package:flutter/material.dart';
import 'package:finik/features/authentication/views/home/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child:  AppBar(
          elevation: 0,
          centerTitle: true,
        ),
      ),
      drawer: const NavBar(),
      body: const Center(
        child: DraggableScrollableSheetPage(),
      ),
    );
  }
}
