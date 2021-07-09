import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplacemobile/application/customer/customer.login.mixin.dart';
import 'package:marketplacemobile/components/buttongradient.component.dart';
import 'package:marketplacemobile/components/container.component.dart';
import 'package:marketplacemobile/components/listview.component.dart';
import 'package:marketplacemobile/components/sizedbox.component.dart';
import 'package:marketplacemobile/components/textformfield.component.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget with CustomerLoginMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ContainerComponent(
          color: Colors.white,
          child: ListViewComponent(
            padding: EdgeInsets.all(45),
            children: <Widget>[
              SizedBoxComponent(
                width: 200,
                height: 200,
                child: Image.asset("assets/logo.png"),
              ),
              TextFormFieldComponent(
                labelText: "CPF",
                keyBoardType: TextInputType.number,
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                inputFormatters: [LengthLimitingTextInputFormatter(11)],
                style: TextStyle(
                  fontSize: 20,
                ),
                onChanged: setCpf,
                validator: validateCpf,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormFieldComponent(
                labelText: "Senha",
                keyBoardType: TextInputType.text,
                obscureText: true,
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                style: TextStyle(
                  fontSize: 30,
                ),
                onChanged: setPassword,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      'Recuperar Senha',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Get.snackbar('Oi Thiago', 'thiago é lindo!',
                          backgroundColor: Theme.of(context).backgroundColor,
                          backgroundGradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFF58524), Color(0xFFF92B7F)],
                          ),
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.white);
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ButtonGradient(
                      text: "Entrar",
                      colorone: Color(0xFFF58524),
                      colortwo: Color(0xFFF92B7F),
                      onPressed: () => auth(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Cadastre-se',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
