import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/reponsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
   List images = [
     "1.jpg",
     "4 (2).jpg",
     "5.jpg",
   ];

  Object? get indextDots => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
          return Container(
           width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ),
                  fit: BoxFit.cover
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top:150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(text: "Mountains", size: 30,),
                        SizedBox(height: 20,),
                        Container(
                      width: 250,
                          child: AppText(
                            text: "Mountain hikes give yu an incredible sense of freedom along with endurance taste",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                           ),
                        SizedBox(height: 40,),
                        ResponsiveButton()

                        ],
              ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return  Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:index==indextDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)

                          ),
                        );
                      }),
                    )
                    ]
              ),
              )

            );

      }),
    );
  }
}
