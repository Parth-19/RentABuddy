import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFrameGray70028x28,
      activeIcon: ImageConstant.imgFrameGray70028x28,
      type: BottomBarEnum.Framegray70028x28,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameErrorcontainer,
      activeIcon: ImageConstant.imgFrameErrorcontainer,
      type: BottomBarEnum.Frameerrorcontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame30x32,
      activeIcon: ImageConstant.imgFrame30x32,
      type: BottomBarEnum.Frame30x32,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame,
      activeIcon: ImageConstant.imgFrame,
      type: BottomBarEnum.Frame,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(6.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90002.withOpacity(0.32),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              17,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: theme.colorScheme.errorContainer,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: appTheme.gray700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Framegray70028x28,
  Frameerrorcontainer,
  Frame30x32,
  Frame,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
