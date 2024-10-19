import 'package:crispy_admin/model/res/routes/routes_name.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../constant.dart';
import '../../../controller/menu_App_Controller.dart';
import '../constant/app_assets.dart';
import '../constant/app_icons.dart';

class Header extends StatelessWidget {
  final GlobalKey _avatarKey = GlobalKey(); // Key for the avatar
  final GlobalKey _bellKey = GlobalKey();   // Key for the bell icon

   Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 10.h,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: greyColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Avatar Icon
              InkWell(
                key: _avatarKey, // Attach the key to the avatar InkWell
                onTap: () {
                  _showCustomPopupMenu(context, _buildProfilePopUp(context), _avatarKey);
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.lady) as ImageProvider,
                ),
              ),
              SizedBox(width: 2.w),

              // Bell Icon for Notifications
              InkWell(
                key: _bellKey, // Attach the key to the bell icon InkWell
                onTap: () {
                  _showCustomPopupMenu(context, _buildNotificationList(), _bellKey);
                },
                child: SvgPicture.asset(
                  AppIcons.notification,
                  color: primaryColor,
                  height: 30,
                ),
              ),
              SizedBox(width: 2.w),

              // Settings Icon
              InkWell(
                onTap: () {
                  Provider.of<MenuAppController>(context, listen: false)
                      .updateSelectedIndex(4);
                },
                child: SvgPicture.asset(
                  AppIcons.setting,
                  height: 30,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Updated showPopupMenu function to work with dynamic keys
  void _showCustomPopupMenu(BuildContext context, Widget child, GlobalKey key) {
    // Get the size and position of the widget (avatar/bell) using the GlobalKey
    final RenderBox iconBox = key.currentContext!.findRenderObject() as RenderBox;
    final Offset iconPosition = iconBox.localToGlobal(Offset.zero);
    final Size iconSize = iconBox.size;

    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      position: RelativeRect.fromLTRB(
        iconPosition.dx,                      // X-axis position of the icon
        iconPosition.dy + iconSize.height + 10,    // Y-axis position, below the icon
        overlay.size.width - iconPosition.dx - 100, // Right boundary calculation
        0,                                    // Bottom boundary
      ),
      items: [
        PopupMenuItem(
          enabled: false,
          child: child,
        ),
      ],
    );
  }

  // Profile Popup
  Widget _buildProfilePopUp(context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        width: 120,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(AppAssets.lady) as ImageProvider,
            ),
            const AppTextWidget(
              text: "Mian Uzair",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            SizedBox(height: 1.h,),
            InkWell(
              onTap: () {
                Provider.of<MenuAppController>(context, listen: false)
                    .updateSelectedIndex(5);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppIcons.eye,
                      height: 15,
                      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    SizedBox(width: 1.h),
                    const AppTextWidget(
                      text: "View Profile",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: textGreyColor,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Provider.of<MenuAppController>(context, listen: false)
                    .updateSelectedIndex(6);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppIcons.editProfilee,
                      height: 15,
                      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    SizedBox(width: 1.h),
                    const AppTextWidget(
                      text: "Edit Profile",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: textGreyColor,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(RoutesName.loginScreen);

              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppIcons.exit,
                      height: 15,
                      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    SizedBox(width: 0.6.h),
                    const AppTextWidget(
                      text: "Log Out",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: textGreyColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Notification Popup
  Widget _buildNotificationList() {
    return SizedBox(
      width: 50.w,
      height: 400,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTextWidget(
                  text: "Notifications",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                TextButton(
                  style: ButtonStyle(
                    surfaceTintColor: WidgetStatePropertyAll(primaryColor),
                    foregroundColor:  WidgetStatePropertyAll(primaryColor),
                    shadowColor:  WidgetStatePropertyAll(primaryColor),

                  ),
                  onPressed: () {

                    // Clear all functionality
                  },
                  child: const AppTextWidget(
                    text: "Clear All",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: textGreyColor,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          SizedBox(height: 8),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 6, // Number of notifications
              itemBuilder: (context, index) {
                return _notificationItem();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _notificationItem() {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(AppAssets.lady), // Replace with user image
        radius: 24,
      ),
      title: const AppTextWidget(
        text: "Tarvis Tramble",
        fontSize: 14,
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.start,

      ),
      subtitle: const AppTextWidget(
        text: "Sent a Report To alex ",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        textAlign: TextAlign.start,
      ),
      trailing: const AppTextWidget(
        text: "8:30pm",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textGreyColor,
        textAlign: TextAlign.start,

      ),
      isThreeLine: true,
      onTap: () {
        // Handle notification tap
      },
    );
  }
}
