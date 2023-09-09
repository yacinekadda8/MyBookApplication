import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_view_details_body.dart';

class BookViewDetails extends StatelessWidget {
  const BookViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookViewDetailsBody()),
    );
  }
}
