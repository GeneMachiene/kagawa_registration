import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/common/cards.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/experiences_skills.dart';

class Credentials extends StatelessWidget {
  const Credentials({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
      routeTo: Experiences(),
      title:'Add some Credentials.',
      skippable: true,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(true)
            Column(
              children: [
                const Text('Add some Credentials to increase trust.'),
                CredCard(disabled: true),
              ],
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddCred()),
                    );
                  },
                  child: const Icon(Icons.add)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddCred extends StatelessWidget {
  AddCred({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AddLayout(
      title: 'Input Credential Info.',
      imageHeader: 'new item.png',
      child: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ),
      ),
    );
  }
}

