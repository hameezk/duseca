
import 'package:duseca/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import 'earnings_page.dart';
class EarningsTabContainerScreen extends StatefulWidget {
  const EarningsTabContainerScreen({Key? key}) : super(key: key);

  @override
  EarningsTabContainerScreenState createState() =>
      EarningsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class EarningsTabContainerScreenState extends State<EarningsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 628.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            EarningsPage(),
                            EarningsPage(),
                            EarningsPage(),
                            EarningsPage()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Driver Info."));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration: BoxDecoration(color: appTheme.red500.withOpacity(0.08)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.red700,
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.red700.withOpacity(0.4),
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
            indicatorColor: appTheme.red700,
            tabs: [
              Tab(child: Text("Earnings")),
              Tab(child: Text("No. Rides")),
              Tab(child: Text("Billings")),
              Tab(child: Text("Reviews"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
