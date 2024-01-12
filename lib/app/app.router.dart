// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dummy/modules/food_item.dart' as _i16;
import 'package:dummy/screens/bottom_navigationbar/bottomsheet_view.dart'
    as _i14;
import 'package:dummy/screens/cart/cart_view.dart' as _i10;
import 'package:dummy/screens/forgetpassword_screen/forgetpassword_view.dart'
    as _i7;
import 'package:dummy/screens/home_screen/home_screen_view.dart' as _i8;
import 'package:dummy/screens/login/login_screen.dart' as _i4;
import 'package:dummy/screens/loginwithphone/login_with_phone.dart' as _i11;
import 'package:dummy/screens/onbardingScreen/onbarding.dart' as _i13;
import 'package:dummy/screens/order/orderView.dart' as _i12;
import 'package:dummy/screens/payment_verify/paymentView.dart' as _i3;
import 'package:dummy/screens/product_details/details_view.dart' as _i2;
import 'package:dummy/screens/signup_screen/signup_screen_view.dart' as _i9;
import 'package:dummy/screens/splashscreen/splash_screen_view.dart' as _i6;
import 'package:dummy/screens/verify_code/verify_screen.dart' as _i5;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const detailView = '/detail-view';

  static const paymentView = '/payment-view';

  static const loginView = '/login-view';

  static const verifyScreenView = '/verify-screen-view';

  static const startupScreen = '/';

  static const forgetPassword = '/forget-password';

  static const home = '/Home';

  static const signUp = '/sign-up';

  static const cartView = '/cart-view';

  static const loginWithPhone = '/login-with-phone';

  static const orderView = '/order-view';

  static const onboardingView = '/onboarding-view';

  static const bottomNavigationView = '/bottom-navigation-view';

  static const all = <String>{
    detailView,
    paymentView,
    loginView,
    verifyScreenView,
    startupScreen,
    forgetPassword,
    home,
    signUp,
    cartView,
    loginWithPhone,
    orderView,
    onboardingView,
    bottomNavigationView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.detailView,
      page: _i2.DetailView,
    ),
    _i1.RouteDef(
      Routes.paymentView,
      page: _i3.PaymentView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.verifyScreenView,
      page: _i5.VerifyScreenView,
    ),
    _i1.RouteDef(
      Routes.startupScreen,
      page: _i6.StartupScreen,
    ),
    _i1.RouteDef(
      Routes.forgetPassword,
      page: _i7.ForgetPassword,
    ),
    _i1.RouteDef(
      Routes.home,
      page: _i8.Home,
    ),
    _i1.RouteDef(
      Routes.signUp,
      page: _i9.SignUp,
    ),
    _i1.RouteDef(
      Routes.cartView,
      page: _i10.CartView,
    ),
    _i1.RouteDef(
      Routes.loginWithPhone,
      page: _i11.LoginWithPhone,
    ),
    _i1.RouteDef(
      Routes.orderView,
      page: _i12.OrderView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i13.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.bottomNavigationView,
      page: _i14.BottomNavigationView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.DetailView: (data) {
      final args = data.getArgs<DetailViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i2.DetailView(key: args.key, foodItem: args.foodItem),
        settings: data,
      );
    },
    _i3.PaymentView: (data) {
      final args = data.getArgs<PaymentViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.PaymentView(foodItem: args.foodItem),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.VerifyScreenView: (data) {
      final args = data.getArgs<VerifyScreenViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.VerifyScreenView(
            Phonenumber: args.Phonenumber, verifiationId: args.verifiationId),
        settings: data,
      );
    },
    _i6.StartupScreen: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.StartupScreen(),
        settings: data,
      );
    },
    _i7.ForgetPassword: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.ForgetPassword(),
        settings: data,
      );
    },
    _i8.Home: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.Home(),
        settings: data,
      );
    },
    _i9.SignUp: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.SignUp(),
        settings: data,
      );
    },
    _i10.CartView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.CartView(),
        settings: data,
      );
    },
    _i11.LoginWithPhone: (data) {
      final args = data.getArgs<LoginWithPhoneArguments>(
        orElse: () => const LoginWithPhoneArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.LoginWithPhone(key: args.key),
        settings: data,
      );
    },
    _i12.OrderView: (data) {
      final args = data.getArgs<OrderViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.OrderView(
            args.foodItem, args.quantity, args.total,
            key: args.key),
        settings: data,
      );
    },
    _i13.OnboardingView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.OnboardingView(),
        settings: data,
      );
    },
    _i14.BottomNavigationView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.BottomNavigationView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DetailViewArguments {
  const DetailViewArguments({
    this.key,
    required this.foodItem,
  });

  final _i15.Key? key;

  final _i16.FoodItem foodItem;

  @override
  String toString() {
    return '{"key": "$key", "foodItem": "$foodItem"}';
  }

  @override
  bool operator ==(covariant DetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.foodItem == foodItem;
  }

  @override
  int get hashCode {
    return key.hashCode ^ foodItem.hashCode;
  }
}

