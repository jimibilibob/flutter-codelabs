import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      // appBar: AppBar(title: const Text('Login')),
      body: Stack(
        children: [
          _loginBackground(),
          _loginContent(colorScheme)
        ],
      ),
    );
  }

  SvgPicture _loginBackground() {
    return SvgPicture.asset(
          'assets/images/login_background.svg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
  }

  Center _loginContent(ColorScheme colorScheme) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8.0,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _loginAppHeader(colorScheme),
                      const SizedBox(height: 24.0,),
                    ],
                  )
                ),
                MaterialPrimaryButton(colorScheme: colorScheme),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _loginTextDescription(colorScheme),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline, color: Colors.white,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }

  Row _loginAppHeader(ColorScheme colorScheme) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/ic_app.svg', width: 90, height: 90,),
                    const SizedBox(width: 12.0,),
                    Text('WinTeam', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimary,
                      fontSize: 50.0,
                    ),)
                  ],
                );
  }

  ConstrainedBox _loginTextDescription(ColorScheme colorScheme) {
    return ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By logging in, you agree to ',
                              style: TextStyle(fontSize: 14.0, color: Colors.white),
                            ),
                            TextSpan(
                              text: 'WorkWorks Terms of Use and Privacy Policy.',
                              style: TextStyle(fontSize: 14.0, color: colorScheme.primary),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
  }
}

class MaterialPrimaryButton extends StatelessWidget {
  const MaterialPrimaryButton({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: colorScheme.primary,
      textColor: Colors.white,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      child: const Text('Log in', style: TextStyle(fontSize: 16),),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({required this.document, super.key});

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;
    final formattedDate = formatDate(modified);
    final blocks = document.blocks;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Center(child: Text('Last modified $formattedDate')),
          Expanded(child: ListView.builder(itemCount: blocks.length,itemBuilder: (ctx, idx) {
            final block = blocks[idx];
            return BlockWidget(block: block);
          }),)
          ]
        ),
    );
  }
}

class BlockWidget extends StatelessWidget {
  final Block block;

  const BlockWidget({required this.block, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: switch (block) {
        HeaderBlock(:final text) => Text(text, style: Theme.of(context).textTheme.displayMedium),
        ParagraphBlock(:final text) => Text(text),
        CheckboxBlock(:final text, :var isChecked) => Row(
          children: [
            Checkbox(value: !isChecked, onChanged: (_) {}),
            Text(text),
          ],
        ),
      },
    );
  }
}

String formatDate(DateTime dateTime) {
  final today = DateTime.now();
  final difference = dateTime.difference(today);

  return switch (difference) {
    Duration(inDays: 0) => 'today',
    Duration(inDays: 1) => 'tomorrow',
    Duration(inDays: -1) => 'yesterday',
    Duration(inDays: final days) when days > 7 => '${days ~/ 7} weeks from now', // Add from here
    Duration(inDays: final days) when days < -7 =>
      '${days.abs() ~/ 7} weeks ago',                                            // to here.
    Duration(inDays: final days, isNegative: true) => '${days.abs()} days ago',
    Duration(inDays: final days) => '$days days from now',
  };
}
