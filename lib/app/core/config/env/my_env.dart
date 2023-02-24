class MyEnv {
  static MyEnv? _instance;

  MyEnv._();

  static MyEnv get instance {
    _instance ??= MyEnv._();
    return _instance!;
  }

  Future<void> init() async {
    // Inicialize as variáveis de ambiente. Por exemplo, com flutter_dotenv:
    // await dotenv.load(fileName: '.env');
  }

  /// Você pode usar esse método assim:
  /// final String? myVar = MyEnv.instance['MY_VAR'];
  String? operator [](String key) {
    // Retorne o valor da variável de ambiente. Por exemplo, com flutter_dotenv:
    // return dotenv.env[key];
  }
}
