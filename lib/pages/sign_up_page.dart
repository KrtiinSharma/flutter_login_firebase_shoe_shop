import 'package:app/common/loading_dialog.dart';
import 'package:app/exception/auth_exception_handler.dart';
import 'package:app/service/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Signup extends StatefulWidget {
  final void Function()? onPressed;
  const Signup({super.key, this.onPressed});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void handleSignUp() {
    LoadingDialog.showLoadingDialog(context, "Loading...");

    AuthenticationService()
        .signupWithEmailAndPassword(
            name: _name.text, email: _email.text, password: _password.text)
        .then((status) {
      LoadingDialog.hideLoadingDialog(context);

      if (status == AuthResultStatus.successful) {
        Fluttertoast.showToast(msg: "Successful");
      } else {
        final errorMsg = AuthExceptionHandler.generateExceptionMessage(status);
        Fluttertoast.showToast(msg: errorMsg);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: OverflowBar(
              overflowSpacing: 20,
              children: [
                TextFormField(
                  controller: _name,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Name is empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Name"),
                ),
                TextFormField(
                  controller: _email,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Email is empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  controller: _password,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Password is empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Password"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      handleSignUp();
                    }
                  },
                  child: const Text("Sign up"),
                ),
                ElevatedButton(
                  onPressed: widget.onPressed,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xffff3851)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
