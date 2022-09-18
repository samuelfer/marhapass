import 'package:flutter/material.dart';
import 'package:marhapass/src/models/api_service.dart';
import 'package:marhapass/src/models/user_model.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'dart:convert' show Utf8Decoder, utf8;

class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({Key? key}) : super(key: key);

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  bool isApiCallProcess = false;
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  UserModel userModel =
      new UserModel(celular: '', cpf: '', email: '', nome: '', senha: '');

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ProgressHUD(
            key: _scaffoldKey,
            child: registerUISetup(),
            inAsyncCall: isApiCallProcess,
            opacity: 0.3),
      ),
    );
  }

  Widget registerUISetup() {
    return new SingleChildScrollView(
      child: new Container(
        child: new Form(
          key: globalKey,
          child: _registerUI(context),
        ),
      ),
    );
  }

  Widget _registerUI(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor("#3f517e"),
                HexColor("#182545"),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(150),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(
                      "images/Password_Outline.png",
                    ),
                    width: 160.0,
                  ),
                ),
              ),
              // Spacer(),
            ],
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, top: 40),
            child: Text(
              "Registre-se",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromRGBO(63, 81, 126, 5),
              ),
            ),
          ),
        ),
        FormHelper.inputFieldWidget(
          context,
          "nome",
          "Nome",
          (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return 'O nome é obrigatório';
            }
            return null;
          },
          (onSavedVal) {
            this.userModel.nome = onSavedVal;
          },
          initialValue: "",
          paddingBottom: 20,
          borderFocusColor: Color.fromRGBO(63, 81, 126, 5),
          prefixIconColor: Color.fromRGBO(63, 81, 126, 5),
          borderColor: Color.fromRGBO(63, 81, 126, 5),
          textColor: Color.fromRGBO(63, 81, 126, 5),
          hintColor: Color.fromRGBO(63, 81, 126, 5),
          showPrefixIcon: true,
          prefixIcon: Icon(Icons.verified_user),
        ),
        FormHelper.inputFieldWidget(
          context,
          "emailId",
          "E-mail",
          (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return 'O E-mail é obrigatório';
            }
            return null;
          },
          (onSavedVal) {
            this.userModel.email = onSavedVal;
          },
          initialValue: "",
          paddingBottom: 20,
          borderFocusColor: Color.fromRGBO(63, 81, 126, 5),
          prefixIconColor: Color.fromRGBO(63, 81, 126, 5),
          borderColor: Color.fromRGBO(63, 81, 126, 5),
          textColor: Color.fromRGBO(63, 81, 126, 5),
          hintColor: Color.fromRGBO(63, 81, 126, 5),
          showPrefixIcon: true,
          prefixIcon: Icon(Icons.mail),
        ),
        FormHelper.inputFieldWidget(
            context,
            "senha",
            "Senha",
            (onValidateVal) {
              if (onValidateVal.isEmpty) {
                return 'A Senha é obrigatória';
              }
              return null;
            },
            (onSavedVal) {
              this.userModel.senha = onSavedVal;
            },
            initialValue: "",
            paddingBottom: 20,
            borderFocusColor: Color.fromRGBO(63, 81, 126, 5),
            prefixIconColor: Color.fromRGBO(63, 81, 126, 5),
            borderColor: Color.fromRGBO(63, 81, 126, 5),
            textColor: Color.fromRGBO(63, 81, 126, 5),
            hintColor: Color.fromRGBO(63, 81, 126, 5),
            obscureText: hidePassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              color: Color.fromRGBO(63, 81, 126, 5),
              icon:
                  Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
            ),
            showPrefixIcon: true,
            prefixIcon: Icon(Icons.lock),
            onChange: (value) {
              this.userModel.senha = value;
            }),
        FormHelper.inputFieldWidget(
          context,
          "confirmSenha",
          "Confirme a Senha",
          (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return 'A confirmação é obrigatória';
            }

            // if (this.userModel.senha != this.userModel.confirmSenha) {
            //   return 'A senha e a confirmação precisam ser iguais';
            // }

            return null;
          },
          (onSaved) {},
          initialValue: "",
          paddingBottom: 20,
          borderFocusColor: Color.fromRGBO(63, 81, 126, 5),
          prefixIconColor: Color.fromRGBO(63, 81, 126, 5),
          borderColor: Color.fromRGBO(63, 81, 126, 5),
          textColor: Color.fromRGBO(63, 81, 126, 5),
          hintColor: Color.fromRGBO(63, 81, 126, 5),
          obscureText: hideConfirmPassword,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hideConfirmPassword = !hideConfirmPassword;
              });
            },
            color: Color.fromRGBO(63, 81, 126, 5),
            icon: Icon(
                hideConfirmPassword ? Icons.visibility_off : Icons.visibility),
          ),
          showPrefixIcon: true,
          prefixIcon: Icon(Icons.lock),
          onChange: (value) {
            // this.userModel.confirmSenha = value;
          },
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: FormHelper.submitButton(
            "Cadastrar",
            () {
              if (this.validateAndSave()) {
                setState(() {
                  this.isApiCallProcess = true;
                });

                APIService.registerUser(this.userModel).then(
                  (UserResponseModel responseModel) {
                    setState(() {
                      this.isApiCallProcess = false;
                    });
                    if (responseModel.code == 200) {
                      FormHelper.showSimpleAlertDialog(
                        context,
                        "Cadastro realizado com sucesso",
                        "",
                        "Ok",
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    } else {
                      FormHelper.showSimpleAlertDialog(
                        context,
                        "Erro ao tentar salvar",
                        responseModel.mensagem.toString(),
                        "Ok",
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    }
                  },
                );
              }
            },
            btnColor: Color.fromRGBO(63, 81, 126, 5),
            borderColor: Color.fromRGBO(63, 81, 126, 5),
            txtColor: Colors.white,
          ),
        ),
      ],
    );
  }

  bool validateAndSave() {
    final form = globalKey.currentState;

    if (form != null && form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
