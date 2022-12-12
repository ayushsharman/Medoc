import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {
  final String heading;
  final String subheading;
  final IconData icon;
  final Color color;
  final String onpressed;

  const iconButton({
    super.key,
    required this.heading,
    required this.subheading,
    required this.icon,
    required this.color,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, onpressed);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.grey,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0)),
          fixedSize: const Size(115, 65),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              heading,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subheading,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
