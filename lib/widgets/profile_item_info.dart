import 'package:flutter/material.dart';

class ProfileItemInfo extends StatelessWidget {
  const ProfileItemInfo({super.key, required this.icon, required this.lable,
   required this.value, required this.showEditIcon,
    required this.iconColor, this.onEditPressed});

  final IconData icon;
  final String lable;
  final String value;
  final bool showEditIcon;
  final VoidCallbackAction? onEditPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width/3,
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 8,),
              Text(
                lable,
                 style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                 ),
              )
            ],
          ),
        ),
        Expanded(
          child: Text(
            ': $value',
            style: const TextStyle(fontSize: 18),
          ),
        ),
        if (showEditIcon)
          InkWell(
            onTap: onEditPressed,
            child: const Icon(Icons.edit),
          ),
      ],
    );
  }
}
