import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Experiences extends StatelessWidget {
  Experiences({super.key});
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Add your work Experiences',
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
                          const Text('Add your work experience to showcase your skills'),
                          const SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Card(
                                child: Text('Sample Credential Card')
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(50),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => AddExp()),
                                        );
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Icon(Icons.add),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          )
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
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Placeholder()),
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
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Placeholder()),
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

class AddExp extends StatelessWidget {
  AddExp({super.key});
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
                Expanded(
                  child: FormBuilder(
                    key: _formKey,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: FormBuilderTextField(
                                    name: 'job_title',
                                    style: theme.textTheme.titleMedium,
                                    decoration: const InputDecoration(
                                      labelText: 'Job Title',
                                      hintText: 'Eg. Plumber',
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
                                    name: 'organization_name',
                                    style: theme.textTheme.titleMedium,
                                    decoration: const InputDecoration(
                                      labelText: 'Company/Organization',
                                      hintText: 'Eg. Eagle Plumbing',
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
                                    name: 'location',
                                    style: theme.textTheme.titleMedium,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Company Address',
                                      hintText: 'Eg. "7 Mercury Bldg. Rodriguez Jr. Bagumbayan',
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
                                    name: 'date_start',
                                    decoration: const InputDecoration(
                                      labelText: 'Starting Date',
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
                                    name: 'end_date',
                                    decoration: const InputDecoration(
                                      labelText: 'End Date',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Text('Choose skills you have that align with your work experience.'),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: FormBuilderFilterChip(
                                  name: 'skills',
                                  options: const [
                                    FormBuilderChipOption(value: 'tite'),
                                    FormBuilderChipOption(value: 'tite2'),
                                    FormBuilderChipOption(value: 'tite3'),
                                    FormBuilderChipOption(value: 'tite4'),
                                    FormBuilderChipOption(value: 'tite5'),
                                    FormBuilderChipOption(value: 'tite6'),
                                    FormBuilderChipOption(value: 'tite1'),
                                    FormBuilderChipOption(value: 'tite22'),
                                    FormBuilderChipOption(value: 'tite33'),
                                    FormBuilderChipOption(value: 'tite44'),
                                    FormBuilderChipOption(value: 'tite55'),
                                    FormBuilderChipOption(value: 'tite66'),
                                  ],
                                  showCheckmark: false,
                                  runSpacing: 10,
                                  spacing: 10,
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
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
