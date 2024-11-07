import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  //TODO: 1. Deklarasi Variable
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      //TODO: 3. Pasang Body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
              //TODO: 4. Atur MainAxisAlignment dan CrossAxisAlignment
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO: 6. TextFormFIeld Nama
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                //TODO: 5. Pasang TextFormField Nama Pengguna
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: "Nama Pengguna",
                    border: OutlineInputBorder(),
                  ),
                ),
                //TODO: 6. Pasang TextFormField Kata Sandi
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(_obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                ),
                //TODO: 7. Pasang ElevatedButton Sign Up
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Sign Up')),
                //TODO: 8. Pasang TextButton Sign Up
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Sudah Punya Akun? Daftar disini!')),
                RichText(
                    text: TextSpan(
                  text: 'Sudah Punya Akun?',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                  recognizer: TapGestureReconizer(),
                ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
