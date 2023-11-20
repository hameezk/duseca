import 'package:duseca/utils/navigate.dart';
import 'package:duseca/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../utils/image_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_image_view.dart';
import 'customer_ride_history_screen.dart';

class PickRideScreen extends StatefulWidget {
  final int numberOfSeats;
  const PickRideScreen({Key? key, required this.numberOfSeats})
      : super(key: key);

  @override
  State<PickRideScreen> createState() => _PickRideScreenState();
}

class _PickRideScreenState extends State<PickRideScreen> {
  @override
  void initState() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();
  }

  int seatNum = 1;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Book Seat",
                      style: CustomTextStyles.labelLargeBluegray800),
                  SizedBox(height: 14.v),
                  _buildFrame(context),
                  SizedBox(height: 41.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.car_front,
                                width: 200,
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    (seatNum <= widget.numberOfSeats)
                                        ? seat_button('unavailable')
                                        : Container(
                                            height: 0,
                                            width: 0,
                                          ),
                                    (seatNum <= widget.numberOfSeats)
                                        ? seat_button('available')
                                        : Container(
                                            height: 0,
                                            width: 0,
                                          ),
                                    (seatNum <= widget.numberOfSeats)
                                        ? seat_button('available')
                                        : Container(
                                            height: 0,
                                            width: 0,
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 202,
                            child: ListView.builder(
                                addAutomaticKeepAlives: true,
                                primary: false,
                                shrinkWrap: true,
                                itemCount: ((widget.numberOfSeats - 6) > 0)
                                    ? ((widget.numberOfSeats - 7) ~/ 3) + 1
                                    : 0,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 1.0),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.car_mid,
                                          width: 200,
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: SizedBox(
                              width: 202,
                              child: ListView.builder(
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (context, i) {
                                    return Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.car_back,
                                          width: 200,
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 10,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                              (seatNum <= widget.numberOfSeats)
                                                  ? seat_button('available')
                                                  : Container(
                                                      height: 0,
                                                      width: 0,
                                                    ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                      onPressed: () =>
                          navigate(context, CustomerRideHistoryScreen()),
                      height: 48.v,
                      text: "Select Seat",
                      margin: EdgeInsets.symmetric(horizontal: 32.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPoppinsWhiteA700)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  seat_button(String availablity) {
    // 2 availablities: unavailable/available/selected
    print('seatmumber:$seatNum');
    int seatNumber = seatNum;

    (seatNumber == 1) ? availablity = "unavailable" : 'available';

    seatNum++;

    return StatefulBuilder(builder: (context, state) {
      return GestureDetector(
        onTap: () => state(() {
          (availablity == "unavailable")
              ? null
              : availablity =
                  (availablity == 'available') ? 'selected' : 'available';
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
          child: CustomImageView(
            imagePath: (availablity == "unavailable")
                ? ImageConstant.unavailable_seat
                : (availablity == "available")
                    ? ImageConstant.available_seat
                    : ImageConstant.selected_seat,
          ),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 7.v),
        decoration: AppDecoration.fillRed,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup513861,
              height: 23.v,
              width: 25.h),
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 4.v),
              child: Text("Available",
                  style: CustomTextStyles.labelLargeSecondaryContainer)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
              child: Text("Unavailable",
                  style: CustomTextStyles.labelLargeSecondaryContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup513863,
              height: 23.v,
              width: 25.h,
              margin: EdgeInsets.only(left: 16.h)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 3.v),
              child: Text("Selected",
                  style: CustomTextStyles.labelLargeSecondaryContainer))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
