import 'package:flutter/material.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/phone.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
      routeTo: const Phone(),
      imageHeader: 'hero.png',
      title: 'Register as a KaGawa!',
      appbar: false,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              "Welcome to Kagawa registration! By registering, you'll create your "
                  "personalized Gawa profile. Your info helps tailor our services. "
                  "Note: Your data contributes to the partial fulfillment of our "
                  "thesis. It's handled confidentially and ethically. Let's craft "
                  "your profile and advance together!",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      )
    );
  }
}