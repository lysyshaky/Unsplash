import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  final Map<String, dynamic> photo;

  const PhotoScreen({Key? key, required this.photo}) : super(key: key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  Map<String, dynamic> _photo = {};

  @override
  void initState() {
    super.initState();
    setState(() {
      _photo = widget.photo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_photo['user']['name'] ?? ''),
      ),
      body: Center(
        child: Image.network(_photo['urls']['regular']),
      ),
    );
  }
}
