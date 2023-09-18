import 'package:flutter/material.dart';
import 'package:mybook/Core/functions/launch_url.dart';
import 'package:mybook/Features/home/data/models/book_model/book_model.dart';
import 'package:mybook/Features/home/presntation/views/widgets/preview_and_price_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../constant.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.w,
    required this.bookModel,
  });
  final double w;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PreviewOrPriceButton(
            w: w,
            btnBgColor: kgreyColor,
            fontSize: 18,
            txtColor: kprimaryColor,
            txt: '19.99€',
            onTap: () async {
              final Uri url = Uri.parse(
                  bookModel.accessInfo?.pdf?.downloadLink ??
                      bookModel.saleInfo?.buyLink ??
                      '');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            topLeft: 15,
            bottomLeft: 15,
            topRight: 0,
            bottomRight: 0),
        PreviewOrPriceButton(
            w: w,
            btnBgColor: ksecondaryColor,
            fontSize: 16,
            txtColor: Colors.white,
            txt: getText(bookModel),
            onTap: () {
              final String? link = bookModel.volumeInfo?.previewLink ??
                  bookModel.saleInfo?.buyLink ;
              lunchCustomUrl(context, link);
            },
            topLeft: 0,
            bottomLeft: 0,
            topRight: 15,
            bottomRight: 15),
      ],
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo?.previewLink == null) {
    return 'Not available';
  } else {
    return 'Preview';
  }
}
