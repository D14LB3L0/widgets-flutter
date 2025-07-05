import 'package:flutter/material.dart';

import '../widgets/custom_imput_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Diego',
      'last_name': 'Bermudez',
      'email': 'diegobdev2024@gmail.com',
      'password': '1234',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(labelText: 'Name', hintText: 'User name', formPropery: 'first_name', formValues: formValues,),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Last name',
                hintText: 'User last name', formPropery: 'last_name', formValues: formValues,
              ),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Email',
                hintText: 'Email',
                keyBoardType: TextInputType.emailAddress, formPropery: 'email', formValues: formValues,
              ),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Password',
                hintText: 'Password',
                keyBoardType: TextInputType.emailAddress,
                obscureText: true, formPropery: 'password', formValues: formValues,
              ),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    return;
                  }
                  print(formValues);
                },
                child: SizedBox(
                  width: double.infinity,
                  child: const Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
