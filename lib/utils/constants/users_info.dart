import '../../model/user_info.dart';

import '../app_images.dart';

class UsersInfo {
  UsersInfo._();

  static final List<UserInfo> usersInfoList = [
    const UserInfo(
      name: 'Lekan Okeowo',
      email: 'demo@gmail.com',
      photoUrl: Assets.imagesAvatar3,
    ),
  ];
}
