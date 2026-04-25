import 'package:flutter/material.dart';


Widget buildBackButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (Navigator.canPop(context)) Navigator.pop(context);
    },
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Icon(Icons.arrow_back_ios_new, size: 18, color: Color(0xFF333333)),
    ),
  );
}

Widget buildHeader({required String title, required String subtitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1A1A1A),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF888888),
          height: 1.5,
        ),
      ),
    ],
  );
}


Widget buildTextField({
  required TextEditingController controller,
  required String hint,
  required IconData prefixIcon,
  TextInputType keyboardType = TextInputType.text,
  bool obscureText = false,
  Widget? suffixIcon,
}) {
  return TextField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscureText,
    style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A)),
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFAAAAAA), fontSize: 14),
      prefixIcon: Icon(prefixIcon, color: Colors.grey, size: 20),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFF4CAF50), width: 1.5),
      ),
    ),
  );
}


Widget buildPrimaryButton({
  required String label,
  required VoidCallback onPressed,
}) {
  return SizedBox(
    width: double.infinity,
    height: 52,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4CAF50),
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
  );
}


Widget buildDividerWithText(String text) {
  return Row(
    children: [
      const Expanded(child: Divider(color: Color(0xFFDDDDDD), thickness: 1)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, color: Color(0xFFAAAAAA)),
        ),
      ),
      const Expanded(child: Divider(color: Color(0xFFDDDDDD), thickness: 1)),
    ],
  );
}


Widget buildSocialIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _socialButton(
        icon: Icons.g_mobiledata_rounded,
        label: 'Google',
        color: const Color(0xFFDB4437),
      ),
      const SizedBox(width: 16),
      _socialButton(
        icon: Icons.facebook,
        label: 'Facebook',
        color: const Color(0xFF1877F2),
      ),
      const SizedBox(width: 16),
      _socialButton(
        icon: Icons.apple,
        label: 'Apple',
        color: const Color(0xFF1A1A1A),
      ),
    ],
  );
}

Widget _socialButton({
  required IconData icon,
  required String label,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.06),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Icon(icon, color: color, size: 26),
  );
}
