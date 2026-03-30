import 'dart:math' as math;

import 'package:edu_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:edu_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
// Using PNG image asset for logo

import '../../../../core/constants/assets.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/localization/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Limit content width for larger screens but keep responsive on mobile
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
                    const SizedBox(height: 16),

                    // Logo
                    SizedBox(
                      height: logoHeight,
                      child: Image.asset(
                        Assets.aPlus,
                        width: contentWidth * 0.8,
                        height: logoHeight,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Title
                    Text(
                      AppLocalizations.of(context)?.translate('welcomeTitle') ?? "Let's find the \"A\" with us",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Subtitle
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        AppLocalizations.of(context)?.translate('welcomeSubtitle') ?? 'Please Sign in to view personalized recommendations',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

 //                   Buttons
                    CustomButton(
                      label: AppLocalizations.of(context)?.translate('signUp') ?? 'Sign up',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      height: 54,
                      width: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    const SizedBox(height: 16),

                    CustomButton(
                      label: AppLocalizations.of(context)?.translate('skip') ?? 'Skip',
                      onPressed: () {
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      color: Colors.transparent,
                      textColor: Theme.of(context).primaryColor,
                      height: 54,
                      width: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
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


