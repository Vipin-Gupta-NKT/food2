import 'package:dg_supermart/Constants/styles.dart';
import 'package:dg_supermart/Functions/common.dart';
import 'package:dg_supermart/Widgets/Common/custome_button.dart';
import 'package:dg_supermart/Widgets/Common/custome_text_input.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();

  TextEditingController controller1 = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  int which = 1;
  bool restro = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          child: Container(
            height: getHeight(context),
            color: Colors.white,
            child: Column(
              children: [
                20.heightBox,
                Image.asset(
                  "assets/images/logo.png",
                  height: 150,
                ),
                40.heightBox,
                const SizedBox(
                  child: Text(
                    "LOGIN",
                    style: appBold18,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      CustomInputField(
                          showIcon: true,
                          isEmail: true,
                          errorMessage: "ex - customer@xyz.xyz",
                          hintIcon: const Icon(Icons.email),
                          hint: "Enter email address",
                          label: "Email Address",
                          textEditingController: controller),
                      10.heightBox,
                      CustomInputField(
                          showIcon: true,
                          isPassword: true,
                          hintIcon: const Icon(Icons.password),
                          hint: "Enter your password",
                          label: "Password",
                          textEditingController: controller1),
                      10.heightBox,
                      InkWell(
                          onTap: () {
                            // forgetPassword();
                          },
                          child: const Text(
                            "Forgot Password ?",
                            style: app16BlackLight,
                          )).objectCenterRight(),
                      const SizedBox(
                        height: 30.0,
                      ),
                      CustomButtonElevated(text: "LOGIN", onTap: _login),
                      10.heightBox,
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                          onTap: () {
                            // _signUp();
                          },
                          child: const Text(
                            "Not a customer yet ? Sign up here",
                            style: appBold16,
                          )),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _login() {}

  // forgetPassword() async {
  //   String email = controller.text;
  //   if (!isEmailValid(email)) {
  //     showToast("Enter a valid mail address", context);
  //     return;
  //   }
  //   await _auth.sendPasswordResetEmail(email: email).then((value) {
  //     showToast("Password reset mail has been sent to $email.", context);
  //   }).catchError((onError) =>
  //       showToast("Some error while sending reset email.", context));
  // }

  // _login() async {
  //   if (_formKey.currentState!.validate()) {
  //     ProgressDialog progressDialog = ProgressDialog(context: context);
  //     progressDialog.show(max: 100, msg: pleaseWait);
  //     int res =
  //         await signIn(email: controller.text, password: controller1.text);
  //     if (res == 1) {
  //       User? user = FirebaseAuth.instance.currentUser;
  //       print("user uid is ${which}");
  //       if (user != null) {
  //         if (which == 1) {
  //           var resp =
  //               await AuthProvider().getUserDetails(user.uid, which.toString());
  //           if (resp == 2) {
  //             progressDialog.close();
  //             showToast("Check your credentials", context);
  //             return;
  //           }
  //           SharedPrefData.setCustomerLogin(resp);
  //           showToast("Login Successfull", context);
  //           progressDialog.close();
  //           navigateToPageReplaceMent(context, const CustomerHome());
  //         } else {
  //           var resp =
  //               await AuthProvider().getUserDetails(user.uid, which.toString());
  //           if (resp == 2) {
  //             progressDialog.close();
  //             showToast("Check your credentials", context);
  //             return;
  //           }
  //           SharedPrefData.setRestroLogin(resp);
  //           showToast("Login Successfull", context);
  //           progressDialog.close();
  //           navigateToPageReplaceMent(context, const RestaurantHome());
  //         }
  //         SharedPrefData.setLoggedIn(true);
  //         SharedPrefData.setRestroOrCustomer(which.toString());
  //       }
  //     } else {
  //       progressDialog.close();
  //       showToast("Check your credentials", context);
  //     }
  //   }
  // }

  // _signUp() {
  //   navigateToPageWithoutReplaceMent(context, const SignUpPage());
  // }

  // Future<int> signIn({required String email, required String password}) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(email: email, password: password);
  //     return 1;
  //   } on FirebaseAuthException {
  //     return 2;
  //   }
  // }

  // showNotifi() async {
  //   var scheduledData = DateTime.now().add(const Duration(seconds: 10));
  //   var androidPlatformChannelSpecifies = const AndroidNotificationDetails(
  //       'alarm_notif', 'alarm_notif',
  //       channelDescription: 'Channel for alarm notification',
  //       icon: 'applogo',
  //       largeIcon: DrawableResourceAndroidBitmap('applogo'));

  //   var platformChannelSpecifics =
  //       NotificationDetails(android: androidPlatformChannelSpecifies);
  //   await flutterLocalNotificationsPlugin.schedule(
  //       0, "Office", "Goo morning ", scheduledData, platformChannelSpecifics);
  // }
}
