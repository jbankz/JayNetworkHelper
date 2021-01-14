import 'package:flutter/material.dart';
import 'model/dummy_model.dart';
import 'repository/repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DummyData _dummyData = DummyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('UserID: ${_dummyData?.id ?? '?'}'),
            SizedBox(
              height: 23,
            ),
            RaisedButton(
              onPressed: () => _makeNetworkRequestState(),
              child: Text('Make Network Call'),
            ),
          ],
        ),
      ),
    );
  }

  void _makeNetworkRequestState() async {
    try {
      final _response = await makeNetworkRequestRepository();
      _response.when(
        success: (success, code, message) {
          print('Success: ${success.id} =====> $code ======> $message');
          _dummyData = success;
          setState(() {});
        },
        failure: (error, code, message) => print('Failed: $error =====> $code'),
      );
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
