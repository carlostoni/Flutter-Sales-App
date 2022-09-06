import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nome app // App name
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 60,
                    ),
                    children: [
                      TextSpan(
                        text: 'Ven',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'das',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                //Subtitulo //Subtitle
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Estoque'),
                        FadeAnimatedText('Compras'),
                        FadeAnimatedText('Aquisição'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Formulario inicio
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Email
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                //Entrar
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                //Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                //Dividir a tela
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.blueGrey,
                          thickness: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.blueGrey,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                //Botao para novo usuario
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      side: const BorderSide(
                        width: 1,
                        color: Colors.blueGrey,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
