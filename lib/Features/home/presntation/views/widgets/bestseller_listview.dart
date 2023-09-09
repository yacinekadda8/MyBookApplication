import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: BestSellerItem(),
      ),
    );
  }
}
