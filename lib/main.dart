import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // アプリの向きを固定する
  SystemChrome.setPreferredOrientations(
      // 縦に固定する場合は下記のように記載する
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,],
      // 横に固定する場合は下記のように記載する？
      // [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight,],
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50, // 縦幅
              width: 300, // 横幅
              padding: const EdgeInsets.all(8), // 内側の余白(padding)
              margin: const EdgeInsets.all(8), // 外側の余白(margin)
              decoration: BoxDecoration(
                // 枠線の色や太さ設定の指定
                border: Border.all(
                    color: Colors.blue,
                    width: 6,),
                // 枠線の角丸設定
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
              ),
              // color: Colors.red,  // 背景色
              child: const Text(
                'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろ',
                overflow: TextOverflow.ellipsis, // はみ出したことを示すために省略記号を使用
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 300,
              color: Colors.red,
              child: const Text(
                'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろ',
                overflow: TextOverflow.ellipsis, // はみ出したことを示すために省略記号を使用
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 300,
              color: Colors.red,
              child: const Text(
                'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろABCDEFGHIJKLMN',
                overflow: TextOverflow.fade, // はみ出した文字列はフェードアウトする
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 300,
              color: Colors.red,
              child: const Text(
                'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろABCDEFGHIJKLMN',
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 300,
              color: Colors.red,
              child: const Text(
                'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろABCDEFGHIJKLMN',
                overflow: TextOverflow.visible,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                ), // ここが指定箇所
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                ), // ここが指定箇所
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ), // ここが指定箇所
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ), // ここが指定箇所
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
