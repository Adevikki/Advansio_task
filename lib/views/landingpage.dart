
import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/constants/helpers.dart';
import 'package:advansio_test/views/authentication/login.dart';
import 'package:advansio_test/views/news_api_views/news_api_view.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:flutter/material.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: double.infinity,
              height: height(context),
              child: Image.asset(
                "assets/images/happy-young-african-woman.png",
                fit: BoxFit.fill,
              ),
              // child: SvgPicture.asset(
              //   '$kImagePath/happy-young-african-woman.svg',
              //   // width: 25,
              // ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: double.infinity,
              height: height(context) / 2.4,
              child: Image.asset(
                "assets/images/mask_group.png",
                fit: BoxFit.fill,
              ),
              // child: SvgPicture.asset(
              //   '$kImagePath/happy-young-african-woman.svg',
              //   // width: 25,
              // ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Column(
                      children: [
                        Center(
                          child: AppButton(
                            height: 68,
                            width: 228,
                            text: "Lend'n",
                            textColor: AppColors.whiteBackgroundColor,
                            fontSize: 30,
                            color: AppColors.defaultButtonColor,
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: AppButton(
                            height: 68,
                            width: 228,
                            text: "News Blog",
                            textColor: AppColors.whiteBackgroundColor,
                            fontSize: 30,
                            color:
                                AppColors.defaultButtonColor.withOpacity(0.7),
                            onTap: () {
                              Navigator.pushNamed(context, NewsPage.routeName);
                            },
                          ),
                        ),
                        const SizedBox(height: 200),
                        AppButton(
                          height: 65,
                          width: 225,
                          text: "Get Started",
                          icon: Image.asset(
                            "assets/images/circle_forward_icon.png",
                            fit: BoxFit.fill,
                          ),
                          fontSize: 20,
                          color: AppColors.whiteBackgroundColor,
                          textColor: AppColors.black,
                          onTap: () {
                            Navigator.pushNamed(context, LoginView.routeName);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
