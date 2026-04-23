import 'package:flutter/material.dart';
import '../theme.dart';

class AvatarWidget extends StatelessWidget {
  final String iniciais;
  final double size;
  final Color? color;

  const AvatarWidget({
    super.key,
    required this.iniciais,
    this.size = 40,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          iniciais,
          style: TextStyle(
            color: Colors.white,
            fontSize: size * 0.35,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
