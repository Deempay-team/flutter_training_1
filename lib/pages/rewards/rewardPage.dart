import 'package:flutter/material.dart';

class Rewardpage extends StatefulWidget {
  const Rewardpage({super.key});

  @override
  State<Rewardpage> createState() => _RewardpageState();
}

class _RewardpageState extends State<Rewardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reward Page'),
      ),
    );
  }
}
