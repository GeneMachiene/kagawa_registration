import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:kagawa_registration/pages/info.dart';

class Address extends StatelessWidget {
  Address({super.key});
  final _formKey = GlobalKey<FormState>();

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
            'assets/Location.png',
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
                      'Where do you live?',
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

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            style: theme.textTheme.titleMedium,
                            decoration: const InputDecoration(
                              labelText: 'Street',
                              border: OutlineInputBorder(),
                              hintText: 'Del Pilar St.',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            style: theme.textTheme.titleMedium,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'House No.',
                              hintText: 'House no. 7',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            style: theme.textTheme.titleMedium,
                            decoration: const InputDecoration(
                              labelText: 'Subdivision',
                              border: OutlineInputBorder(),
                              hintText: 'Filinvest Subdv.',
                            ),
                          ),
                        ),
                      ),
                    ],
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
                            MaterialPageRoute(builder: (context) => Info()),
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
