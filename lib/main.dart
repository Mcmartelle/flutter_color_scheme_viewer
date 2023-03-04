import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Color Scheme Viewer',
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Color Scheme Viewer'),
      ),
      body: const Center(
        child: ColorListView(),
      ),
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ColorItem> colors = [
      ColorItem(
        text: 'Background',
        color: Theme.of(context).colorScheme.background,
      ),
      ColorItem(
        text: 'Error',
        color: Theme.of(context).colorScheme.error,
      ),
      ColorItem(
        text: 'Error Container',
        color: Theme.of(context).colorScheme.errorContainer,
      ),
      ColorItem(
        text: 'Inverse Primary',
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      ColorItem(
        text: 'Inverse Surface',
        color: Theme.of(context).colorScheme.inverseSurface,
      ),
      ColorItem(
        text: 'On Background',
        color: Theme.of(context).colorScheme.onBackground,
      ),
      ColorItem(
        text: 'On Error',
        color: Theme.of(context).colorScheme.onError,
      ),
      ColorItem(
        text: 'On Error Container',
        color: Theme.of(context).colorScheme.onErrorContainer,
      ),
      ColorItem(
        text: 'On Inverse Surface',
        color: Theme.of(context).colorScheme.onInverseSurface,
      ),
      ColorItem(
        text: 'On Primary',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      ColorItem(
        text: 'On Primary Container',
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      ColorItem(
        text: 'On Secondary',
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      ColorItem(
        text: 'On Secondary Container',
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      ColorItem(
        text: 'On Surface',
        color: Theme.of(context).colorScheme.onSurface,
      ),
      ColorItem(
        text: 'On Surface Variant',
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      ColorItem(
        text: 'On Tertiary',
        color: Theme.of(context).colorScheme.onTertiary,
      ),
      ColorItem(
        text: 'On Tertiary Container',
        color: Theme.of(context).colorScheme.onTertiaryContainer,
      ),
      ColorItem(
        text: 'Outline',
        color: Theme.of(context).colorScheme.outline,
      ),
      ColorItem(
        text: 'Outline Variant',
        color: Theme.of(context).colorScheme.outlineVariant,
      ),
      ColorItem(
        text: 'Primary',
        color: Theme.of(context).colorScheme.primary,
      ),
      ColorItem(
        text: 'Primary Container',
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      ColorItem(
        text: 'Scrim',
        color: Theme.of(context).colorScheme.scrim,
      ),
      ColorItem(
        text: 'Secondary',
        color: Theme.of(context).colorScheme.secondary,
      ),
      ColorItem(
        text: 'Secondary Container',
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      ColorItem(
        text: 'Shadow',
        color: Theme.of(context).colorScheme.shadow,
      ),
      ColorItem(
        text: 'Surface',
        color: Theme.of(context).colorScheme.surface,
      ),
      ColorItem(
        text: 'Surface Tint',
        color: Theme.of(context).colorScheme.surfaceTint,
      ),
      ColorItem(
        text: 'Surface Variant',
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
      ColorItem(
        text: 'Tertiary',
        color: Theme.of(context).colorScheme.tertiary,
      ),
      ColorItem(
        text: 'Tertiary Container',
        color: Theme.of(context).colorScheme.tertiaryContainer,
      ),
    ];
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        ColorItem colorItem = colors[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(colorItem.text),
            Container(
              width: 30,
              height: 20,
              decoration: BoxDecoration(
                  color: colorItem.color,
                  borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                  border: Border.all(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter)),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class ColorItem {
  final String text;
  final Color color;

  ColorItem({
    required this.text,
    required this.color,
  });
}
