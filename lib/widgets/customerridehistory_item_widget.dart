import 'package:duseca/screens/earnings_tab_container_screen.dart';
import 'package:duseca/utils/navigate.dart';
import 'package:duseca/utils/size_utils.dart';
import 'package:duseca/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';

// ignore: must_be_immutable
class CustomerridehistoryItemWidget extends StatelessWidget {
  const CustomerridehistoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate(context, EarningsTabContainerScreen()),
      child: Container(
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.outlineBluegray10001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 96.v,
              width: 146.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 96.v,
                      width: 54.h,
                      decoration: BoxDecoration(
                        color: appTheme.red600.withOpacity(0.39),
                        borderRadius: BorderRadius.circular(
                          9.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPassengerVanHigh,
                    height: 34.v,
                    width: 86.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 7.v, left: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIcRoute,
                              height: 48.v,
                              width: 12.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 6.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gorzow",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 18.v),
                                Text(
                                  "Berlin Airport",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 28.v,
                right: 9.h,
                bottom: 28.v,
              ),
              child: Column(
                children: [
                  Text(
                    "\$ 45.99",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEventIcon,
                        height: 9.v,
                        width: 7.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Germany",
                          style: CustomTextStyles
                              .labelSmallMontserratSecondaryContainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
