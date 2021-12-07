import 'package:flutter/material.dart';

import 'gen/assets.gen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTap = 0;
  static const int signupTap = 1;
  int selectedTapIndex = loginTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    final tapTextStyle = TextStyle(
        color: themeData.colorScheme.onPrimary,
        fontSize: 18,
        fontWeight: FontWeight.bold);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: Assets.img.icons.logo.svg(width: 120),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32),
                    ),
                    color: themeData.colorScheme.primary),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTapIndex = loginTap;
                              });
                            },
                            child: Text(
                              'Login'.toUpperCase(),
                              style: tapTextStyle.apply(
                                  color: selectedTapIndex == loginTap
                                      ? Colors.white
                                      : Colors.white54),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTapIndex = signupTap;
                              });
                            },
                            child: Text(
                              'SignUp'.toUpperCase(),
                              style: tapTextStyle.apply(
                                  color: selectedTapIndex == signupTap
                                      ? Colors.white
                                      : Colors.white54),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32)),
                            color: themeData.colorScheme.surface),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
                            child: selectedTapIndex == loginTap
                                ? _Login(themeData: themeData)
                                : _SignUp(themeData: themeData),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Sign in with your account',
          style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Username')),
        ),
        const PasswordTextField(),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Login'.toUpperCase()),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 60),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forgot your password?'),
            const SizedBox(
              width: 8,
            ),
            TextButton(onPressed: () {}, child: const Text('Reset here')),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            'OR SIGN IN WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.google.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.facebook.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(width: 36, height: 36),
          ],
        )
      ],
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to blog club',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'please enter your information',
          style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(label: Text('FullName')),
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Username')),
        ),
        const PasswordTextField(),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Sign up'.toUpperCase()),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 60),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
        ),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            'OR SIGN Up WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.google.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.facebook.image(width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(width: 36, height: 36),
          ],
        )
      ],
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
          label: const Text('Password'),
          suffix: InkWell(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Text(
              obscureText ? 'Show' : 'Hide',
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.primary),
            ),
          )),
    );
  }
}
