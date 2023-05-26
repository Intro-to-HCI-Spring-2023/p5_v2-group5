import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/utils/utils.dart';

class Feed {
  int id, userId;
  String createdAt;
  String description1 =
      'You received a payment of \$35.0 from Simba Maxwell';
  String description2 =
      'You received a payment of \$55.0 from  Angela Qu';
  String description3 =
      'You received a payment of \$33.20 from  Harold Cheng';
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;

  Feed(this.id, this.createdAt, this.userId, this.userName, this.userImage);
}

final List<Feed> feeds = [
  Feed(1, '19 Aug', users[0].id, users[0].name, users[0].photo),
  Feed(2, '20 Aug', users[1].id, users[1].name, users[1].photo),
  Feed(3, '22 Aug', users[2].id, users[2].name, users[2].photo),
  Feed(4, '1 Sept', users[3].id,users[3].name, users[3].photo),
];
