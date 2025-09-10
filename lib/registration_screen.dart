import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '', _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Full Name",
                ),
                validator: (value) =>
                    value!.isEmpty ? "Name is required" : null,
                onSaved: (value) => _name = value!,
              ),
              SizedBox(height: 16),

              // Email
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Email is required";
                  if (!value.contains("@")) return "Invalid email";
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              SizedBox(height: 16),

              // Password
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                validator: (value) =>
                    value!.length < 6 ? "Password too short" : null,
                onSaved: (value) => _password = value!,
              ),
              SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("Name: $_name, Email: $_email, Password: $_password");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Registered Successfully")),
                    );
                  }
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
