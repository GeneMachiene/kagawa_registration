import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kagawa_registration/common/layout.dart';
import 'package:kagawa_registration/pages/credentials.dart';

class Description extends StatelessWidget {
  Description({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MainLayout(
      routeTo: Credentials(),
      title: 'Tell us about yourself.',
      imageHeader: 'feedback.png',
      skippable: true,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
        ],
      ),
    );
  }
}
