Future<void> main() async {
  print('Iniciando lancamento');

  await contagemRegressiva();

  await Future.delayed(Duration(seconds: 1));
  print('Foguete lancado!');
}

Future<void> contagemRegressiva() async {
  for (var i = 10; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}
