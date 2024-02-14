// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UiDetails extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String Namedetails;
  String images;

  UiDetails({
    // ignore: non_constant_identifier_names
    required this.Namedetails,
    required this.images,
    Key? key,
  }) : super(key: key);
  @override
  State<UiDetails> createState() => _UiDetailsState();
}

class _UiDetailsState extends State<UiDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            widget.Namedetails,
            style: const TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.phone,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.more_vert,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 799,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