class PaymentViewArguments {
  const PaymentViewArguments({required this.foodItem});

  final dynamic foodItem;

  @override
  String toString() {
    return '{"foodItem": "$foodItem"}';
  }

  @override
  bool operator ==(covariant PaymentViewArguments other) {
    if (identical(this, other)) return true;
    return other.foodItem == foodItem;
  }

  @override
  int get hashCode {
    return foodItem.hashCode;
  }
}

class VerifyScreenViewArguments {
  const VerifyScreenViewArguments({
    required this.Phonenumber,
    required this.verifiationId,
  });

  final dynamic Phonenumber;

  final dynamic verifiationId;

  @override
  String toString() {
    return '{"Phonenumber": "$Phonenumber", "verifiationId": "$verifiationId"}';
  }

  @override
  bool operator ==(covariant VerifyScreenViewArguments other) {
    if (identical(this, other)) return true;
    return other.Phonenumber == Phonenumber &&
        other.verifiationId == verifiationId;
  }

  @override
  int get hashCode {
    return Phonenumber.hashCode ^ verifiationId.hashCode;
  }
}

class LoginWithPhoneArguments {
  const LoginWithPhoneArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant LoginWithPhoneArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class OrderViewArguments {
  const OrderViewArguments({
    required this.foodItem,
    required this.quantity,
    required this.total,
    this.key,
  });

  final _i16.FoodItem foodItem;

  final dynamic quantity;

  final dynamic total;

  final _i15.Key? key;

  @override
  String toString() {
    return '{"foodItem": "$foodItem", "quantity": "$quantity", "total": "$total", "key": "$key"}';
  }

  @override
  bool operator ==(covariant OrderViewArguments other) {
    if (identical(this, other)) return true;
    return other.foodItem == foodItem &&
        other.quantity == quantity &&
        other.total == total &&
        other.key == key;
  }

  @override
  int get hashCode {
    return foodItem.hashCode ^
        quantity.hashCode ^
        total.hashCode ^
        key.hashCode;
  }
}

extension NavigatorStateExtension on _i17.NavigationService {
  Future<dynamic> navigateToDetailView({
    _i15.Key? key,
    required _i16.FoodItem foodItem,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailView,
        arguments: DetailViewArguments(key: key, foodItem: foodItem),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentView({
    required dynamic foodItem,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.paymentView,
        arguments: PaymentViewArguments(foodItem: foodItem),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVerifyScreenView({
    required dynamic Phonenumber,
    required dynamic verifiationId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.verifyScreenView,
        arguments: VerifyScreenViewArguments(
            Phonenumber: Phonenumber, verifiationId: verifiationId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginWithPhone({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loginWithPhone,
        arguments: LoginWithPhoneArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOrderView({
    required _i16.FoodItem foodItem,
    required dynamic quantity,
    required dynamic total,
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.orderView,
        arguments: OrderViewArguments(
            foodItem: foodItem, quantity: quantity, total: total, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBottomNavigationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bottomNavigationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDetailView({
    _i15.Key? key,
    required _i16.FoodItem foodItem,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.detailView,
        arguments: DetailViewArguments(key: key, foodItem: foodItem),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentView({
    required dynamic foodItem,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.paymentView,
        arguments: PaymentViewArguments(foodItem: foodItem),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVerifyScreenView({
    required dynamic Phonenumber,
    required dynamic verifiationId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.verifyScreenView,
        arguments: VerifyScreenViewArguments(
            Phonenumber: Phonenumber, verifiationId: verifiationId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginWithPhone({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loginWithPhone,
        arguments: LoginWithPhoneArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOrderView({
    required _i16.FoodItem foodItem,
    required dynamic quantity,
    required dynamic total,
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.orderView,
        arguments: OrderViewArguments(
            foodItem: foodItem, quantity: quantity, total: total, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBottomNavigationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bottomNavigationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
