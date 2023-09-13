import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/hotel/hotel_notifier.dart';
import 'package:flutter_hotels/application/hotel/hotel_state.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_widgets.dart';

// ignore: must_be_immutable
class FirstSection extends StatelessWidget {
  FirstSection({
    required this.state,
    required this.event,
    super.key,
  });
  final HotelState state;
  final HotelNotifier event;

  CarouselController carouselController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final photos = state.hotel?.imageUrls;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: CustomText(
                textAlign: TextAlign.center,
                text: "Отель",
                fontSize: 18.sp,
              ),
            ),
            16.verticalSpace,
            SizedBox(
              //height: 270.h,
              width: double.maxFinite,
              child: state.hotel == null 
                  ? const Center(child: CircularProgressIndicator())
                  : CarouselSlider.builder(
                      carouselController: carouselController,
                      itemCount: photos?.length ?? 1,
                      itemBuilder: (context, index, realIndex) {
                        final currentHotel = photos?[index];
                        return state.isLoading
                            ? const CircularProgressIndicator()
                            : Stack(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    width: double.maxFinite,
                                    //height: 257.h,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        child: SizedBox(
                                          height: 257.h,
                                          child: CachedNetworkImage(
                                            imageUrl: currentHotel ??
                                                "assets/images/hotel.png",
                                            fit: BoxFit.cover,
                                            errorWidget: (context, url, error) {
                                              return Container(
                                                color: Colors.red,
                                              );
                                            },
                                            placeholder: (context, url) {
                                              return const SizedBox(
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                        /* Image.network(
                                  currentHotel ?? "",
                                  fit: BoxFit.cover,
                                ), */
                                        ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10.h),
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                      child: DotsIndicator(
                                        dotsCount: photos?.length ?? 3,
                                        position: state.activeIndex,
                                        onTap: (position) {
                                          carouselController
                                              .animateToPage(position);
                                        },
                                        decorator: DotsDecorator(
                                          activeColor: Colors.black,
                                          color: Colors.grey.shade400,
                                          activeSize: Size(7.w, 7.h),
                                          size: Size(7.w, 7.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                      },
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) {
                          event.setActive(index);
                        },
                        viewportFraction: 1,
                      ),
                    ),
            ),
            16.verticalSpace,
            Container(
              width: 149.w,
              height: 29.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColors.yellowContainer,
              ),
              child:
                  state.hotel?.rating == 0
                      ? CustomText(text: "Уточняем рейтинг", fontSize: 18.sp)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.yellowText,
                              size: 20.r,
                            ),
                            CustomText(
                              text:
                                  "${state.hotel?.rating ?? ""} ${state.hotel?.ratingName ?? ""}",
                              fontSize: 16.sp,
                              textColor: AppColors.yellowText,
                            )
                          ],
                        ),
            ),
            8.verticalSpace,
            CustomText(
              text: "Steigenberger Makadi",
              fontSize: 22.sp,
            ),
            8.verticalSpace,
            InkWell(
              onTap: () {},
              child: CustomText(
                text: state.hotel?.adress ?? "",
                fontSize: 14.sp,
                textColor: AppColors.blueText,
              ),
            ),
            16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "от ${state.hotel?.minimalPrice ?? ""} ₽",
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w600,
                ),
                //8.horizontalSpace,
                CustomText(
                  text: state.hotel?.priceForIt ?? "",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.greyText,
                ),
              ],
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
