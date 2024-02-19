import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:kagawa_registration/landing/landing.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0.0,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/Folder.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Your basic info',
                      style: GoogleFonts.lexendDeca(
                          textStyle: theme.textTheme.headlineMedium,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          style: GoogleFonts.lexendDeca(
                              textStyle: theme.textTheme.headlineSmall,
                              fontWeight: FontWeight.w300
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'Become a '),
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


                Expanded(
                  child: Wrap(

                      runSpacing: 8,
                      spacing: 8,
                      children: [
                        SizedBox(width:100, height:100, child: Placeholder()),
                        SizedBox(width:100, height:100, child: Placeholder()),
                        SizedBox(width:100, height:100, child: Placeholder()),
                        SizedBox(width:100, height:100, child: Placeholder()),
                        SizedBox(
                          height:100,
                          width: 100,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                            style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))
                            ),
                          ),
                        ),
                      ]
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(50),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Landing()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Next"),
                        )
                    ),
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
