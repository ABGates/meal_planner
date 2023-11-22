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
      title: 'MealPlanner Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 102)),
        useMaterial3: true,
      ),
      home: const LandingPage(title: 'MealPlanner Demo'),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  // This widget is the landing page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: 
       Container(
        // Outermost container with rounded edges and a black border
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Colors.black, width: 2.0),
        ),
        margin: const EdgeInsets.all(128.0), // More white space around the outermost container
        padding: const EdgeInsets.all(16.0), // Padding for inner content
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Widgets for days of the week
            for (String day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'])
              Expanded(
                child: Container(
                  // Container for each day with rounded edges and light gray border
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  padding: const EdgeInsets.all(8.0), // Padding for inner content
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    children: [
                      Text(day),
                      // Inner widgets representing meals
                      for (int j = 0; j < 3; j++)
                        Expanded(
                          child: MealWidget(),
                        ),
                    ],
                  ),
                ),
              ),
          ],
        ),
       ),
      ),
    );
  }
}


class MealWidget extends StatefulWidget {
  const MealWidget({super.key});

  @override
  _MealWidgetState createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container for each meal with rounded edges and a black border
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0), // Margin between meals
      child: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}