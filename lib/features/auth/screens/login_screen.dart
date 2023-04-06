import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/util/colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
