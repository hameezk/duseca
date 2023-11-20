import 'package:country_code_picker/country_code_picker.dart';
import 'package:duseca/screens/pick_ride_screen.dart';
import 'package:duseca/utils/navigate.dart';
import 'package:duseca/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_radio_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController seatNoController = TextEditingController();

  String radioGroup = "";
  String salectedRadioValue = "lbl_passenger";

  List<String> radioList = ["lbl_passenger", "lbl_driver"];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 50.v,
                    width: 124.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 94.h,
                            child: Text(
                              "Duseca",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 33.v,
                            width: 124.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                7.h,
                              ),
                              border: Border.all(
                                color: appTheme.red600,
                                width: 1.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "SignUp today ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 211.h,
                    margin: EdgeInsets.only(
                      left: 42.h,
                      right: 41.h,
                    ),
                    child: Text(
                      "Provide us your credentials to start journey with us.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeBluegray700,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  "Your name",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 5.v),
                _buildName(context),
                SizedBox(height: 14.v),
                Text(
                  "Your email",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 6.v),
                _buildEmail(context),
                SizedBox(height: 14.v),
                Text(
                  "Phone no*",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 5.v),
                _buildTwo(context),
                SizedBox(height: 14.v),
                Text(
                  "Password",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 5.v),
                _buildPassword(context),
                SizedBox(height: 15.v),
                Text(
                  "Confirm password",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 4.v),
                _buildConfirmpassword(context),
                SizedBox(height: 15.v),
                _buildRadioButtons(context),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 17.v,
                        ),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillTeal.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder6,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheck,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 249.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "Password must be at least 8 character, uppercase, lowercase, and unique code!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallMontserratOnPrimary
                                .copyWith(
                              height: 1.60,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildCreateAccount(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "e.g. John Doe",
      hintStyle: CustomTextStyles.bodySmallMontserrat,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      onchanged: (value) => setState(() {}),
      controller: emailController,
      hintText: "youremail@gmail.com",
      hintStyle: CustomTextStyles.bodySmallMontserrat,
      textInputType: TextInputType.emailAddress,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 9.v, 20.h, 9.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          color:
              (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text))
                  ? Colors.green
                  : Colors.black45,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 38.v,
      ),
    );
  }

  /// Section Widget
  // Widget _buildOneHundredTwentyThree(BuildContext context) {
  //   return CustomOutlinedButton(
  //     width: 62.h,
  //     text: "+123",
  //     rightIcon: Container(
  //       margin: EdgeInsets.only(left: 6.h),
  //       child: CustomImageView(
  //         imagePath: ImageConstant.imgLocation,
  //         height: 10.adaptSize,
  //         width: 10.adaptSize,
  //       ),
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: "310-XXXXXXXX",
      hintStyle: CustomTextStyles.bodySmallMontserrat,
      textInputType: TextInputType.emailAddress,
      prefix: CountryCodePicker(
        onChanged: print,
        enabled: true,
        initialSelection: 'Us',
        // favorite: const ['+92', 'Pk'],
        showCountryOnly: false,
        showOnlyCountryWhenClosed: false,
        flagWidth: 20,
        alignLeft: false,
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 38.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "***************",
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 9.v, 18.h, 9.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 38.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmpasswordController,
      hintText: "***************",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 9.v, 18.h, 9.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 38.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildRadioButtons(BuildContext context) {
    return Row(
      children: [
        CustomRadioButton(
          text: "Passenger",
          value: radioList[0],
          groupValue: radioGroup,
          textStyle: (radioGroup == 'lbl_passenger')
              ? null
              : CustomTextStyles.bodySmallMontserratBluegray900,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            setState(() {
              radioGroup = value;
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(left: 26.h),
          child: CustomRadioButton(
            text: "Driver",
            value: radioList[1],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            textStyle: (radioGroup == 'lbl_driver')
                ? null
                : CustomTextStyles.bodySmallMontserratBluegray900,
            onChange: (value) {
              setState(() {
                print('radio: $value');
                radioGroup = value;
              });
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => navigate(
        context,
        PickRideScreen(
          numberOfSeats: 11,
        ),
      ),
      // showSeatDialoge(context),
      text: "Create Account",
      margin: EdgeInsets.only(
        left: 32.h,
        right: 32.h,
        bottom: 45.v,
      ),
    );
  }

  showSeatDialoge(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter Number Of seats'),
          content: TextField(
            controller: seatNoController,
            keyboardType: TextInputType.number,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context);
                navigate(
                    context,
                    PickRideScreen(
                        numberOfSeats:
                            int.tryParse(seatNoController.text.trim()) ?? 0));
              },
              child: Text('Ok'),
            )
          ],
        );
      },
    );
  }
}
