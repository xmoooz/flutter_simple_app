import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'User Name',
              labelText: 'Enter your user name',
              icon: Icon(Icons.person),
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'User Name is required';
              }
            },
          ),
          const SizedBox(height: 18.0),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'you@example.com',
                labelText: 'E-mail Address',
                icon: Icon(Icons.email)),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'E-mail Address is required';
              }
            },
          ),
          const SizedBox(height: 18.0),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Password',
                labelText: 'Enter your password',
                icon: Icon(Icons.lock)
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Password is required';
              }
            },
          ),
          const SizedBox(height: 18.0),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Confirm Password',
                labelText: 'Enter your confirm password',
                icon: Icon(Icons.lock)
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Confirm Password is required';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTOS,
                  onChanged: _setAgreedToTOS,
                ),
                GestureDetector(
                  onTap: () => _setAgreedToTOS(!_agreedToTOS),
                  child: const Text(
                    'I agree to the Terms of Services and Privacy Policy',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable() ? _submit : null,
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    _formKey.currentState.validate();
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}