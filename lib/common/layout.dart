import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
    this.title = 'put title here',
    this.imageHeader,
    this.skippable = false,
    this.appbar = true,
    required this.child,
    required this.routeTo,
  });

  final String title;
  final String? imageHeader;
  final Widget child;
  final Widget routeTo;
  final bool skippable;
  final bool appbar;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: appbar ? AppBar(scrolledUnderElevation: 0): null,
      body: Column(
        children: [
          if(imageHeader != null)
            _buildImage(),
          _header(theme),

          Expanded(
              child: child
          ),

          _buttons(context)
        ],
      ),
    );
  }

  Padding _buttons(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
          child: Column(
            children: [
              if(skippable)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => routeTo,
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ));
                      },
                      child: const Text('Skip for now')
                  ),
                ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => routeTo,
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Next"),
                    )
                ),
              ),
            ],
          ),
        );
  }

  Column _header(ThemeData theme) {
    return Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
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
      );
  }

  Widget _buildImage() {
    return Image.asset(
          'assets/$imageHeader',
          width: double.infinity,
          height: 230,
          fit: BoxFit.fitWidth,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            if (wasSynchronouslyLoaded) {
              return child;
            }
            return AnimatedOpacity(
              opacity: frame == null ? 0 : 1,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              child: child,
            );
          }
    );
  }
}

class AddLayout extends StatelessWidget {
  const AddLayout({
    super.key,
    this.title = 'put title here',
    this.imageHeader,
    required this.child,
  });

  final String title;
  final String? imageHeader;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
          ],
      ),
      body: Column(
        children: [
          if(imageHeader != null)
            _buildImage(),

          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.lexendDeca(
              textStyle: theme.textTheme.headlineMedium,
              fontWeight: FontWeight.w700
            ),
          ),

          Expanded(
              child: child
          ),

          _buttons(context)
        ],
      ),
    );
  }

  Padding _buttons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
      child: Column(
        children: [

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
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
    );
  }

  Widget _buildImage() {
    return Image.asset(
        'assets/$imageHeader',
        width: double.infinity,
        height: 190,
        fit: BoxFit.fitWidth,
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            child: child,
          );
        }
    );
  }
}