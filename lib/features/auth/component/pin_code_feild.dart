import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled5/public/style.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: PinCodeTextField(
          appContext: context,
          //  controller: cubit.OTP ,
          enablePinAutofill: true,
          autoDismissKeyboard: true,
          enableActiveFill: true,
          errorTextDirection: TextDirection.ltr,
          //  validator: (value) => Validator.pinCode(value!),
          pastedTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          pinTheme: PinTheme(
              selectedColor: colorPrimary,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 40,
              inactiveColor: Colors.grey,
              activeColor: colorPrimary,
              fieldWidth: 40,
              activeFillColor: Colors.white,
              selectedFillColor: Colors.white,
              inactiveFillColor: Colors.white,
            disabledColor: Colors.white
          ),
          length: 6,
          textStyle: const TextStyle(locale: Locale('en')),
          hintStyle: const TextStyle(locale: Locale('en')),
          cursorColor: colorPrimary,
          keyboardType: TextInputType.number, onChanged: (String value) {},
          // onChanged: (value)=>cubit.OTP,
        ),
      ),
    );
  }
}
