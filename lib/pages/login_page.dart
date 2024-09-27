import 'package:app/common/loading_dialog.dart';
import 'package:app/exception/auth_exception_handler.dart';
import 'package:app/service/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onPressed;

  const LoginPage({super.key, this.onPressed});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void handleLogin() {
    LoadingDialog.showLoadingDialog(context, "Loading...");
    AuthenticationService()
        .loginWithEmailAndPassword(
      email: _email.text,
      password: _password.text,
    )
        .then(
      (status) {
        LoadingDialog.hideLoadingDialog(context);
        if (status == AuthResultStatus.successful) {
          Fluttertoast.showToast(msg: "Successful");
        } else {
          final errorMsg =
              AuthExceptionHandler.generateExceptionMessage(status);
          Fluttertoast.showToast(msg: errorMsg);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Login")),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: OverflowBar(
                overflowSpacing: 20,
                children: [
                  TextFormField(
                    controller: _email,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'Email is empty!';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(labelText: "Email"),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _password,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'Password is empty!';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(labelText: "Password"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        handleLogin();
                      }
                    },
                    child: const Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: widget.onPressed,
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xffff3851)),
                          borderRadius: BorderRadius.circular(7),
                        )),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
