import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/reset_pwd.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import '../../common/color_extention.dart';
import '../../common_widgets/round_btn.dart';
import '../../common_widgets/round_textfield.dart';

class OtpViewState extends StatefulWidget {
  const OtpViewState({super.key});

  @override
  State<OtpViewState> createState() => _OtpViewStateState();
}

class _OtpViewStateState extends State<OtpViewState> {
  //otp controller
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 64),
              Text(
                'We have Sent you an OTP on Your Registered Number.',
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Tcolor.primary_text,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Please check your messages for the otp. \n Continue to reset your Password',
                style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Tcolor.secondary_text,
                ),
              ),
              SizedBox(height: 60,),
              SizedBox(height:60,child:
                        OtpPinField(
                            key: _otpPinFieldController,
                            autoFillEnable: false,

                            ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                            textInputAction: TextInputAction.done,

                            ///in case you want to change the action of keyboard
                            /// to clear the Otp pin Controller
                            onSubmit: (text) {
                              print('Entered pin is $text');

                              /// return the entered pin
                            },
                            onChange: (text) {
                              print('Enter on change pin is $text');

                              /// return the entered pin
                            },
                            onCodeChanged: (code) {
                              print('onCodeChanged  is $code');
                            },

                            /// to decorate your Otp_Pin_Field
                            otpPinFieldStyle: OtpPinFieldStyle(
                              /// border color for inactive/unfocused Otp_Pin_Field
                              defaultFieldBorderColor: Tcolor.secondary_text,

                              /// border color for active/focused Otp_Pin_Field
                              activeFieldBorderColor: Tcolor.primary,

                              /// Background Color for inactive/unfocused Otp_Pin_Field
                              defaultFieldBackgroundColor: Colors.white,

                              /// Background Color for active/focused Otp_Pin_Field
                              activeFieldBackgroundColor: Colors.white,

                            ),
                            maxLength: 4,

                            /// no of pin field
                            showCursor: true,

                            /// bool to show cursor in pin field or not
                            cursorColor: Colors.indigo,

                            /// to choose cursor color
                            upperChild: const Column(
                              children: [
                                SizedBox(height: 30),
                                Icon(Icons.flutter_dash_outlined, size: 150),
                                SizedBox(height: 20),
                              ],
                            ),

                            showCustomKeyboard: true,

                            ///bool which manage to show custom keyboard
                            // customKeyboard: Container(),
                            /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                            showDefaultKeyboard: true,

                            ///bool which manage to show default OS keyboard
                            cursorWidth: 3,

                            /// to select cursor width
                            mainAxisAlignment: MainAxisAlignment.center,

                            /// place otp pin field according to yourself

                            /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                            ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                            otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration),

                ),



              const SizedBox(height: 30,),
              RoundButton(title: "Next", onPressed: (){}),
              const SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Didn't Received Code ?"
                    ,style: TextStyle(
                        color: Tcolor.secondary_text,
                        fontSize: 14 ,fontWeight: FontWeight.w500),),

                  TextButton (
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ResetPaswordView()));
                      },
                      child:Text('Click Here'
                        ,style: TextStyle(
                            color: Tcolor.primary,
                            fontSize: 14,fontWeight: FontWeight.w700),),),

                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
