import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';
import 'package:flutter_advanced_course/features/on_boarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter_advanced_course/features/on_boarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter_advanced_course/features/on_boarding/ui/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {          
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
            left: 10.w,
            right: 10.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           const DocLogoAndName(),
           SizedBox(height: 30.h,),
           const DoctorImageAndText(),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 12.w),
             child: Column(children: [
              Text(
                "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                style: TextStyles.font13GreyRegular,
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h,),
                const GetStartedButton(),
             ],),
           )
          ],
          ),
        ),
      )));
  }
}