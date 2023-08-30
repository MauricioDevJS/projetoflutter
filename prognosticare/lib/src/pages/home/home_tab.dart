import 'package:flutter/material.dart';
import 'package:prognosticare/src/config/custom_colors.dart';
import 'package:prognosticare/src/pages_routes/app_pages.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(text: 'PrognostiCare', children: [
          TextSpan(
            style: TextStyle(
                color: CustomColors.customContrastColor,
                fontWeight: FontWeight.bold),
          ),
        ])),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(PagesRoutes.signInRoute);
            },
          ),
        ],
      ),
    );
  }
}
