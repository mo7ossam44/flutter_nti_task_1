import 'package:flutter/material.dart';
import 'auth_helpers.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                title: 'Create Account',
                subtitle:
                    'Create a new account to get started and enjoy\nseamless access to our features.',
              ),

              const SizedBox(height: 36),

              // Name field
              buildTextField(
                controller: _nameController,
                hint: 'Name',
                prefixIcon: Icons.person_outline,
                keyboardType: TextInputType.name,
              ),

              const SizedBox(height: 16),

              // Email field
              buildTextField(
                controller: _emailController,
                hint: 'Email address',
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 16),

              // Password field
              buildTextField(
                controller: _passwordController,
                hint: 'Password',
                prefixIcon: Icons.lock_outline,
                obscureText: _obscurePassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() => _obscurePassword = !_obscurePassword);
                  },
                ),
              ),

              const SizedBox(height: 16),

              // Confirm Password field
              buildTextField(
                controller: _confirmPasswordController,
                hint: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
                obscureText: _obscureConfirmPassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmPassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(
                        () => _obscureConfirmPassword = !_obscureConfirmPassword);
                  },
                ),
              ),

              const SizedBox(height: 28),

              // Create Account button
              buildPrimaryButton(
                label: 'Create Account',
                onPressed: () {
                  // UI only
                },
              ),

              const SizedBox(height: 20),

              // Sign in link
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(
                        color: Color(0xFF888888),
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign In here',
                          style: TextStyle(
                            color: Color(0xFF4CAF50),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              buildDividerWithText('Or Continue With Account'),

              const SizedBox(height: 24),

              buildSocialIcons(),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
