import 'dart:io';

Future<void> main() async {
  String? input = "";

  print("Digite qual dado você busca:");
  input = stdin.readLineSync();

  print("Buscando dado...");
  await buscarDado(input!);

  await Future.delayed(Duration(milliseconds: 500));
  print("Fim da busca.");
}

Future<void> buscarDado(String input) async {
  await Future.delayed(Duration(seconds: 2));
  print("Aqui está: $input.dado");
}
