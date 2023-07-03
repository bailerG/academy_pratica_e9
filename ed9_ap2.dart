Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> simulaDownload(String url) async {
  await Future.delayed(Duration(seconds: 1));
  print("Imagem $url baixada com sucesso!");
}

Future<void> baixarImagens(List<String> urls) async {
  print("Baixando imagens...");

  for (String url in urls) {
    await simulaDownload(url);
  }

  print("Download concluido!");
}
