import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gv_login/api_service.dart';
import 'package:gv_login/authModel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(hintText: "Username"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                var loginData = AuthModel(
                    employeeId: _usernameController.text,
                    password: _passwordController.text);

                ApiService()
                    .attemptLogIn(signinModel: loginData, context: context);
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
