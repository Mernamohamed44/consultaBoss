import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_button.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/component/custom_social_media.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_page_views.dart';
import 'package:untitled5/features/client_cycle/bottom_navigation_bar_client/bottom_navigation_bar_views.dart';
import 'package:untitled5/features/client_cycle/home_client_screen/home_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/home_screen/home_screen_views.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_account_states.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_your_account_cubit.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_your_account_view.dart';
import 'package:untitled5/public/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context)=>ChooseAccountCubit(),
    child:BlocBuilder<ChooseAccountCubit, ChooseAccountState>(builder:(context,state){
        var cubit=ChooseAccountCubit.get(context);
        return Scaffold(
          backgroundColor: colorWhite,
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  color: colorPrimary,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  onPressed: () => MagicRouter.pop(),
                ),
              ),
              const LogoImage(),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Welcome Back !',
                color: colorBlack,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                alignment: Alignment.center,
              ),
              CustomText(
                verticalMargin: 8,
                text: 'Login To your account',
                color: colorBlack,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                upperText: 'Phone Number',
                hint: 'Phone Number',
                fillColor: Colors.white,
              ),
              const CustomTextField(
                verticalMargin: 13,
                hint: 'Password',
                fillColor: Colors.white,
                upperText: 'Password',
              ),
              const CustomTextButton(
                alignment: Alignment.topLeft,
                text: 'Forget password',
                textDecoration: TextDecoration.underline,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: CustomButton(
                  text: 'Login',
                  bgColor: colorPrimary,
                  raduis: 10,
                  fontColor: colorWhite,
                  fontSize: 14,
                  borderColor: colorPrimary,
                  onPress: (){
                    MagicRouter.navigateAndPopAll(BottomNavigationBarViews());
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: 'Don\'t Have account ?',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    alignment: Alignment.center,
                  ),
                  CustomTextButton(
                    text: 'SignUp',
                    textDecoration: TextDecoration.underline,
                    onPressed: () => MagicRouter.navigateTo(const ChooseAccount()),
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
                thickness: 5,
              ),
              CustomText(
                alignment: Alignment.center,
                text: 'Or login with a personal account',
                color: colorPrimary,
                fontSize: 13,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  CustomSocialMedia(image: "Facebook_Ic.png", text: "Facebook.png"),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSocialMedia(image: "Google_Ic.png", text: "Google.png"),
                ],
              )
            ],
          ),
        );
      })
      );
  }
}
