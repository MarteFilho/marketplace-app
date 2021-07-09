import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'customer.service.dart';

mixin CustomerLoginMixin {
  final cpf = ''.obs;
  final password = ''.obs;
  final CustomerService customerService = Get.find();
  final formKey = GlobalKey<FormState>();

  void setCpf(String newCpf) {
    cpf.value = newCpf;
  }

  void setPassword(String newPassword) {
    password.value = newPassword;
  }

  String validateCpf(String value) {
    if (value == null || value.length < 11) return "CPF Inválido!";
  }

  void auth(context) async {
    if (formKey.currentState.validate())
      var result = await customerService.auth(cpf.value, password.value);
  }
}
