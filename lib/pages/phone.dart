import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/address.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
        title: 'Enter your Phone No.',
        imageHeader: 'message.png',
        skippable: false,
        routeTo: Address(),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 230  ,
              child: FormBuilderTextField(
                name: 'phone_number',
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
                  border: const OutlineInputBorder(),

                  hintText: '1234567890',
                ),
              ),
            ),
          ],
        ),
    );
  }
}
