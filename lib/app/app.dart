import 'package:dummy/Services/cart_service.dart';
import 'package:dummy/screens/cart/cart_view.dart';
import 'package:dummy/screens/forgetpassword_screen/forgetpassword_view.dart';
import 'package:dummy/screens/home_screen/home_screen_view.dart';
import 'package:dummy/screens/onbardingScreen/onbarding.dart';
import 'package:dummy/screens/order/orderView.dart';
import 'package:dummy/screens/payment_verify/paymentView.dart';
import 'package:dummy/screens/signup_screen/signup_screen_view.dart';
import 'package:dummy/screens/verify_code/verify_screen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../screens/bottom_navigationbar/bottomsheet_view.dart';
import '../screens/login/login_screen.dart';
import '../screens/loginwithphone/login_with_phone.dart';
import '../screens/product_details/details_view.dart';
import '../screens/splashscreen/splash_screen_view.dart';

// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: DetailView,),
    MaterialRoute(page: PaymentView,),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: VerifyScreenView),
    MaterialRoute(page: StartupScreen,initial: true),
    MaterialRoute(page: ForgetPassword),
    MaterialRoute(page: Home),
    MaterialRoute(page: SignUp),
    MaterialRoute(page: CartView),
    MaterialRoute(page: LoginWithPhone),
    MaterialRoute(page: OrderView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: BottomNavigationView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: CartService),

    // @stacked-service
  ],
  // bottomsheets: [
  //   StackedBottomsheet(classType: NoticeSheet),
  //   // @stacked-bottom-sheet
  // ],
  // dialogs: [
  //   StackedDialog(classType: InfoAlertDialog),
  //   StackedDialog(classType: customDialgeView),
  //   StackedDialog(classType: faildialog),
  //   // @stacked-dialog
  // ],
)
class App {}
