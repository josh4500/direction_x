import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFF8),
          image: DecorationImage(
            image: AssetImage('asset/images/chat_background.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              flex: 5,
              child: GridView(
                padding: const EdgeInsets.all(44),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                children: const [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF0A0057),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF703EFE),
                      shape: BoxShape.circle,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF703EFE),
                      shape: BoxShape.circle,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF0A0057),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding:
                    const EdgeInsets.all(24) + const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Enjoy the experience of getting directions at your fingertips.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Connecting FUL Student in FULOKOJA campus for free.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: onTap,
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.resolveWith(
                          (states) => const Size(double.infinity, 60),
                        ),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFF703EFE)),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF0DAFF),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
