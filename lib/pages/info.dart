import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/pages/description.dart';

List<String> philippineEthnicities = [
  'Tagalog',
  'Cebuano',
  'Ilocano',
  'Bisaya',
  'Kapampangan',
  'Bicolano',
  'Waray',
  'Pangasinense',
  'Hiligaynon (Ilonggo)',
  'Tausug',
  'Maguindanaoan',
  'Maranao',
  'Kalinga',
  'Ivatan',
  'Manobo',
  'Ifugao',
  'Aeta',
  'Igorot',
  'Lumad',
  'Subanen',
  'Yakan',
  'Bajau',
  'Samal',
  'Agta',
  'Mangyan',
  'Ibaloi',
  'Ati',
  'Badjao',
  'Hanunoo',
  'Jama Mapun'
];

class Info extends StatelessWidget {
  Info({super.key});
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
                  child: FormBuilder(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderDateTimePicker(
                                initialDatePickerMode: DatePickerMode.year,
                                inputType: InputType.date,
                                initialDate: DateTime(2006),
                                name: 'birthdate',
                                decoration: const InputDecoration(
                                  labelText: 'Birth Date',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderDropdown(
                                name: 'gender',
                                decoration: const InputDecoration(
                                  labelText: 'Gender',
                                  border: OutlineInputBorder(),
                                ),
                                items: const [
                                  DropdownMenuItem(value: 'Male',child: Text('Male')),
                                  DropdownMenuItem(value: 'Female',child: Text('Female')),
                                  DropdownMenuItem(value: 'Other',child: Text('Other')),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderDropdown(
                                name: 'ethnicity',
                                decoration: const InputDecoration(
                                  labelText: 'Ethnicity',
                                  border: OutlineInputBorder(),
                                ),
                                items: [
                                  for(var ethnicity in philippineEthnicities)
                                    DropdownMenuItem(value: ethnicity, child: Text(ethnicity))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'first_name',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  labelText: 'First Name',
                                  hintText: 'Juan',
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
                                name: 'middle_name',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Middle Name',
                                  hintText: 'Bonifacio',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: SizedBox(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'last_name',
                                style: theme.textTheme.titleMedium,
                                decoration: const InputDecoration(
                                  labelText: 'Last Name',
                                  border: OutlineInputBorder(),
                                  hintText: 'Dela Cruz',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                            MaterialPageRoute(builder: (context) => Description()),
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
