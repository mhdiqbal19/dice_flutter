import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_storage/controllers/login_controller.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final LoginController loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberme") != null) {
      loginC.emailC.text = box.read("dataRememberme")["email"];
      loginC.passC.text = box.read("dataRememberme")["pass"];
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: Icon(loginC.isHidden.value
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.rememberMe.value,
              onChanged: (value) {
                loginC.rememberMe.toggle();
              },
              title: Text("Remember me"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
