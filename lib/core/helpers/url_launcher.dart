import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink({required String url}) async {
  Uri uri = Uri.parse(url);
  await launchUrl(uri);
}

Future<void> launchWhatsApp({required String number}) async {
  Uri uri = Uri.parse("https://wa.me/$number");

  await launchUrl(uri, mode: LaunchMode.externalApplication);
}
