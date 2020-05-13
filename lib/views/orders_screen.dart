import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
      ),
      drawer: AppDrawer(),
    );
  }
}