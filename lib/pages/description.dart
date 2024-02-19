import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/pages/credentials.dart';

class Description extends StatelessWidget {
  Description({super.key});
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
                      'Tell us about yourself',
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

                FormBuilder(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width: double.infinity,
                      child: FormBuilderTextField(
                        name: 'description',
                        style: theme.textTheme.titleMedium,
                        maxLines: 10,
                        minLines: 10,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                          hintText: "Ex. I specialize in tackling "
                              "everything from leaky faucets to "
                              "intricate pipe installations. I take "
                              "pride in my meticulous attention to "
                              "detail and commitment to delivering "
                              "top-notch service to every client. "
                              "Whether it\'s a residential repair or a "
                              "commercial project, you can trust me to "
                              "arrive promptly, diagnose the issue "
                              "efficiently, and provide cost-effective "
                              "solutions tailored to your needs.",
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Credentials()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Skip for now"),
                            )
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Credentials()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Next"),
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
