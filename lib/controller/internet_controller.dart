import 'package:mvc_architecture/model/internet_model.dart';

class InternetController {
  final InternetModel model;

  InternetController({required this.model});

  Stream<bool> get internetStream => model.internetStream;
}
