import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:toko_kita/features/auth/bloc/auth_bloc.dart';
import 'package:toko_kita/utils/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/dimensions.dart';
import '../../utils/theme.dart';
import '../../widgets/common_button.dart';
import '../../widgets/textfield_auth_custom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final List<Map<String, dynamic>> fields = [
      {
        'label': 'Email',
        'hint': 'Enter your email',
        'controller': emailController,
      },
      {
        'label': 'Password',
        'hint': 'Enter your password',
        'controller': passwordController,
      },
    ];
    return Scaffold(
      backgroundColor: baseColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeLarge,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Dimensions.marginSizeLarge),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Welcome \nBack', style: txtHeadingTitleAuth),
                    Image.asset(logoTokoKita, height: 100, width: 100),
                  ],
                ),
                const SizedBox(height: Dimensions.marginSizeSuperExtraLarge),
                for (var field in fields) ...[
                  Text(
                    field['label'],
                    style: txtSecondaryTitle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(height: Dimensions.marginSizeSmall),
                  CustomTextFieldGeneral(
                    key: UniqueKey(),
                    title: field['hint'],
                    controller: field['controller'],
                    keyboardType:
                        field['label'] == 'Email'
                            ? TextInputType.emailAddress
                            : TextInputType.text,
                  ),
                  const SizedBox(height: Dimensions.marginSizeSmall),
                ],

                const SizedBox(height: Dimensions.marginSizeSmall),

                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            message!,
                            style: txtSecondaryTitle.copyWith(
                                fontWeight: FontWeight.w500, color: baseColor),
                          ),
                          backgroundColor: redMedium,
                        ));
                        context.read<AuthBloc>().emit(const AuthState.initial());
                      },
                      success: (model) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            model!,
                            style: txtSecondaryTitle.copyWith(
                                fontWeight: FontWeight.w500, color: baseColor),
                          ),
                          backgroundColor: greenMedium,
                        ));
                        context.goNamed('navbar', pathParameters: {'pageIndex': '0'});
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: (){
                        return CommonButton(
                          text: 'Login',
                          onPressed: () {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                  'Please fill all fields',
                                  style: txtSecondaryTitle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: baseColor),
                                ),
                                backgroundColor: redMedium,
                              ));
                            } else {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.loginWithEmail(email: emailController.text, password: passwordController.text));
                            }
                          },
                          borderRadius: 10,
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          fontSize: 18,
                        );
                      },
                      loading: () {
                        return CommonButton(
                          text: 'Login',
                          onPressed: () {},
                          borderRadius: 10,
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          fontSize: 18,
                          widget: LoadingAnimationWidget.staggeredDotsWave(
                            color: baseColor,
                            size: 40,
                          ),
                        );
                      },

                    );

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
