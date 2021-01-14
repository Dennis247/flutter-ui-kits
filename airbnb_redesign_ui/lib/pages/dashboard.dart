import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/widgets/home_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(
                child: SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/menu.svg"),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20.0,
                    backgroundImage: AssetImage(
                      "assets/images/dp.png",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Let’s Find Your\nApartments",
                style: TextStyle(
                  fontSize: 26.0,
                  height: 1.5,
                  color: Color.fromRGBO(33, 45, 82, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: ScreenUtil().setHeight(59.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 251, 251, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 8.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search your apartments....",
                          hintStyle: GoogleFonts.inter(
                            color: Color.fromRGBO(153, 163, 196, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(50.0),
                      width: ScreenUtil().setWidth(50.0),
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        FlutterIcons.search1_ant,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
