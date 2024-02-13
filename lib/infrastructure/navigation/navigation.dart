import 'package:base_flutter/presentation/base_stucture/base_structure.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_bank_details.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_bank_verification.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_bank_verified.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_kyc.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_nominee.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_pan.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customer_personal_details.dart';
import 'package:base_flutter/presentation/explore/add_customer/add_customers_parents_details.dart';
import 'package:base_flutter/presentation/explore/customers_details.dart/customers_details.dart';
import 'package:base_flutter/presentation/explore/edit_customer/edit_cusomer.dart';
import 'package:base_flutter/presentation/login/login_form_page/login_form_page.dart';
import 'package:base_flutter/presentation/login/login_initial_page/login_initial_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:base_flutter/presentation/initializer/initializer.screen.dart';
import 'package:base_flutter/presentation/route_error/route_error.screen.dart';
import 'package:base_flutter/presentation/sample_module/sample_module.screen.dart';

part 'route_param.dart';

part 'routes.dart';

class Nav {
  static final GoRouter goRoutes = GoRouter(
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => RouteErrorScreen(error: state.error),
    routes: [
      TransitionRoute(
        name: RoutePath.initializer,
        nameAlt: RoutePath.initializer,
        page: (context, state) => InitializerScreen(state: state),
        routes: [
          TransitionRoute(
            name: RoutePath.sampleModule,
            nameAlt: RoutePath.sampleModule,
            page: (context, state) => const SampleModuleScreen(),
          ),
          TransitionRoute(
            name: RoutePath.loginInitialPage,
            nameAlt: RoutePath.loginInitialPage,
            page: (context, state) => const LoginInitialScreen(),
            routes: [
              TransitionRoute(
                name: RoutePath.loginFormPage,
                nameAlt: RoutePath.loginFormPage,
                page: (context, state) => const
                    //
                    LoginForm(),
                // BaseStructure(),
              ),
            ],
          ),
          TransitionRoute(
            name: RoutePath.baseStructure,
            nameAlt: RoutePath.baseStructure,
            page: (context, state) => const BaseStructure(),
            routes: [
              TransitionRoute(
                  name: RoutePath.customerDetails,
                  nameAlt: RoutePath.customerDetails,
                  page: (context, state) => const CustomerDetails(),
                  routes: [
                    TransitionRoute(
                      name: RoutePath.editCustomer,
                      nameAlt: RoutePath.editCustomer,
                      page: (context, state) => const EditCustomer(),
                    )
                  ]),
              TransitionRoute(
                  name: RoutePath.addCustomerKYC,
                  nameAlt: RoutePath.addCustomerKYC,
                  page: (context, state) => const AddCustomerKYC(),
                  routes: [
                    TransitionRoute(
                        name: RoutePath.addCustomerPan,
                        nameAlt: RoutePath.addCustomerPan,
                        page: (context, state) => const AddCustomerPAN(),
                        routes: [
                          TransitionRoute(
                              name: RoutePath.addCustomerPersonalDetails,
                              nameAlt: RoutePath.addCustomerPersonalDetails,
                              page: (context, state) =>
                                  const AddCustomerPersonalDetails(),
                              routes: [
                                TransitionRoute(
                                    name: RoutePath.addCustomerNomineeDetails,
                                    nameAlt:
                                        RoutePath.addCustomerNomineeDetails,
                                    page: (context, state) =>
                                        const AddCustomerNomineeDetails(),
                                    routes: [
                                      TransitionRoute(
                                          name: RoutePath
                                              .addCustomerParentsDetails,
                                          nameAlt: RoutePath
                                              .addCustomerParentsDetails,
                                          page: (context, state) =>
                                              const AddCustomerParentsDetails(),
                                          routes: [
                                            TransitionRoute(
                                                name: RoutePath
                                                    .addCustomerBankDetails,
                                                nameAlt: RoutePath
                                                    .addCustomerBankDetails,
                                                page: (context, state) =>
                                                    const AddCustomerBankDetails(),
                                                routes: [
                                                  TransitionRoute(
                                                    name: RoutePath
                                                        .addCustomerBankverifiaction,
                                                    nameAlt: RoutePath
                                                        .addCustomerBankverifiaction,
                                                    page: (context, state) =>
                                                        const BankVerification(),
                                                  ),
                                                  TransitionRoute(
                                                    name: RoutePath
                                                        .addCustomerBankverified,
                                                    nameAlt: RoutePath
                                                        .addCustomerBankverified,
                                                    page: (context, state) =>
                                                        const BankVerified(),
                                                  ),
                                                ]),
                                          ]),
                                    ]),
                              ]),
                        ]),
                  ]),
            ],
          ),
        ],
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
GoRoute TransitionRoute({
  required String name,
  required Widget Function(BuildContext, GoRouterState)? page,
  String? nameAlt,
  bool isShellRouting = false,
  List<RouteBase> routes = const <RouteBase>[],
}) {
  return GoRoute(
    path: name,
    name: nameAlt,
    pageBuilder: !isShellRouting
        ? null
        : (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: page!.call(context, state),
              transitionDuration: const Duration(milliseconds: 50),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
    builder: isShellRouting
        ? null
        : (context, state) {
            return page!.call(context, state);
          },
    routes: routes,
  );
}
