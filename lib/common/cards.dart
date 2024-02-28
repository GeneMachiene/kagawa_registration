import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CredCard extends StatelessWidget {
  CredCard({
    super.key,
    this.disabled = false,
    this.title = 'Title',
    this.issuer = 'Issuer',
    this.reference = 'Reference No.',
    DateTime? expiry,
  }) : expiry = expiry ?? DateTime.now();

  final bool disabled;
  final String title;
  final String issuer;
  final String reference;
  final DateTime expiry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: GoogleFonts.lexendDeca(
                            textStyle: theme.textTheme.titleMedium,
                            fontWeight: FontWeight.w600,
                            color: disabled ? theme.colorScheme.outline : theme.colorScheme.onSurface
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '$issuer • $reference',
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text('Expires in: ${expiry.month}/${expiry.day}/${expiry.year}'),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: disabled ? null : () {},
                  disabledColor: theme.colorScheme.outline,
                )
              ],
            ),
          )
      ),
    );
  }
}