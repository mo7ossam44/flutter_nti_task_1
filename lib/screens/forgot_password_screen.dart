import 'package:flutter/material.dart';
import 'auth_helpers.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              buildBackButton(context),

              const SizedBox(height: 32),

              // Title & subtitle
              buildHeader(
                title: 'Forgot Password',
                subtitle:
                    'Enter your email address to receive a reset link and\nregain access to your account.',
              ),

              const SizedBox(height: 36),

              // Email field
              buildTextField(
                controller: _emailController,
                hint: 'Email address',
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 28),

              // Continue button
              buildPrimaryButton(
                label: 'Continue',
                onPressed: () {
                  // UI only
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
