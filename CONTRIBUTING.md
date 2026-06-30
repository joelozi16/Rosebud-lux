# Contributing to MS Rosebud Lux

Thank you for your interest in contributing to MS Rosebud Lux! This document provides guidelines and instructions for contributing.

## Code of Conduct

Please be respectful and constructive in all interactions. We are committed to providing a welcoming and inclusive environment for all contributors.

## How to Contribute

### Reporting Bugs

1. Check if the bug has already been reported in GitHub Issues
2. If not, create a new issue with:
   - Clear, descriptive title
   - Detailed description of the issue
   - Steps to reproduce the bug
   - Expected vs actual behavior
   - Screenshots/videos if applicable
   - Your device/platform information
   - Flutter and Dart versions

### Suggesting Enhancements

1. Use GitHub Discussions or Issues for feature suggestions
2. Provide:
   - Clear description of the feature
   - Use cases and benefits
   - Potential implementation approach (optional)
   - Any relevant mockups or designs

### Pull Requests

1. Fork the repository
2. Create a feature branch from `develop`:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Make your changes following the coding standards below
4. Commit with clear, descriptive messages:
   ```bash
   git commit -m 'feat: Add new feature description'
   ```
5. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
6. Open a Pull Request against the `develop` branch

## Development Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/joelozi16/rosebud-lux.git
   cd rosebud-lux
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Set up your IDE:
   - VS Code: Install Flutter and Dart extensions
   - Android Studio: Install Flutter plugin
   - IntelliJ: Install Flutter and Dart plugins

4. Run the app:
   ```bash
   flutter run
   ```

## Coding Standards

### Dart/Flutter Style Guide

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Maximum line length: 80 characters (120 for URLs)
- Use 2-space indentation

### Code Organization

```dart
// 1. Imports
import 'package:flutter/material.dart';

// 2. Constants
const String appName = 'MS Rosebud Lux';

// 3. Classes/Functions
class MyWidget extends StatefulWidget {
  // Properties
  // Constructor
  // Override methods
}
```

### Naming Conventions

- Classes: `PascalCase` (e.g., `DashboardScreen`)
- Functions/variables: `camelCase` (e.g., `fetchProperties`)
- Constants: `camelCase` (e.g., `defaultPadding`)
- Files: `snake_case` (e.g., `dashboard_screen.dart`)
- Private members: prefix with `_` (e.g., `_privateMethod`)

### Widget Structure

```dart
class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  // State variables
  late final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Build UI
    );
  }
}
```

### Comments

- Use `///` for public API documentation
- Use `//` for inline comments
- Avoid obvious comments
- Keep comments up-to-date with code changes

```dart
/// Fetches properties from the API.
/// 
/// Returns a list of [Property] objects sorted by [Property.name].
Future<List<Property>> fetchProperties() async {
  // Implementation
}
```

## Commit Messages

Use clear, descriptive commit messages following this format:

```
<type>: <subject>

<body>

<footer>
```

Types:
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that don't affect code meaning (formatting, etc.)
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `chore`: Changes to build process, dependencies, etc.

Examples:
```
feat: Add guest management module
fix: Resolve booking status update issue
docs: Update API documentation
refactor: Simplify property filtering logic
```

## Testing

- Write unit tests for business logic
- Write widget tests for UI components
- Write integration tests for critical flows
- Aim for at least 80% code coverage

```bash
# Run tests
flutter test

# Run with coverage
flutter test --coverage
```

## Code Review Process

1. All pull requests require at least 1 approval
2. Ensure CI/CD checks pass
3. Resolve all conversations
4. Squash commits if requested
5. Merge with "Squash and merge" option

## Documentation

- Update README.md if adding new features
- Add inline documentation for complex functions
- Update CHANGELOG.md with significant changes
- Document API changes
- Add screenshots for UI changes

## Performance Guidelines

- Avoid unnecessary rebuilds using `const` widgets
- Use `ListView.builder` for large lists
- Implement lazy loading for data
- Optimize images before adding to assets
- Use `FutureBuilder` and `StreamBuilder` appropriately
- Profile apps using Flutter DevTools

## Accessibility

- Ensure semantic labels for all interactive widgets
- Test with screen readers
- Maintain sufficient color contrast
- Support text scaling
- Handle keyboard navigation

## Security

- Never commit secrets or credentials
- Use environment variables for sensitive data
- Follow authentication best practices
- Validate all user inputs
- Use HTTPS for API calls
- Encrypt sensitive data

## Questions?

- Check existing issues and discussions
- Ask in GitHub Discussions
- Email: support@msrosebudlux.com

Thank you for contributing! 🎉
