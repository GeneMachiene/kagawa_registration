import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kagawa_registration/pages/phone.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // appBar: AppBar(
      //     leading: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       onPressed: () {
      //         SnackBar(content: Text('Back Pressed'));
      //       },
      //     )
      // ),
      body: Column(
        children: [
          Image.asset(
            'assets/hero.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.lexendDeca(
                              textStyle: theme.textTheme.headlineMedium,
                              fontWeight: FontWeight.w700
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'Become a '),
                            TextSpan(
                              text: '#KaGawa',
                              style: GoogleFonts.lexendDeca(
                                  textStyle: theme.textTheme.headlineMedium,
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                          ]
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.lexendDeca(
                              textStyle: theme.textTheme.headlineSmall,
                              fontWeight: FontWeight.w300
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'maging '),
                            TextSpan(
                              text: '#KaGawa',
                              style: GoogleFonts.lexendDeca(
                                textStyle: theme.textTheme.headlineSmall,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
                Carousel(theme: theme),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Phone()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("English"),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                            onPressed: () {

                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Filipino"),
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Text(
        "Welcome to Kagawa registration! By registering, you'll create your personalized Gawa profile. Your info helps tailor our services. Note: Your data contributes to the partial fulfillment of our thesis. It's handled confidentially and ethically. Let's craft your profile and advance together!",
        textAlign: TextAlign.center,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}