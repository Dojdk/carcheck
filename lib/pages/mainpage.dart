import 'package:carcheck/theme/colors.dart';
import 'package:carcheck/widgets/common/appbar.dart';
import 'package:carcheck/widgets/mainpage/carslider.dart';
import 'package:carcheck/widgets/mainpage/infocard.dart';
import 'package:flutter/material.dart';

import '../widgets/common/drawer.dart';
import '../widgets/mainpage/findcontainer.dart';
import '../theme/fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppbar(),
      endDrawer: const CustomDrawer(),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'VİN hesabatı',
                style: size40weight700,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: width * .8,
                  child: Text(
                    'Rəsmi mənbələrdən satış tarixi, yürüş, qəzalarda iştirak, təmir, girovlar, məhdudiyyətlər və digər məlumatlar haqqında VİN və ya dövlət nömrəsi ilə ətraflı hesabat alın.     ',
                    style: size16.copyWith(color: grayColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const FindContainer(),
              const SizedBox(
                height: 20,
              ),
              const CarSlider(),
              const Text(
                'Nəyi yoxlayırıq',
                style: size40weight700,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: width * .8,
                  child: Text(
                    'Biz aşağıdakı məlumatlar üçün dövlət və kommersiya məlumat bazalarından avtomobil məlumatlarını toplayırıq:',
                    style: size16.copyWith(color: grayColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const InfoCard(
                icon: 'assets/images/svg/clock.svg',
                title: 'Satış Tarixi',
                info:
                    'Satış anındakı məsafə\nSatış qiyməti\nElanlardan şəkillər\nKim satır: fərdi şəxs və ya digər şəxs',
              ),
              const InfoCard(
                icon: 'assets/images/svg/recycle.svg',
                title: 'Əməliyyat Tarixi',
                info:
                    'Avtomobilin DTP-də iştirakı\nXidmət işləri və təmiratlar\nTexniki nəzarətlər\nTaksi kimi istifadə',
              ),
              const InfoCard(
                icon: 'assets/images/svg/law.svg',
                title: 'Hüquqi məlumatlar',
                info:
                    'Zəmanətdə olma\nAxtarışda olma\nMəhdudiyyətlərin olması\nAvtomobilin utilizasiya\nYPX-dən cərimə tarixi',
              ),
              const InfoCard(
                icon: 'assets/images/svg/people.svg',
                title: 'Qeydiyyat tarixi',
                info:
                    'Sahiblərin sayı\nSahiblik müddətləri\nBütün zamanlar üçün dövlət nömrələri\nQeydiyyatın regionları və şəhərləri\nGömrük tarixi',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
