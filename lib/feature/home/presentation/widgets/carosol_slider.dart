import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:ecommerce_task/core/constant/size.dart';
import 'package:flutter/material.dart';

class SimpleCarousel extends StatefulWidget {
  const SimpleCarousel({super.key});

  @override
  State<SimpleCarousel> createState() => _SimpleCarouselState();
}

class _SimpleCarouselState extends State<SimpleCarousel> {
  int _current = 0;

  final List<String> items = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
      MediaQuery.of(context).size.height*0.26,
      child: Stack(
        children: [
          // 🔵 Carousel Slider
          CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.paddingInside10),
                  color:AppColors.appColor
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.paddingBody),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(
                          'Get Your \nSpecial Sle\nUp TO 40 %',
                         style: AppSizes.carosolTextColor(context)
                        ),

                      SizedBox(height: 16,),
                      Expanded(child:Container(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(0)
                              
                        ),
                        child:
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                            onPressed: (){}, child:
                        Text('Shop Now',
                          style: AppSizes.xsmallLight(context),
                        )),
                      ))

                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height*0.26,
              scrollDirection: Axis.vertical,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),

          // 🟡 Vertical Indicator (inside carousel, right-aligned)
          Positioned(
            right: 12,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: items.asMap().entries.map((entry) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key
                        ? Colors.white
                        : Colors.grey.withOpacity(0.5),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
