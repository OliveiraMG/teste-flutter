import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset('assets/images/man.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Spend smarter save more',
                style: AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
            const SizedBox(height: 20),
            Text(
              'Already have account? Log In',
              style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
