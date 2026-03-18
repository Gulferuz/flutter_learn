import 'package:auto_route/auto_route.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/view/forgot_password_page.dart';
import 'package:untitled/feature/auth/view/login_page.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SignupPageRoute.page),
    AutoRoute(page: LoginPageRoute.page),
    AutoRoute(page: ForgotPasswordPageRoute.page),
    AutoRoute(page: DashboardPageRoute.page),
    AutoRoute(page: CheckoutPageRoute.page),
    AutoRoute(page: PaymentMethodsRoute.page),
    AutoRoute(page: SuccessPageRouter.page),
    AutoRoute(page: MyBagPageRoute.page),
    AutoRoute(page: MyProfilePageRoute.page),
    AutoRoute(page: NewCollectionRoute.page),
    AutoRoute(page: MyOrdersPageRoute.page),
    AutoRoute(page: SalePageRoute.page),
    AutoRoute(page: ShippingAddressPageRoute.page),
    AutoRoute(page: Succes2PageRoute.page),
    AutoRoute(page: AddShippingAddressRoute.page),
    AutoRoute(page: OrderDetailsPageRoute.page),
    AutoRoute(page: SettingsPageRoute.page),

  ];
}
