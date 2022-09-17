import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ProgressHUD(
          child: Form(
            key: globalKey,
            child: _loginUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              children: [
                const Expanded(
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
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 30,
                top: 50,
              ),
              child: Text(
                "Login",
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
            "emailId",
            "E-mail",
            (onValidateVal) {
              if (onValidateVal.isEmpty) {
                return 'O E-mail é obrigatório';
              }
              return null;
            },
            (onSavedVal) {
              return;
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
                return;
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
                icon: Icon(
                    hidePassword ? Icons.visibility_off : Icons.visibility),
              ),
              showPrefixIcon: true,
              prefixIcon: Icon(Icons.lock),
              onChange: (value) {
                return;
              }),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Esqueci a senha',
                          style: TextStyle(
                            color: Color.fromRGBO(63, 81, 126, 5),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Nao tenho conta");
                            })
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton(
              "Acessar",
              () {
                // if (this.validateAndSave()) {
                //   setState(() {
                //     this.isApiCallProcess = true;
                //   });

                //   APIService.registerUser(this.userModel).then(
                //     (UserResponseModel responseModel) {
                //       setState(() {
                //         this.isApiCallProcess = false;
                //       });
                //       if (responseModel.code == 200) {
                //         FormHelper.showSimpleAlertDialog(
                //           context,
                //           "Cadastro realizado com sucesso",
                //           "",
                //           "Ok",
                //           () {
                //             Navigator.of(context).pop();
                //           },
                //         );
                //       } else {
                //         FormHelper.showSimpleAlertDialog(
                //           context,
                //           "Erro ao tentar salvar",
                //           responseModel.mensagem.toString(),
                //           "Ok",
                //           () {
                //             Navigator.of(context).pop();
                //           },
                //         );
                //       }
                //     },
                //   );
                // }
              },
              btnColor: Color.fromRGBO(63, 81, 126, 5),
              borderColor: Color.fromRGBO(63, 81, 126, 5),
              // txtColor: Color.fromRGBO(63, 81, 126, 5),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Não possui uma conta? ',
                      ),
                      TextSpan(
                          text: 'Cadastre-se',
                          style: TextStyle(
                            color: Color.fromRGBO(63, 81, 126, 5),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "/register");
                            })
                    ]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Perfil',
                          style: TextStyle(
                            color: Color.fromRGBO(63, 81, 126, 5),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "/profile");
                            })
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
