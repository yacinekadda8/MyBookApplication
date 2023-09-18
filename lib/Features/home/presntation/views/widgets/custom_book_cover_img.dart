import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/assets.dart';

class CustomBookCoverImg extends StatelessWidget {
  final double height;
  final String imgUrl;
  const CustomBookCoverImg({
    super.key,
    required this.height,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return SizedBox(
        height: mqHeight / height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              fit: BoxFit.fill,
              placeholder: (context, url) => Image.asset(
                MyAssets.bookplaceholder,
                fit: BoxFit.fill,
              ),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.image_not_supported),
            ),
          ),
        )

        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       image: DecorationImage(
        //         image: NetworkImage(imgUrl),
        //         fit: BoxFit.fill,
        //       )),
        // ),
        );
  }
}
