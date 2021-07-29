import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/responsive.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
            ),
      drawer: const SafeArea(child: SideMenu()),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
