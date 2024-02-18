import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddCred extends StatelessWidget {
  AddCred({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          )
        ],
        scrolledUnderElevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Add some Credentials',
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'credential_issuing_reference',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  labelText: 'Reference No.',
                                  hintText: 'ASC564SE',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'credential_name',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Title of Certification',
                                  hintText: 'Pipe Fitting NC II',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'issuer',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  labelText: 'Name of Organization',
                                  hintText: 'Tesda Manila',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderDateTimePicker(
                                initialDatePickerMode: DatePickerMode.year,
                                inputType: InputType.date,
                                initialDate: DateTime.now(),
                                name: 'date_issued',
                                decoration: const InputDecoration(
                                  labelText: 'Date Issued',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderDateTimePicker(
                                initialDatePickerMode: DatePickerMode.year,
                                inputType: InputType.date,
                                initialDate: DateTime.now(),
                                name: 'expiry',
                                decoration: const InputDecoration(
                                  labelText: 'Expiration',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Add"),
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
