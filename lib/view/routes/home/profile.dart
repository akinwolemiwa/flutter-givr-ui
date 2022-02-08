import 'package:flutter/material.dart';
import 'package:givr/res/size_config.dart';
import 'package:givr/view/widgets/profilewidgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: getPropScreenHeight(71),
              ),
              const ProfileHeader(),
              SizedBox(
                height: getPropScreenHeight(23),
              ),
              const ProfileInfo(),
              SizedBox(
                height: getPropScreenHeight(3),
              ),
              const UserLocation(),
              SizedBox(
                height: getPropScreenHeight(52),
              ),
              const ViewDonations(),
              SizedBox(
                height: getPropScreenHeight(25),
              ),
              const ContactDetails(),
              SizedBox(
                height: getPropScreenHeight(25),
              ),
              const ProfileSettings(),
              SizedBox(
                height: getPropScreenHeight(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
