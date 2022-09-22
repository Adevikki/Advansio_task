import 'package:advansio_test/views/authentication/login.dart';
import 'package:advansio_test/views/authentication/registration.dart';
import 'package:advansio_test/views/news_viewmodel/otp_screens/confirm_otp_view.dart';
import 'package:advansio_test/views/news_viewmodel/otp_screens/create_pin_view.dart';
import 'package:advansio_test/views/dashboard/dashboard_view.dart';
import 'package:advansio_test/views/news_api_views/news_api_view.dart';
import 'package:advansio_test/views/success_screens/success_signup_screen.dart';
import 'package:advansio_test/views/success_screens/transfer_success_screen.dart';
import 'package:advansio_test/views/transfer/transfer_view.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginView.routeName: (context) => const LoginView(),
  Registration.routeName: (context) => const Registration(),
  NewsPage.routeName: (context) => const NewsPage(),
  SuccessSignUpView.routeName:(context) =>  const SuccessSignUpView(),
 VerifyOTP.routeName:(context) =>  const VerifyOTP(phoneNumber: '',),
 DashboardScreen.routeName:(context) =>  const DashboardScreen(),
 Transfer.routeName:(context) =>  const Transfer(),
 TransferSuccessfulUpView.routeName:(context) =>  const TransferSuccessfulUpView(),
 ConfirmOTP.routeName:(context) =>   const ConfirmOTP(phoneNumber: '',),
};
