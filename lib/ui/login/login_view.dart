import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';
import 'package:revieuus/ui/login/login_view_model.dart';
import 'package:revieuus/ui/widget/dumbWidget/buttons.dart';
import 'package:revieuus/ui/widget/dumbWidget/custom_textfield.dart';
import 'package:revieuus/ui/widget/shared/images.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ViewModelBuilder<LoginViewModel>.reactive(
        onModelReady: (model) => {},
        viewModelBuilder: () => LoginViewModel(),
        builder: (_, model, ___) => GestureDetector(
            onTap: model.offKeyboard,
            child: Scaffold(
              backgroundColor: AppColors.backgroundColor,
              appBar: AppBar(
                leading: BackButton(
                  color: AppColors.black,
                ),
                backgroundColor: AppColors.backgroundColor,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      // Spacer(),
                      regularPoppinsText(context,
                          text: "HOMEFORTH",
                          fontSize: 30.sp,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textblack),

                      verticalSpaceMedium,
                      regularPoppinsText(context,
                          text: "Welcome back,\nLogin to continue,",
                          fontSize: 16.sp,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomTextField(
                        readOnly: model.isBusy,
                        hintText: 'Username',
                        prefixIcon: Image.asset(
                          Images.person,
                          width: 20,
                        ),
                      ),
                      verticalSpaceRegular,
                      CustomTextField(
                          readOnly: model.isBusy,
                          hintText: 'Password',
                          prefixIcon: Image.asset(
                            Images.lock,
                            width: 20,
                          )),
                      verticalSpaceMedium,
                      customButton(context,
                          fontSize: 18.sp,
                          text: 'Login',
                          horiMargin: 20.0.h,
                          textColor: AppColors.white,
                          buttonColor: AppColors.purpleColor,
                          borderColor: AppColors.purpleColor,
                          function: () => model.navigateToHomeView()),
                      verticalSpaceMedium,
                      verticalSpaceMedium,
                      InkWell(
                        child: regularPoppinsText(context,
                            text: "Forgot password",
                            fontSize: 16.sp,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textblack),
                      ),

                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Container(
                  height: 75.h,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        regularPoppinsText(context,
                            text: 'New here? ',
                            fontSize: 14.sp,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textblack),
                        regularPoppinsText(
                          context,
                          text: 'Sign in',
                          fontSize: 14.sp,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          color: AppColors.purpleColor,
                        ),
                      ],
                    ),
                  )),
            )));
  }
}
