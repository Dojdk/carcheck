import 'package:flutter/material.dart';

class CarSlider extends StatefulWidget {
  const CarSlider({super.key});

  @override
  State<CarSlider> createState() => _CarSliderState();
}

class _CarSliderState extends State<CarSlider> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://carcheck.az/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FBMWwoutDmgDesign-removebg-transformed-min.6828226c.png&w=828&q=100',
              fit: BoxFit.cover,
              width: 350,
            ),
            Positioned(
              left: 0,
              child: ClipRect(
                child: Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: _sliderValue,
                  child: Image.network(
                    'https://carcheck.az/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FBMWDamagedDesigned-removebg.b5094adc.png&w=828&q=75', // First Image URL
                    fit: BoxFit.cover,
                    width: 350,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Slider
        Slider(
          value: _sliderValue,
          min: 0.0,
          max: 1.0,
          onChanged: (newValue) {
            setState(() {
              _sliderValue = newValue;
            });
          },
        ),
      ],
    );
  }
}
