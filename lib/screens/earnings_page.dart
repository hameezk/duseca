import 'package:duseca/utils/size_utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class EarningsPage extends StatefulWidget {
  const EarningsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EarningsPageState createState() => EarningsPageState();
}

class EarningsPageState extends State<EarningsPage>
    with AutomaticKeepAliveClientMixin<EarningsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildThirteen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 1.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.v),
                          child: Text(
                            "Your earnings",
                            style: CustomTextStyles
                                .titleMediumDMSansOnPrimaryContainer,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDropUp,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            top: 5.v,
                            bottom: 16.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 16.v,
                          ),
                          child: Text(
                            "This week",
                            style: CustomTextStyles.labelSmallRed700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                // CustomImageView(
                //   imagePath: ImageConstant.imgCharts,
                //   height: 87.v,
                //   width: 251.h,
                // ),
                SizedBox(
                  height: 87.v,
                  width: 251.h,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      groupsSpace: (251.h / 7) - 3,
                      barGroups: [
                        BarChartGroupData(
                          x: 0,
                          barsSpace: 8,
                          // colors: [Colors.blue]
                          barRods: [
                            BarChartRodData(
                              y: 300, //   Monday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 1,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 450, //   Tuesday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 600, //   Wednesday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 750, //   Thursday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 4,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 500, //   Friday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 5,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 900, //   Saturday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barsSpace: 8,
                          barRods: [
                            BarChartRodData(
                              y: 800, //   Sunday
                              gradientFrom: Offset(0, 0),
                              gradientTo: Offset(0, 1),
                              colors: [
                                appTheme.red500,
                                appTheme.red500.withOpacity(0.4),
                              ],
                            ),
                          ],
                        ),
                      ],
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(show: false),
                      gridData: FlGridData(show: false),
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          tooltipBgColor: appTheme.red500.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 22.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sat",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Sun",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Mon",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Tue",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Wed",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Thu",
                        style: theme.textTheme.labelSmall,
                      ),
                      Text(
                        "Fri",
                        style: theme.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "200.68.00 zł",
                  style: CustomTextStyles.titleLargeInterOnError,
                ),
              ),
              CustomElevatedButton(
                height: 40.v,
                width: 100.h,
                text: "Withdraw",
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Divider(
            indent: 15.h,
            endIndent: 15.h,
          ),
        ],
      ),
    );
  }
}
