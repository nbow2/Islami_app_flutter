import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  _SebhaTapState createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _controller;
  List<String> duea = [
    'سبحان الله',
    'الله اكبر',
    'لا أله ألا الله',
    'استغفر الله',
    'الحمدالله'
  ];
  int dueaIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 33 == 0) {
        dueaIndex = (dueaIndex + 1) % duea.length;
      }
    });
    _controller.forward(from: 0.0); // Restart the animation
  }

  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.49,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    left: 100,
                    child: themeprovider.IsLightMode() ?
                    Image.asset('assets/images/head_seb7a.png'):
                    Image.asset('assets/images/head_seb7a_dark.png'),
                  ),
                  RotationTransition(
                    turns: Tween(begin: 0.0, end: 0.50).animate(_controller),
                    child:themeprovider.IsLightMode() ?
                    Image.asset('assets/images/body_seb7a.png'):
                    Image.asset('assets/images/body_seb7a_dark.png'),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.number_of_praises,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 23.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: themeprovider.IsLightMode() ?
                                AppColors.primaryLightColor: AppColors.primaryDarkColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themeprovider.IsLightMode() ?
                        AppColors.primaryLightColor: AppColors.yellowColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 12.0),
                        child: Text(
                          duea[dueaIndex],
                          style:  TextStyle(
                              color: themeprovider.IsLightMode() ?
                                  AppColors.WhiteColor: AppColors.BlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
