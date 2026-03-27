# Flutter Multi-Platform Project - GitHub Copilot Rules

## Project Overview

This project is a **Flutter multi-platform application** that runs on:

- Web
- Android
- iOS (iPhone & iPad)
- Tablet Devices
- Desktop (Windows, Linux, macOS)

The project must use **a single Flutter codebase**.

Copilot must always generate:

- Clean code
- Reusable components
- Responsive layouts
- Multi-language support
- Theme-based colors
- Platform-compatible UI

---

# Core Development Rules

Copilot MUST:

✔ Use reusable widgets  
✔ Follow folder structure  
✔ Use custom components  
✔ Support multi-language  
✔ Use theme colors  
✔ Build responsive UI  
✔ Support all platforms  
✔ Maintain clean architecture  

Copilot MUST NEVER:

✖ Hardcode colors  
✖ Hardcode text  
✖ Duplicate UI  
✖ Use raw Flutter UI widgets directly  
✖ Break folder structure  
✖ Ignore responsiveness  

---

# Mandatory Folder Structure

Copilot MUST always follow this structure:

lib/

  core/

    theme/

      app_theme.dart  
      colors.dart  
      typography.dart  

    localization/

      app_localizations.dart  

      languages/

        en.json  
        hi.json  
        bn.json  

    widgets/

      inputs/

        custom_text_field.dart  

      dropdowns/

        custom_dropdown.dart  

      cards/

        custom_card.dart  

      buttons/

        custom_button.dart  

      layouts/

        responsive_layout.dart  

    utils/

  features/

    feature_name/

      presentation/

        screens/  
        widgets/  

      domain/

        models/  
        usecases/  

      data/

        repositories/  
        datasources/  

  shared/

    models/  
    services/  

  main.dart

Never create folders outside this structure.

---

# Custom Component Rules (Very Important)

All UI input components must be **custom reusable widgets**.

Never use raw Flutter input widgets inside screens.

Mandatory custom widgets:

- CustomTextField
- CustomDropdown
- CustomCard
- CustomButton
- ResponsiveLayout

Allowed usage:

CustomTextField()  
CustomDropdown()  
CustomCard()  
CustomButton()  

Not allowed:

TextField()  
DropdownButton()  
Card()  
ElevatedButton()

All UI must go through custom components.

---

# Multi-language Support (Mandatory)

The app must support multiple languages.

Never hardcode text.

All text must use localization.

Use:

AppLocalizations.of(context)!

Language files location:

core/localization/languages/

Example:

en.json  
hi.json  
bn.json  

Example usage:

Text(
  AppLocalizations.of(context)!.loginTitle
)

Never write:

Text("Login")

---

# Theme and Color Rules

All colors must come from theme files.

Never hardcode colors.

Use:

AppColors.primary  
AppColors.secondary  
AppColors.background  
AppColors.text  

Theme file location:

core/theme/

Files:

app_theme.dart  
colors.dart  
typography.dart  

Support:

✔ Light Theme  
✔ Dark Theme  
✔ Theme Switching  

Never write:

Color(0xFF000000)

Always write:

AppColors.primary

---

# Responsive Design Rules (Critical)

UI must support:

- Mobile (Android/iOS)
- Tablet (Android/iPad)
- Desktop
- Web

Use:

ResponsiveLayout(
  mobile: MobileView(),
  tablet: TabletView(),
  desktop: DesktopView(),
)

Never use fixed width layouts.

Use:

MediaQuery  
LayoutBuilder  
Flexible  
Expanded  

---

# Platform Support Rules

Application must support:

✔ Android  
✔ iOS (iPhone & iPad)  
✔ Web  
✔ Tablet  
✔ Desktop  

Avoid platform-specific logic unless required.

Use:

kIsWeb  
Platform.isAndroid  
Platform.isIOS  
Platform.isWindows  
Platform.isLinux  
Platform.isMacOS  

Only when necessary.

---

# iOS Compatibility Rules

Must support:

✔ iPhone  
✔ iPad  

Use:

SafeArea()

Ensure layouts work with:

- Notch
- Status bar
- iPad layouts

Avoid Android-only UI assumptions.

---

# State Management Rules

Use only ONE state management:

Preferred:

Riverpod

Alternative:

Bloc

Do NOT mix multiple systems.

---

# Feature Module Rules

Every feature must contain:

presentation/  
domain/  
data/  

Presentation includes:

- Screens
- UI widgets
- ViewModels

Domain includes:

- Models
- Business logic
- UseCases

Data includes:

- API
- Repository
- Data sources

---

# Widget Design Rules

Prefer:

StatelessWidget

Use:

StatefulWidget only when required.

Always:

✔ Create reusable widgets  
✔ Avoid inline UI duplication  
✔ Break large widgets into smaller components  

---

# Naming Convention Rules

Files:

snake_case

Classes:

PascalCase

Variables:

camelCase

Examples:

custom_text_field.dart  
login_screen.dart  
user_profile_card.dart  

---

# Performance Rules

Always:

✔ Use const constructors  
✔ Optimize rebuilds  
✔ Use lazy loading  
✔ Optimize scrolling lists  
✔ Use pagination  

Avoid unnecessary rebuilds.

---

# Theme Switching Rules

Support:

ThemeMode.light  
ThemeMode.dark  
ThemeMode.system  

Theme must be globally managed.

---

# Localization Expansion Rule

When adding new language:

Add new file:

core/localization/languages/

Example:

fr.json  
de.json  
es.json  

Do not modify UI logic.

---

# Layout Rules

Use SafeArea for all screens.

Use:

Scaffold  
CustomCard  
ResponsiveLayout  

Never build UI without layout structure.

---

# Code Reusability Rule

Every reusable UI must be created inside:

core/widgets/

Do NOT duplicate widget code.

---

# Example Standard UI Pattern

Correct:

CustomCard(
  child: Column(
    children: [
      CustomTextField(),
      CustomDropdown(),
      CustomButton(),
    ],
  ),
)

Wrong:

Card(
  child: TextField(),
)

---

# Error Handling Rule

All API calls must:

✔ Use try/catch  
✔ Return structured responses  
✔ Handle errors gracefully  

---

# Network Layer Rules

All APIs must go inside:

features/feature_name/data/

Use:

Repository Pattern

Do not call API directly from UI.

---

# Final Copilot Behavior Rules

Copilot must ALWAYS:

✔ Follow architecture  
✔ Use reusable widgets  
✔ Use localization  
✔ Use theme colors  
✔ Build responsive UI  
✔ Support Android  
✔ Support iOS  
✔ Support Web  
✔ Support Desktop  
✔ Follow folder structure  

Copilot must NEVER:

✖ Hardcode UI text  
✖ Hardcode colors  
✖ Use raw input widgets  
✖ Duplicate components  
✖ Break responsiveness  
✖ Ignore localization  
