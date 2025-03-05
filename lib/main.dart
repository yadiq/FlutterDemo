import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider( //可以向其他人通知自己的更改
  //     create: (context) => MyAppState(),
  //     child: MaterialApp(
  //       title: 'Namer App',
  //       theme: ThemeData(
  //         useMaterial3: true,
  //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
  //       ),
  //       home: MyHomePage(),
  //     ),
  //   );
  // }
}

//应用级状态,可以向其他人通知自己的更改
// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();
// }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ← 1
    //var appState = context.watch<MyAppState>();  // ← 2

    return Scaffold(
      // ← 3
      body: Column(
        // ← 4
        children: [
          Text('A random AWESOME idea:'), // ← 5
          //Text(appState.current.asLowerCase),    // ← 6
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('Next'),
          ),
        ], // ← 7
      ),
    );
  }
}

// //有状态的组件
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     //设置state值，更新UI build函数
//     setState(() {
//       _counter++;
//     });
//   }

//   //绘制组件
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:
//             Theme.of(context).colorScheme.inversePrimary, //Colors.amber
//         title: Text(widget.title),
//       ),
//       body: Center(
//         //子元素居中
//         child: Column(
//           //垂直排列
//           mainAxisAlignment: MainAxisAlignment.center, //主轴对齐居中
//           children: <Widget>[
//             //文本
//             Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             //按钮
//             ElevatedButton(
//               onPressed: () {
//                 print('button pressed!');
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
