import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/localization/app_localizations.dart';
import '../../../../core/widgets/buttons/custom_button.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final contentWidth = width > 420 ? 420.0 : width * 0.92;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: contentWidth),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo / Illustration
              Image.asset(
                Assets.aPlus,
                width: contentWidth * 0.6,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),

              // Title
              Text(
                AppLocalizations.of(context)?.translate('welcomeTitle') ?? "Let's find the \"A\" with us",
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),

              // Subtitle
              Text(
                AppLocalizations.of(context)?.translate('welcomeSubtitle') ?? 'Please Sign in to view personalized recommendations',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7)),
              ),
              const SizedBox(height: 18),

              // CTA
              SizedBox(
                width: double.infinity,
                height: 48,
                child: CustomButton(
                  label: AppLocalizations.of(context)?.translate('signUp') ?? 'Sign up',
                  onPressed: () {},
                  color: theme.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
