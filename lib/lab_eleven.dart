import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();
  var isPasswordHidden = true;
  var isConfirmPasswordHidden = true;

  var agreeToTermsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: getLoginScreen(), //getRegistrationScreen(),
      ),
    );
  }

  Widget getLoginScreen() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text("Login Screen"),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: _emailValidator,
              decoration: InputDecoration(
                  labelText: "Email", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: isPasswordHidden,
              validator: _nameValidator,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      icon: Icon(isPasswordHidden ? Icons.visibility : Icons
                          .visibility_off),
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      })),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("All Fields are Valid"),
                    backgroundColor: Colors.green,
                  ));
                }
              },
              child: Text("Login"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget getRegistrationScreen() {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Registration Screen"),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: _nameValidator,
                  decoration: InputDecoration(
                      labelText: "Name", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: _emailValidator,
                  decoration: InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: isPasswordHidden,
                  validator: _passwordValidator,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                          icon: Icon(isPasswordHidden ? Icons.visibility : Icons
                              .visibility_off),
                          onPressed: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          })),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: isConfirmPasswordHidden,
                  validator: _confirmPassword,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                          icon: Icon(
                              isConfirmPasswordHidden ? Icons.visibility : Icons
                                  .visibility_off),
                          onPressed: () {
                            setState(() {
                              isConfirmPasswordHidden =
                              !isConfirmPasswordHidden;
                            });
                          })),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  validator: _genderValidator,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Gender",
                  ),
                  items: const [
                    DropdownMenuItem(child: Text("Male"), value: "Male"),
                    DropdownMenuItem(child: Text("Female"), value: "Female"),
                  ],
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Checkbox(
                    value: agreeToTermsAndConditions,
                    onChanged: (value) {
                      setState(() {
                        agreeToTermsAndConditions = value!;
                      });
                    },
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          agreeToTermsAndConditions =
                          !agreeToTermsAndConditions;
                        });
                      },
                      child: Text("I agree to the terms and conditions")),
                ]),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() &&
                        agreeToTermsAndConditions) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("All Fields are Valid"),
                        backgroundColor: Colors.green,
                      ));
                    }
                  },
                  child: Text("Register"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
    );
  }

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid email. Please enter a valid email";
    }
    return null;
  }

  String? _nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid name";
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid password";
    }
    return null;
  }

  String? _confirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid password";
    }
    return null;
  }

  String? _genderValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a valid gender";
    }
    return null;
  }
}
