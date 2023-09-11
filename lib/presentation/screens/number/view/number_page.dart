import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/rooms/rooms_provider.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';
import 'package:flutter_hotels/presentation/router/auto_route.dart';
import 'package:flutter_hotels/presentation/screens/hotel/widget/chip_like_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_widgets.dart';
import '../widget/widget.dart';

@RoutePage()
class NumberPage extends ConsumerStatefulWidget {
  const NumberPage({super.key});

  @override
  ConsumerState<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends ConsumerState<NumberPage> {
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    ref.read(roomsProvider.notifier).getRooms(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(roomsProvider);
    final event = ref.watch(roomsProvider.notifier);
    final rooms = state.rooms?.rooms;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child:
            state.rooms == null ? const SizedBox() : const SecondPageAppbar(),
      ),
      body: state.rooms == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: rooms?.length,
              itemBuilder: (context, index) {
                final currentRoom = rooms?[index];
                return Container(
                  padding: EdgeInsets.all(16.r),
                  margin: EdgeInsets.only(top: 8.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // photos
                      CarouselSlider.builder(
                        carouselController: carouselController,
                        itemCount: currentRoom?.imageUrls?.length ?? 1,
                        itemBuilder: (context, index, realIndex) {
                          return state.isLoading
                              ? const CircularProgressIndicator()
                              : Stack(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      width: double.maxFinite,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          child: SizedBox(
                                            height: 257.h,
                                            child: CachedNetworkImage(
                                              imageUrl: currentRoom?.imageUrls
                                                      ?.elementAt(index) ??
                                                  AppConstants.imageInCaseError,
                                              fit: BoxFit.cover,
                                              errorWidget: (context, url, error) {
                                                return Image.network(
                                                  AppConstants.imageInCaseError,
                                                  fit: BoxFit.cover,
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
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10.h),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                        child: DotsIndicator(
                                          dotsCount:
                                              currentRoom!.imageUrls!.length,
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
                            event.setActiveIndex(index);
                          },
                          viewportFraction: 1,
                        ),
                      ),
                      8.verticalSpace,
                      CustomText(
                        text: currentRoom?.name,
                        fontSize: 22.sp,
                      ),
                      8.verticalSpace,
                      SizedBox(
                        width: double.maxFinite,
                        //height: 90.h,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          //physics: FixedExtentScrollPhysicsa()
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 5.0 / 1.2,
                          ),
                          itemCount: currentRoom?.peculiarities?.length,
                          itemBuilder: (context, index) {
                            final currentPeculiarity =
                                currentRoom!.peculiarities?[index];
                            return Container(
                              height: 30.h,
                              margin: EdgeInsets.only(top: 8.h, right: 8.w),
                              child: ChipLikeWidget(
                                text: currentPeculiarity ?? "",
                              ),
                            );
                          },
                        ),
                      ),
                      8.verticalSpace,
                      const RoomDetailes(),
                      16.verticalSpace,
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                            text: "${currentRoom?.price.toString()} ₽",
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: currentRoom?.pricePer,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.greyText,
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      CustomButton(
                        onPressed: () {
                          context.router.push(BookingRoute());
                        },
                        width: double.maxFinite,
                        text: "Выбрать номер",
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
