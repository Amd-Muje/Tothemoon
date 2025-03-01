import 'package:flutter/material.dart';
import 'package:tothemoon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          height: _deviceHeight,
          width: _deviceWidth,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_text(), _bookRideWidget()],
              ),
              Align(
                alignment: Alignment.topCenter,
                child:_logo(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _text() {
    return const Text(
      "ToTheMoon",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 60,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _logo() {
    return Container(
      height: _deviceHeight,
      width: _deviceWidth ,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astronaut.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButtonClass(
        values: const ['mujesukamakan nasi', 'wow makan orang'],
        width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: ['1', '2', '3'],
          width: _deviceWidth * 0.40,
        ),
        CustomDropdownButtonClass(
          values: ['Economy', 'Business', 'Luxury'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
