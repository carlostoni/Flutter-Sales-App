import 'package:flutter/material.dart';
import 'package:vendas/src/pages/common_widgets/custom_text_field.dart';
import 'package:vendas/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //email
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
          ),
          //nome name
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),
          //celular cell
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),
          //cpf social social security
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //atualizar senha update password
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text('Atualizar Senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Atualizar Senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock,
                      label: 'Senha Atual',
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outlined,
                      label: 'Nova Senha',
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outlined,
                      label: 'Confirmar Nova Senha',
                    ),
                    //botao de troca de senha password change button
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Atualizar'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
