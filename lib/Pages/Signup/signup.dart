// import 'package:firebase_auth/firebase_auth.dart';
import 'package:dg_supermart/Constants/styles.dart';
import 'package:dg_supermart/Widgets/Common/custome_button.dart';
import 'package:dg_supermart/Widgets/Common/custome_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user => _auth.currentUser;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                    "Sign Up",
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
                          hintIcon: const Icon(Icons.email),
                          hint: "Enter email address",
                          label: "Email Address",
                          textEditingController: controller1),
                      10.heightBox,
                      CustomInputField(
                          showIcon: true,
                          hintIcon: const Icon(Icons.password),
                          hint: "Create a password",
                          label: "Password",
                          textEditingController: controller2),
                      10.heightBox,
                      CustomInputField(
                          showIcon: true,
                          hintIcon: const Icon(Icons.person),
                          hint: "Enter your name",
                          label: "User Name",
                          textEditingController: controller3),
                      10.heightBox,
                      CustomInputField(
                          showIcon: true,
                          hintIcon: const Icon(Icons.phone),
                          hint: "Enter your phone number",
                          label: "Phone Number",
                          textEditingController: controller4),
                      10.heightBox,
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomButtonElevated(text: "SIGN UP", onTap: _signUp),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      "-----OR-----".text.makeCentered(),
                      10.heightBox,
                      InkWell(
                          // onTap: () => _login(),
                          child: const Text(
                        "Have an account ? Login",
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

  _signUp() {}

  // _signRestro() {
  //   navigateToPageWithoutReplaceMent(context, const SignUpRestaurant());
  // }

  // _login() {
  //   navigateToPageWithoutReplaceMent(context, const LoginPage());
  // }

  // _signUp() async {
  //   if (_formKey.currentState!.validate()) {
  //     ProgressDialog progressDialog = ProgressDialog(context: context);
  //     progressDialog.show(max: 100, msg: pleaseWait);
  //     int resp =
  //         await signUp(email: controller1.text, password: controller2.text);
  //     print("resp 1 is $resp");
  //     if (resp == 1) {
  //       User? user = FirebaseAuth.instance.currentUser;
  //       print("user is $user");
  //       if (user != null) {
  //         List resp2 = await AuthProvider().registerNewUser({
  //           'name': controller3.text,
  //           'email': controller1.text,
  //           'uid': user.uid,
  //           'phone': controller4.text
  //         });
  //         print('response is $resp2');
  //         if (resp2[0] == 1) {
  //           SharedPrefData.setCustomerLogin(LoginModelCustomer(controller3.text,
  //               controller1.text, user.uid, controller4.text, resp2[1]));
  //           SharedPrefData.setRestroOrCustomer("1");
  //           SharedPrefData.setLoggedIn(true);
  //           showToast("Sign Up Successfull", context);
  //           progressDialog.close();
  //           navigateToPageReplaceMent(context, const CustomerHome());
  //         } else {
  //           progressDialog.close();
  //           showToast("Some technical error", context);
  //         }
  //       } else {
  //         progressDialog.close();
  //         showToast("Some technical error", context);
  //       }
  //     } else {
  //       progressDialog.close();
  //       showToast("Check Your credentials", context);
  //     }
  //   }
  // }

  // Future<int> signUp({required String email, required String password}) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     return 1;
  //   } on FirebaseAuthException {
  //     return 2;
  //   }
  // }
}
