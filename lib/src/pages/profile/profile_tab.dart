import 'package:flutter/material.dart';
import 'package:vendas/src/pages/common_widgets/custom_text_field.dart';
import 'package:vendas/src/config/app_data.dart' as appData;
class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

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
            icon: Icons.email,
            label: 'Email',
          ),
          //nome name
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
          ),
          //celular cell
          CustomTextField(
            icon: Icons.phone,
            label: 'Celular',
          ),
          //cpf social social security
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //atualizar senha update password
        ],
      ),
    );
  }
}
