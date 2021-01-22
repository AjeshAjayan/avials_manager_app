import 'dart:convert';
import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/helpers/toster.dart';
import 'package:avilas_manager_app/helpers/http.dart';
import 'package:avilas_manager_app/models/manager.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginScreen extends StatelessWidget {
  final _http = new Http();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> _formControls = {
    'email': TextEditingController(),
    'password': TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: _formControls['email'],
                      validator: (value) =>
                          value.isEmpty ? 'Email cannot be blank' : null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'example@abc.com',
                        labelText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF2633C5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _formControls['password'],
                      validator: (value) =>
                          value.isEmpty ? 'Password cannot be blank' : null,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF2633C5),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () => _login(context),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFF2633C5),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.copyright),
                        SizedBox(width: 10),
                        Text('Avials Technologies')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login(context) async {
    MyHomePage.showLoading.value = true;
    final FormState form = _formKey.currentState;
    final FlutterSecureStorage storage = new FlutterSecureStorage();
    if (!form.validate()) {
      return;
    }
    dynamic response = await _http.postNoAuth(url: 'auth/local', body: {
      'identifier': _formControls['email'].text,
      'password': _formControls['password'].text,
    });
    response = jsonDecode(response.body);
    if (response['jwt'] != null && response['jwt'] != '') {
      // get manager's info by user id
      final userId = response['user']['id'];

      await storage.write(key: 'accessToken', value: response['jwt']);

      var managerRes = await _http.get(
        url: 'managers/user/$userId',
        body: {},
        context: context,
      );

      Manager manager = Manager.fromJson(jsonDecode(managerRes.body)[0]);

      await storage.write(key: 'userData', value: jsonEncode(manager.toJson()));

      UserData.manager = manager;

      if (FocusScope.of(context).isFirstFocus) {
        FocusScope.of(context).requestFocus(new FocusNode());
      }
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => MyHomePage()));
    } else {
      Toster.showToster(
          context: context, msg: 'Identifier or password invalid invalid');
    }
    MyHomePage.showLoading.value = false;
  }
}
