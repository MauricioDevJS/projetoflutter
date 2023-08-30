import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:prognosticare/src/config/custom_colors.dart';
import 'package:prognosticare/src/pages/components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '## # #### ####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text("Cadastro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),

                    //formulario
                    Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 40,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(45)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //Nome
                            CustomTextField(
                              icon: Icons.person,
                              label: 'Nome',
                            ),
                            //E-mail
                            CustomTextField(
                              icon: Icons.email,
                              label: 'E-mail',
                              textInputType: TextInputType.emailAddress,
                            ),
                            //CPF
                            CustomTextField(
                              icon: Icons.file_copy,
                              label: 'CPF',
                              inputFormatters: [cpfFormatter],
                              textInputType: TextInputType.number,
                            ),

                            //TELEFONE
                            CustomTextField(
                              icon: Icons.phone,
                              label: 'Telefone',
                              inputFormatters: [phoneFormatter],
                            ),
                            //Data de nascimento
                            const CustomTextField(
                              icon: Icons.calendar_today,
                              label: 'Data de Nascimento',
                            ),
                            //Senha
                            const CustomTextField(
                              icon: Icons.lock,
                              label: 'Senha',
                              isSecret: true,
                            ),
                            //Confirmar senha
                            const CustomTextField(
                              icon: Icons.lock,
                              label: 'Confirmar senha',
                              isSecret: true,
                              
                            ),

                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Cadastrar',
                                    style: TextStyle(fontSize: 18)),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
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
