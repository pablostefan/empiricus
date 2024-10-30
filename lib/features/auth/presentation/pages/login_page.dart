import 'package:empiricus/features/auth/presentation/controllers/auth_controller.dart';
import 'package:empiricus/features/auth/presentation/widgets/auth_text_field_widget.dart';
import 'package:empiricus/l10n/translate.dart';
import 'package:empiricus/shared/assets/app_image.dart';
import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:empiricus/shared/theme/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController _controller = GetIt.I.get<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.monoBlack.withOpacity(AppOpacity.oneEighth),
        title: Text(Translate.strings.login).bodyLargeSemiBold().color(AppColors.monoWhite),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.xxxs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2),
            Image.asset(AppImages.logo_empiricus.path, fit: BoxFit.fitWidth),
            const Spacer(flex: 2),
            Text(Translate.strings.hello).bodyLargeRegular(),
            const SizedBox(height: AppDimens.micro),
            Text(Translate.strings.accessAccount).bodyLargeSemiBold(),
            const SizedBox(height: AppDimens.sm),
            AuthTextFieldWidget(labelText: Translate.strings.email, controller: _controller.emailController),
            const SizedBox(height: AppDimens.micro),
            ValueListenableBuilder(
                valueListenable: _controller.obscurePassword,
                builder: (_, value, __) {
                  return AuthTextFieldWidget(
                      suffixIcon: IconButton(
                          onPressed: _controller.changeObscurePassword,
                          icon: Icon(value ? Icons.visibility_off : Icons.visibility)),
                      obscureText: value,
                      labelText: Translate.strings.password,
                      controller: _controller.passwordController);
                }),
            const Spacer(flex: 3),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        right: false,
        left: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.xxxs, vertical: AppDimens.xxxs),
          child: ElevatedButton(
            onPressed: () => _controller.login(context),
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.infinity, AppDimens.md),
                backgroundColor: AppColors.monoBlack.withOpacity(AppOpacity.oneEighth),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            child: Text(Translate.strings.login).bodyMediumSemiBold().color(AppColors.monoWhite),
          ),
        ),
      ),
    );
  }
}
