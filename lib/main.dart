import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Custom Log Print'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var log=Logger(
    printer: PrettyPrinter(),
  );
  var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(onPressed: (){
              loggerNoStack.d("This Is Simple Log Print");
            }, child: Text("Debug Log Print"))
           , ElevatedButton(onPressed: (){
              loggerNoStack.w("This Is Warning Log Print",);
            }, child: Text("Warning Log Print",style: TextStyle(color: Colors.yellow),)),
            ElevatedButton(onPressed: (){
              loggerNoStack.i("This Is Information Log Print");
            }, child: Text("Information Log Print",style: TextStyle(color: Colors.indigo),)),
            ElevatedButton(onPressed: (){
              loggerNoStack.v("This Is Verbose Log Print",);
            }, child: Text("Verbose Log Print",style: TextStyle(color: Colors.grey),)),
            ElevatedButton(onPressed: (){
              loggerNoStack.e("This Is Error Log Print");
            }, child: Text("Error Log Print",style: TextStyle(color: Colors.red),)),
            ElevatedButton(onPressed: (){
              loggerNoStack.wtf("This Is Some Log Print");
            }, child: Text("Some Log Print",style: TextStyle(color: Colors.purpleAccent),)),
            ElevatedButton(onPressed: (){
              print("This Is Default Log Print");
            }, child: Text("Default Log Print",style: TextStyle(color: Colors.black),)),


      //Must Subscribe my Channel if you like this video
            //thank you



          ],
        ),
      ),
      );
  }
}
