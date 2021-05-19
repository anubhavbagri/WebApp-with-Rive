import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:revery/widgets/buttons.dart';

// ignore: use_key_in_widget_constructors
class IntroStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 40
              : 75;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 12
              : 20;
      return SizedBox(
        width: 600,
        child: Padding(
          padding: EdgeInsets.all(getValueForScreenType<double>(
            context: context,
            mobile: 16,
            tablet: 0,
            desktop: 0,
          )),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CUTE KADO \nFEELS DROWSY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: titleSize,
                    height: 1.0,
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Inter'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Kado, the Koala is a symbol of your gateway to the dream world. Immerse with him in deep slumber as sleep is the best way to improve your health. Continue to see how you could control his sleepiness!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: descriptionSize,
                    color: const Color.fromRGBO(156, 167, 166, 1),
                    height: 1.5,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(
                height: 40,
              ),
              Buttons()
            ],
          ),
        ),
      );
    });
  }
}
