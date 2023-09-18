import 'package:mybook/Core/functions/my_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(context, String? url) async {
  if(url != null){
      Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    mySnackBar(context, 'Launch Failed $url');
  }
  } 

}

