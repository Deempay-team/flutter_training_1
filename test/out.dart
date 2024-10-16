// @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false,
//       onPopInvoked: (didPop) {
//         Utils.exitApp();
//       },
//       child: Scaffold(
//           backgroundColor: Theme.of(context).colorScheme.surface,
//           body: SafeArea(
//               child: Center(
//             child: SingleChildScrollView(
//               child: Container(
//                   alignment: Alignment.center,
//                   child: BlocBuilder<LoginCubit, LoginState>(
//                     builder: (context, state) {
//                       if (state is LoginInitial) {
//                         pwdHide = true;
//                       } else if (state is LoginHidePwd) {
//                         final bool newHidePwd = state.hidePwd;
//                         pwdHide = newHidePwd;
//                       } else if (state is LoginInit) {
//                         isPreviousUser = state.isPreviousUser;
//                         firstName = state.firstName;
//                         phoneController.text = state.phoneNumber;
//                         isShowEraseTick = state.isShowEraseTick;
//                       } else if (state is LoginUserRoleLoaded) {
//                         userRoleList = state.userRoleList;
//                         userRolesBiz = state.userRolesBiz;

//                         WidgetsBinding.instance.addPostFrameCallback((_) {
//                           // print('Am done to it');

//                           //Utils.showNoInternetDialog(context);
//                           // Add Your Code here.
//                           final loginCubit = context.read<LoginCubit>();

//                           if (context.mounted) {
//                             showDialog(
//                               barrierDismissible: false,
//                               context: context,
//                               builder: (BuildContext contextDialog) =>
//                                   BlocProvider<LoginCubit>.value(
//                                       value: loginCubit,
//                                       child: selectBizDialog(contextDialog,
//                                           context, userRolesBiz, userRoleList)),
//                             );
//                           }
//                         });
//                       } else if (state is LoginAccountSelected) {
//                         selectedBizAccount = state.selectedAccount;
//                       } else if (state is LoginUpdateTicker) {
//                         isShowEraseTick = state.isShowTicker;
//                       } else if (state is LoginUpdateIsEnableBiometric) {
//                         isEnableBiometricDialog = state.isEnableBiometricDialog;
//                       }
//                       return Visibility(
//                           visible: !isPreviousUser,
//                           replacement: prevoiusUserLogin(context),
//                           child: newUserLogin(context));
//                     },
//                   )),
//             ),
//           ))),
//     );
//   }