import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class Downloader {
  void download(String url) {
    FileDownloader.downloadFile(url: url);
    NotificationType.all;
  }
}
