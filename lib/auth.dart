import 'package:flutter/material.dart';

import 'gen/assets.gen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(bottom: 16, top: 16),
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
                          Text(
                            'Login'.toUpperCase(),
                            style: tapTextStyle,
                          ),
                          Text(
                            'SignUp'.toUpperCase(),
                            style: tapTextStyle,
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
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
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
                                  style: themeData.textTheme.subtitle1!
                                      .apply(fontSizeFactor: 0.8),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                TextField(
                                  decoration:
                                      InputDecoration(label: Text('Username')),
                                ),
                                TextField(
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                      label: Text('Password'),
                                      suffixIcon: TextButton(
                                        style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                                        onPressed: () {},
                                        child: Text('Show'),
                                      )),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Login'.toUpperCase()),
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                        Size(MediaQuery.of(context).size.width,
                                            60),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Forgot your password?'),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Reset here')),
                                  ],
                                ),
                                Center(
                                  child: Text('OR SIGN IN WITH'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Assets.img.icons.google
                                        .image(width: 36, height: 36),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Assets.img.icons.facebook
                                        .image(width: 36, height: 36),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Assets.img.icons.twitter
                                        .image(width: 36, height: 36),
                                  ],
                                )
                              ],
                            ),
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
