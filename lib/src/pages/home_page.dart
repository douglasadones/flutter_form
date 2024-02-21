import 'package:flutter/material.dart';
import 'package:form_flutter/src/styles/form_styles.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<FormState> _formControl = GlobalKey();
  // final TextEditingController _name_editingController = TextEditingController();
  final ValueNotifier<bool> _showPassword = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formControl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  // controller: _name_editingController,
                  decoration: FormStyles.textFormsStyle(
                      labelText: "Nome", preFixIcon: Icons.person_outline),
                  validator: (valueText) {
                    if (valueText!.isEmpty) {
                      return "O camo de nome não pode estar vazio";
                    }

                    if (valueText.length < 5) {
                      return "Nome muito curto";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                ValueListenableBuilder(
                    valueListenable: _showPassword,
                    builder: (_, value, __) {
                      return TextFormField(
                        // controller: _name_editingController,
                        obscureText: _showPassword.value,
                        decoration: FormStyles.textFormsStyle(
                          labelText: "senha",
                          preFixIcon: Icons.lock_outline,
                          suffix: IconButton(
                            onPressed: () {
                              _showPassword.value = !_showPassword.value;
                            },
                            icon: const Icon(Icons.remove_red_eye),
                          ),
                        ),
                        validator: (valueText) {
                          if (valueText!.isEmpty) {
                            return "O camo de nome não pode estar vazio";
                          }

                          if (valueText.length < 5) {
                            return "Nome muito curto";
                          }
                          return null;
                        },
                      );
                    }),
                const SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: _name_editingController,
                  decoration: FormStyles.textFormsStyle(
                      labelText: "Email", preFixIcon: Icons.email_outlined),
                  validator: (valueText) {
                    if (valueText!.isEmpty) {
                      return "O campo de nome não pode estar vazio";
                    }

                    if (valueText.length < 5) {
                      return "Nome muito curto";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30.0),
                FilledButton(
                  child: const Text("Salvar"),
                  onPressed: () {
                    if (_formControl.currentState!.validate()) {
                      // ignore: avoid_print
                      print("Formulário Validado!");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
