import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/description.dart';
import 'package:kagawa_registration/data/ethnicities.dart';


class Info extends StatelessWidget {
  Info({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
      routeTo: Description(),
      title: 'Your basic info.',
      imageHeader: 'folder.png',

      child: Expanded(
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
    );
  }
}
