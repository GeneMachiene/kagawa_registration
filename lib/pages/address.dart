import 'package:flutter/material.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/info.dart';

class Address extends StatelessWidget {
  Address({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
      routeTo: Info(),
      title: 'Where do you live?',
      imageHeader: 'location.png',

      child:
      Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
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
              padding: const EdgeInsets.all(15),
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
              padding: const EdgeInsets.all(15),
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
    );
  }
}
