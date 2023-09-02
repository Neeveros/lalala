mixin ValidatorMixin {
  String? isNotEmpty(String? value, [String? message]) {
    if (value!.isEmpty) return message ?? "Campo Inválido";
  }

  String? hazOnzeCaracteres(String? value, [String? message]) {
    if (value!.length < 11) return message ?? "Tem menos de 11 caracteres";
  }

  String? combine(List<String? Function()> validators) {
    for (final func in validators) {
      final validation = func();

    }
  }
}
