import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/common/utils/snackbar_util.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';
import 'package:whatsapp_clone/util/colors.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void pickCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (value) {
        debugPrint(value.phoneCode);
        setState(() {
          country = value;
        });
      },
    );
  }

  void sendPhoneNumber() {
    String phoneNumber = _phoneController.text.trim();

    if (country != null && phoneNumber.isNotEmpty) {
      ref.read(authControllerProvider).signInWithPhone(
            context: context,
            phoneNumber: '+${country?.phoneCode}${_phoneController.text}',
          );
    } else {
      showSnackbar(
        context: context,
        content: 'Fill all the fields!',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your mobile number'),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('WhatsApp will need to verify your phone number'),
            const SizedBox(height: 10),
            Flexible(
              child: TextButton(
                onPressed: () {
                  pickCountry(context);
                },
                child: const Text('Pick a Country'),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (country != null) Text('+${country?.phoneCode.toString()}'),
                const SizedBox(width: 10),
                SizedBox(
                  width: 0.7.sw,
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                title: 'NEXT',
                onTap: country?.phoneCode == null
                    ? null
                    : () {
                        if (country != null &&
                            _phoneController.text.isNotEmpty) {
                          final enteredNumber =
                              '+${country?.phoneCode}${_phoneController.text}';
                          debugPrint('Entered Number => $enteredNumber');
                          sendPhoneNumber();
                        }
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
