import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_08_codingchef06_provider/fish_model.dart';
import 'package:study_flutter_08_codingchef06_provider/seafish_model.dart';

void main() {
  runApp(const MyApp());
}

// --------------
// 아무래도 Firestore Database 관련 공부를 더 하는게 좋겠음..
// --------------


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => FishModel(
    //     name: 'Salmon',
    //     number: 10,
    //     size: 'big',
    //   ),
    //   child: MaterialApp(
    //     home: FishOrder(),
    //   ),
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FishModel(
            name: 'Salmon',
            number: 10,
            size: 'big',
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SeafishModel(
            name: 'tuna',
            tunaNumber: 0,
            size: 'middle',
          ),
        ),
      ],
      child: MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

// ---------------------------------------------------------
class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Fish name: ${Provider.of<FishModel>(context).name}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            High(),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------
class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyA is located at high place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA(),
      ],
    );
  }
}

// ---------------------------------------------------------
class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Middle(),
      ],
    );
  }
}

// ---------------------------------------------------------
class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyB is located at middle place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB(),
      ],
    );
  }
}

// ---------------------------------------------------------
class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Tuna number: ${Provider.of<SeafishModel>(context).tunaNumber}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<SeafishModel>(context, listen: false)
                .ChangeSeafishNumber();
          },
          child: Text('Sea fish number'),
        ),
        SizedBox(
          height: 20,
        ),
        Low(),
      ],
    );
  }
}

// ---------------------------------------------------------
class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyC is located at low place',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC(),
      ],
    );
  }
}

// ---------------------------------------------------------
class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Tuna number: ${Provider.of<SeafishModel>(context).tunaNumber}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).ChangeFishNumber();
          },
          child: Text('Change fish number'),
        ),
      ],
    );
  }
}
