// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool isPasswordShow=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('assets/images/mobile_login.png'),
                        )),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defultTextField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'E-mail address must not be empty';
                        }
                        return null;
                      },
                      onSubmit: (value) {
                        print(value);
                      },
                      onChange: (value) {
                        print(value);
                      },
                      type: TextInputType.emailAddress,
                      text: 'E-mail',
                      prefixIcon: Icons.email,
                    ),
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'E-mail address must not be empty';
                    //     }
                    //     return null;
                    //   },
                    //   controller: emailController,
                    //   keyboardType: TextInputType.emailAddress,
                    //   onFieldSubmitted: (value) => {print(value)},
                    //   onChanged: (value) => {print(value)},
                    //   decoration: InputDecoration(
                    //       label: Text('E-mail'),
                    //       prefixIcon: Icon(Icons.email),
                    //       border: OutlineInputBorder()),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                      defultTextField(
                      controller: passwordController,
                    validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                      onSubmit: (value) {
                        print(value);
                      },
                      onChange: (value) {
                        print(value);
                      },
                      type: TextInputType.emailAddress,
                      text: 'Password',
                      prefixIcon: Icons.lock,
                      obscureText: isPasswordShow,
                      suffixIcon:isPasswordShow? Icons.visibility:Icons.visibility_off,
                      suffoxPressed: (){
                        setState(() {
                          isPasswordShow=!isPasswordShow;
                        });
                      }
                    ),
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'Password must not be empty';
                    //     }
                    //     return null;
                    //   },
                    //   controller: passwordController,
                    //   obscureText: true,
                    //   decoration: InputDecoration(
                    //       label: Text('Password'),
                    //       border: OutlineInputBorder(),
                    //       prefixIcon: Icon(Icons.lock),
                    //       suffixIcon: Icon(Icons.visibility)),
                    // ),
                    SizedBox(
                      height: 15,
                    ),

                    defaultButton(
                        text: 'login',
                        function: () {
                          if (formkey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                        radius: 10.0),
                    // Container(
                    //     // color: Colors.blue,
                    //     width: double.infinity,
                    //     child: MaterialButton(
                    //       color: Colors.blue,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10)),
                    //       onPressed: () {
                    //         print(emailController.text);
                    //         print(passwordController.text);
                    //       },
                    //       child: Text(
                    //         'LOGIN',
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                            ))
                      ],
                    ),
                    Container(
                        // color: Colors.blue,
                        width: double.infinity,
                        child: MaterialButton(
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            print(emailController.text);
                            print(passwordController.text);
                          },
                          child: Text(
                            'Login with Google',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Container(
                        // color: Colors.blue,
                        width: double.infinity,
                        child: MaterialButton(
                          color: Color.fromARGB(255, 79, 170, 245),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            print(emailController.text);
                            print(passwordController.text);
                          },
                          child: Text(
                            'FaceBook',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
