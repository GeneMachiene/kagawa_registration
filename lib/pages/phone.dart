import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:kagawa_registration/pages/address.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

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
          )
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/Message.png',
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
                      'Enter your Phone No.',
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

                SizedBox(
                  width: 230  ,
                  child: TextFormField(
                    style: theme.textTheme.titleMedium,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    decoration: InputDecoration(
                      icon: Text(
                        '+63',
                        style: theme.textTheme.titleMedium,
                      ),
                      border: OutlineInputBorder(),

                      hintText: '1234567890',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Address()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Verify"),
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
