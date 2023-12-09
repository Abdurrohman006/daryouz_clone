import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('tel: +998908307175');

Future<void> myLaunchUrl({source, text}) async {
  final Uri url;

  if (source == 'tel') {
    url = Uri.parse('tel:$text');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
    launchUrl(url);
  } else if (source == 'web') {
    url = Uri.parse(text);
    // url = Uri(scheme: "https", host: "www.instagram.com", path: text);
    if (!await launchUrl(url,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: WebViewConfiguration())) {
      throw Exception('Could not launch $url');
    }
    launchUrl(url);
  } else if (source == 'email') {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    // ···
    url = Uri(
      scheme: 'mailto',
      path: text,
      query: encodeQueryParameters(<String, String>{
        'subject': "",
      }),
    );

    launchUrl(url);
  }
}
