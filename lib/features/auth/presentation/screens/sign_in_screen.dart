import 'package:edu_app/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/inputs/custom_text_field.dart';
import '../../../../core/localization/app_localizations.dart';
import 'dart:math' as math;

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

 @override
Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;

  // Adjust content width based on platform
   final contentWidth = math.min(size.width * 0.92, 420.0);
    final logoHeight = contentWidth * 0.6;

  return Scaffold(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: contentWidth),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sign Up Image

                      SizedBox(
                      height: logoHeight,
                      child: Image.asset(
                        Assets.signInImage,
                        width: contentWidth * 0.8,
                        height: logoHeight,
                        fit: BoxFit.contain,
                      ),
                    ),
                
                  const SizedBox(height: 24),

                  // Email Input Field
                  CustomTextField(
                    hint: AppLocalizations.of(context)?.translate('emailAddress') ?? 'Email address',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 16),

                  // Password Input Field
                  CustomTextField(
                    hint: AppLocalizations.of(context)?.translate('password') ?? 'Password',
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: Icons.visibility_outlined,
                  ),
                  const SizedBox(height: 24),

                  // Sign In Button
                  CustomButton(
                    label: AppLocalizations.of(context)?.translate('signIn') ?? 'Sign in',
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    height: 48,
                    width: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Sign Up Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)?.translate('noAccount') ?? "Don't have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextButton(
                        onPressed: () {
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashboardScreen(),
                          ),
                        );
                        },
                        child: Text(
                          AppLocalizations.of(context)?.translate('signUp') ?? 'Sign up',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
}