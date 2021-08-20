import 'dart:convert';

Videos videosFromJson(String str) => Videos.fromJson(json.decode(str));

String videosToJson(Videos data) => json.encode(data.toJson());

class Videos {
  Videos({
    required this.apiStatus,
    required this.apiVersion,
    required this.data,
  });

  String apiStatus;
  String apiVersion;
  Data data;

  factory Videos.fromJson(Map<String, dynamic> json) => Videos(
        apiStatus: json["api_status"],
        apiVersion: json["api_version"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "api_status": apiStatus,
        "api_version": apiVersion,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.featured,
    required this.top,
    required this.latest,
    required this.fav,
    required this.live,
  });

  List<Featured> featured;
  List<Featured> top;
  List<Featured> latest;
  List<dynamic> fav;
  List<dynamic> live;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        featured: List<Featured>.from(
            json["featured"].map((x) => Featured.fromJson(x))),
        top: List<Featured>.from(json["top"].map((x) => Featured.fromJson(x))),
        latest: List<Featured>.from(
            json["latest"].map((x) => Featured.fromJson(x))),
        fav: List<dynamic>.from(json["fav"].map((x) => x)),
        live: List<dynamic>.from(json["live"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "featured": List<dynamic>.from(featured.map((x) => x.toJson())),
        "top": List<dynamic>.from(top.map((x) => x.toJson())),
        "latest": List<dynamic>.from(latest.map((x) => x.toJson())),
        "fav": List<dynamic>.from(fav.map((x) => x)),
        "live": List<dynamic>.from(live.map((x) => x)),
      };
}

class Featured {
  Featured({
    required this.id,
    required this.videoId,
    required this.userId,
    required this.shortId,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.videoLocation,
    required this.youtube,
    required this.vimeo,
    required this.daily,
    required this.facebook,
    required this.ok,
    required this.twitch,
    required this.twitchType,
    required this.time,
    required this.timeDate,
    required this.active,
    required this.tags,
    required this.duration,
    required this.size,
    required this.converted,
    required this.categoryId,
    required this.views,
    required this.featured,
    required this.registered,
    required this.privacy,
    required this.ageRestriction,
    required this.type,
    required this.approved,
    required this.the240P,
    required this.the360P,
    required this.the480P,
    required this.the720P,
    required this.the1080P,
    required this.the2048P,
    required this.the4096P,
    required this.sellVideo,
    required this.subCategory,
    required this.geoBlocking,
    required this.demo,
    required this.gif,
    required this.isMovie,
    required this.stars,
    required this.producer,
    required this.country,
    required this.movieRelease,
    required this.quality,
    required this.rating,
    required this.monetization,
    required this.rentPrice,
    required this.streamName,
    required this.liveTime,
    required this.liveEnded,
    required this.agoraResourceId,
    required this.agoraSid,
    required this.agoraToken,
    required this.license,
    required this.isStock,
    required this.trailer,
    required this.embedding,
    required this.liveChating,
    required this.publicationDate,
    required this.orgThumbnail,
    required this.featuredVideoId,
    required this.source,
    required this.videoType,
    required this.url,
    required this.editDescription,
    required this.markupDescription,
    required this.owner,
    required this.isLiked,
    required this.isDisliked,
    required this.isOwner,
    required this.isPurchased,
    required this.timeAlpha,
    required this.timeAgo,
    required this.categoryName,
  });

  int id;
  String videoId;
  int userId;
  String shortId;
  String title;
  String description;
  String thumbnail;
  String videoLocation;
  String youtube;
  String vimeo;
  String daily;
  String facebook;
  String ok;
  String twitch;
  String twitchType;
  int time;
  DateTime timeDate;
  int active;
  String tags;
  String duration;
  int size;
  int converted;
  String categoryId;
  int views;
  int featured;
  Registered registered;
  int privacy;
  int ageRestriction;
  String type;
  int approved;
  int the240P;
  int the360P;
  int the480P;
  int the720P;
  int the1080P;
  int the2048P;
  int the4096P;
  int sellVideo;
  String subCategory;
  String geoBlocking;
  String demo;
  String gif;
  int isMovie;
  String stars;
  String producer;
  String country;
  String movieRelease;
  String quality;
  String rating;
  int monetization;
  int rentPrice;
  String streamName;
  int liveTime;
  int liveEnded;
  dynamic agoraResourceId;
  String agoraSid;
  dynamic agoraToken;
  String license;
  int isStock;
  String trailer;
  int embedding;
  LiveChating liveChating;
  int publicationDate;
  String orgThumbnail;
  String featuredVideoId;
  Source source;
  VideoType videoType;
  String url;
  String editDescription;
  String markupDescription;
  Owner owner;
  int isLiked;
  int isDisliked;
  bool isOwner;
  int isPurchased;
  String timeAlpha;
  String timeAgo;
  CategoryName categoryName;

  factory Featured.fromJson(Map<String, dynamic> json) => Featured(
        id: json["id"],
        videoId: json["video_id"],
        userId: json["user_id"],
        shortId: json["short_id"],
        title: json["title"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        videoLocation: json["video_location"],
        youtube: json["youtube"],
        vimeo: json["vimeo"],
        daily: json["daily"],
        facebook: json["facebook"],
        ok: json["ok"],
        twitch: json["twitch"],
        twitchType: json["twitch_type"],
        time: json["time"],
        timeDate: DateTime.parse(json["time_date"]),
        active: json["active"],
        tags: json["tags"],
        duration: json["duration"],
        size: json["size"],
        converted: json["converted"],
        categoryId: json["category_id"],
        views: json["views"],
        featured: json["featured"],
        registered: registeredValues.map[json["registered"]]!,
        privacy: json["privacy"],
        ageRestriction: json["age_restriction"],
        type: json["type"],
        approved: json["approved"],
        the240P: json["240p"],
        the360P: json["360p"],
        the480P: json["480p"],
        the720P: json["720p"],
        the1080P: json["1080p"],
        the2048P: json["2048p"],
        the4096P: json["4096p"],
        sellVideo: json["sell_video"],
        subCategory: json["sub_category"],
        geoBlocking: json["geo_blocking"],
        demo: json["demo"],
        gif: json["gif"],
        isMovie: json["is_movie"],
        stars: json["stars"],
        producer: json["producer"],
        country: json["country"],
        movieRelease: json["movie_release"],
        quality: json["quality"],
        rating: json["rating"],
        monetization: json["monetization"],
        rentPrice: json["rent_price"],
        streamName: json["stream_name"],
        liveTime: json["live_time"],
        liveEnded: json["live_ended"],
        agoraResourceId: json["agora_resource_id"],
        agoraSid: json["agora_sid"],
        agoraToken: json["agora_token"],
        license: json["license"],
        isStock: json["is_stock"],
        trailer: json["trailer"],
        embedding: json["embedding"],
        liveChating: liveChatingValues.map[json["live_chating"]]!,
        publicationDate: json["publication_date"],
        orgThumbnail: json["org_thumbnail"],
        featuredVideoId: json["video_id_"],
        source: sourceValues.map[json["source"]]!,
        videoType: videoTypeValues.map[json["video_type"]]!,
        url: json["url"],
        editDescription: json["edit_description"],
        markupDescription: json["markup_description"],
        owner: Owner.fromJson(json["owner"]),
        isLiked: json["is_liked"],
        isDisliked: json["is_disliked"],
        isOwner: json["is_owner"],
        isPurchased: json["is_purchased"],
        timeAlpha: json["time_alpha"],
        timeAgo: json["time_ago"],
        categoryName: categoryNameValues.map[json["category_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "video_id": videoId,
        "user_id": userId,
        "short_id": shortId,
        "title": title,
        "description": description,
        "thumbnail": thumbnail,
        "video_location": videoLocation,
        "youtube": youtube,
        "vimeo": vimeo,
        "daily": daily,
        "facebook": facebook,
        "ok": ok,
        "twitch": twitch,
        "twitch_type": twitchType,
        "time": time,
        "time_date": timeDate.toIso8601String(),
        "active": active,
        "tags": tags,
        "duration": duration,
        "size": size,
        "converted": converted,
        "category_id": categoryId,
        "views": views,
        "featured": featured,
        "registered": registeredValues.reverse[registered],
        "privacy": privacy,
        "age_restriction": ageRestriction,
        "type": type,
        "approved": approved,
        "240p": the240P,
        "360p": the360P,
        "480p": the480P,
        "720p": the720P,
        "1080p": the1080P,
        "2048p": the2048P,
        "4096p": the4096P,
        "sell_video": sellVideo,
        "sub_category": subCategory,
        "geo_blocking": geoBlocking,
        "demo": demo,
        "gif": gif,
        "is_movie": isMovie,
        "stars": stars,
        "producer": producer,
        "country": country,
        "movie_release": movieRelease,
        "quality": quality,
        "rating": rating,
        "monetization": monetization,
        "rent_price": rentPrice,
        "stream_name": streamName,
        "live_time": liveTime,
        "live_ended": liveEnded,
        "agora_resource_id": agoraResourceId,
        "agora_sid": agoraSid,
        "agora_token": agoraToken,
        "license": license,
        "is_stock": isStock,
        "trailer": trailer,
        "embedding": embedding,
        "live_chating": liveChatingValues.reverse[liveChating],
        "publication_date": publicationDate,
        "org_thumbnail": orgThumbnail,
        "video_id_": featuredVideoId,
        "source": sourceValues.reverse[source],
        "video_type": videoTypeValues.reverse[videoType],
        "url": url,
        "edit_description": editDescription,
        "markup_description": markupDescription,
        "owner": owner.toJson(),
        "is_liked": isLiked,
        "is_disliked": isDisliked,
        "is_owner": isOwner,
        "is_purchased": isPurchased,
        "time_alpha": timeAlpha,
        "time_ago": timeAgo,
        "category_name": categoryNameValues.reverse[categoryName],
      };
}

enum CategoryName {
  EDUCATIONAL,
  KIDS_SPECIAL,
  MUSIC,
  PEOPLE_BLOGS,
  TRAVEL_EVENTS,
  NEWS_POLITICS,
  ENTERTAINMENT,
  CARTOON,
  HOW_TO_STYLE,
  GAMING,
  PETS_ANIMALS,
  COMEDY,
  OTHER,
  SPORTS,
  NON_PROFITS_ACTIVISM
}

final categoryNameValues = EnumValues({
  "Cartoon": CategoryName.CARTOON,
  "Comedy": CategoryName.COMEDY,
  "Educational": CategoryName.EDUCATIONAL,
  "Entertainment": CategoryName.ENTERTAINMENT,
  "Gaming": CategoryName.GAMING,
  "How-to & Style": CategoryName.HOW_TO_STYLE,
  "Kids Special": CategoryName.KIDS_SPECIAL,
  "Music": CategoryName.MUSIC,
  "News & Politics": CategoryName.NEWS_POLITICS,
  "Non-profits & Activism": CategoryName.NON_PROFITS_ACTIVISM,
  "Other": CategoryName.OTHER,
  "People & Blogs": CategoryName.PEOPLE_BLOGS,
  "Pets & Animals": CategoryName.PETS_ANIMALS,
  "Sports": CategoryName.SPORTS,
  "Travel & Events": CategoryName.TRAVEL_EVENTS
});

enum LiveChating { ON }

final liveChatingValues = EnumValues({"on": LiveChating.ON});

class Owner {
  Owner({
    required this.id,
    required this.username,
    required this.email,
    required this.ipAddress,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.deviceId,
    required this.language,
    required this.avatar,
    required this.cover,
    required this.src,
    required this.countryId,
    required this.age,
    required this.about,
    required this.google,
    required this.facebook,
    required this.twitter,
    required this.instagram,
    required this.active,
    required this.admin,
    required this.verified,
    required this.lastActive,
    required this.registered,
    required this.time,
    required this.isPro,
    required this.imports,
    required this.uploads,
    required this.wallet,
    required this.balance,
    required this.videoMon,
    required this.ageChanged,
    required this.donationPaypalEmail,
    required this.userUploadLimit,
    required this.twoFactor,
    // required this.lastMonth,
    required this.activeTime,
    required this.activeExpire,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.state,
    required this.zip,
    required this.subscriberPrice,
    required this.monetization,
    required this.newEmail,
    required this.favCategory,
    required this.totalAds,
    required this.suspendUpload,
    required this.suspendImport,
    required this.paystackRef,
    required this.conversationId,
    required this.pointDayExpire,
    required this.points,
    required this.dailyPoints,
    required this.infoFile,
    required this.googleTrackingCode,
    required this.newsletters,
    required this.name,
    required this.exCover,
    required this.url,
    required this.aboutDecoded,
    required this.fullCover,
    required this.balanceOr,
    required this.nameV,
    required this.countryName,
    required this.genderText,
    required this.amISubscribed,
    required this.subscribeCount,
  });

  int id;
  String username;
  String email;
  String ipAddress;
  String firstName;
  String lastName;
  Gender gender;
  String deviceId;
  Language language;
  String avatar;
  String cover;
  String src;
  int countryId;
  int age;
  String about;
  String google;
  String facebook;
  String twitter;
  String instagram;
  int active;
  int admin;
  int verified;
  int lastActive;
  Registered registered;
  int time;
  int isPro;
  int imports;
  int uploads;
  double wallet;
  String balance;
  int videoMon;
  int ageChanged;
  DonationPaypalEmail donationPaypalEmail;
  String userUploadLimit;
  int twoFactor;
  // String lastMonth;
  int activeTime;
  String activeExpire;
  String phoneNumber;
  String address;
  String city;
  String state;
  int zip;
  String subscriberPrice;
  int monetization;
  String newEmail;
  List<String> favCategory;
  int totalAds;
  int suspendUpload;
  int suspendImport;
  String paystackRef;
  String conversationId;
  int pointDayExpire;
  int points;
  int dailyPoints;
  String infoFile;
  String googleTrackingCode;
  int newsletters;
  String name;
  String exCover;
  String url;
  String aboutDecoded;
  String fullCover;
  String balanceOr;
  String nameV;
  CountryName countryName;
  GenderText genderText;
  int amISubscribed;
  String subscribeCount;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        ipAddress: json["ip_address"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        gender: genderValues.map[json["gender"]]!,
        deviceId: json["device_id"],
        language: languageValues.map[json["language"]]!,
        avatar: json["avatar"],
        cover: json["cover"],
        src: json["src"],
        countryId: json["country_id"],
        age: json["age"],
        about: json["about"],
        google: json["google"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        instagram: json["instagram"],
        active: json["active"],
        admin: json["admin"],
        verified: json["verified"],
        lastActive: json["last_active"],
        registered: registeredValues.map[json["registered"]]!,
        time: json["time"],
        isPro: json["is_pro"],
        imports: json["imports"],
        uploads: json["uploads"],
        wallet: json["wallet"].toDouble(),
        balance: json["balance"],
        videoMon: json["video_mon"],
        ageChanged: json["age_changed"],
        donationPaypalEmail:
            donationPaypalEmailValues.map[json["donation_paypal_email"]]!,
        userUploadLimit: json["user_upload_limit"],
        twoFactor: json["two_factor"],
        // lastMonth: json["last_month"] == '' ? '' : json["last_month"],
        activeTime: json["active_time"],
        activeExpire: json["active_expire"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        zip: json["zip"],
        subscriberPrice: json["subscriber_price"],
        monetization: json["monetization"],
        newEmail: json["new_email"],
        favCategory: List<String>.from(json["fav_category"].map((x) => x)),
        totalAds: json["total_ads"],
        suspendUpload: json["suspend_upload"],
        suspendImport: json["suspend_import"],
        paystackRef: json["paystack_ref"],
        conversationId: json["ConversationId"],
        pointDayExpire: json["point_day_expire"],
        points: json["points"],
        dailyPoints: json["daily_points"],
        infoFile: json["info_file"],
        googleTrackingCode: json["google_tracking_code"],
        newsletters: json["newsletters"],
        name: json["name"],
        exCover: json["ex_cover"],
        url: json["url"],
        aboutDecoded: json["about_decoded"],
        fullCover: json["full_cover"],
        balanceOr: json["balance_or"],
        nameV: json["name_v"],
        countryName: countryNameValues.map[json["country_name"]]!,
        genderText: genderTextValues.map[json["gender_text"]]!,
        amISubscribed: json["am_i_subscribed"],
        subscribeCount: json["subscribe_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "ip_address": ipAddress,
        "first_name": firstName,
        "last_name": lastName,
        "gender": genderValues.reverse[gender],
        "device_id": deviceId,
        "language": languageValues.reverse[language],
        "avatar": avatar,
        "cover": cover,
        "src": src,
        "country_id": countryId,
        "age": age,
        "about": about,
        "google": google,
        "facebook": facebook,
        "twitter": twitter,
        "instagram": instagram,
        "active": active,
        "admin": admin,
        "verified": verified,
        "last_active": lastActive,
        "registered": registeredValues.reverse[registered],
        "time": time,
        "is_pro": isPro,
        "imports": imports,
        "uploads": uploads,
        "wallet": wallet,
        "balance": balance,
        "video_mon": videoMon,
        "age_changed": ageChanged,
        "donation_paypal_email":
            donationPaypalEmailValues.reverse[donationPaypalEmail],
        "user_upload_limit": userUploadLimit,
        "two_factor": twoFactor,
        // "last_month": lastMonth == '' ? '' : lastMonth,
        "active_time": activeTime,
        "active_expire": activeExpire,
        "phone_number": phoneNumber,
        "address": address,
        "city": city,
        "state": state,
        "zip": zip,
        "subscriber_price": subscriberPrice,
        "monetization": monetization,
        "new_email": newEmail,
        "fav_category": List<dynamic>.from(favCategory.map((x) => x)),
        "total_ads": totalAds,
        "suspend_upload": suspendUpload,
        "suspend_import": suspendImport,
        "paystack_ref": paystackRef,
        "ConversationId": conversationId,
        "point_day_expire": pointDayExpire,
        "points": points,
        "daily_points": dailyPoints,
        "info_file": infoFile,
        "google_tracking_code": googleTrackingCode,
        "newsletters": newsletters,
        "name": name,
        "ex_cover": exCover,
        "url": url,
        "about_decoded": aboutDecoded,
        "full_cover": fullCover,
        "balance_or": balanceOr,
        "name_v": nameV,
        "country_name": countryNameValues.reverse[countryName],
        "gender_text": genderTextValues.reverse[genderText],
        "am_i_subscribed": amISubscribed,
        "subscribe_count": subscribeCount,
      };
}

enum CountryName { SELECT_COUNTRY, BANGLADESH, INDIA, UNITED_STATES }

final countryNameValues = EnumValues({
  "Bangladesh": CountryName.BANGLADESH,
  "India": CountryName.INDIA,
  "Select Country": CountryName.SELECT_COUNTRY,
  "United States": CountryName.UNITED_STATES
});

enum DonationPaypalEmail {
  EMPTY,
  MOSHFIQ964_GMAIL_COM,
  UMAIRKHONDOKAR_GMAIL_COM
}

final donationPaypalEmailValues = EnumValues({
  "": DonationPaypalEmail.EMPTY,
  "moshfiq964@gmail.com": DonationPaypalEmail.MOSHFIQ964_GMAIL_COM,
  "umairkhondokar@gmail.com": DonationPaypalEmail.UMAIRKHONDOKAR_GMAIL_COM
});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

enum GenderText { MALE, FEMALE }

final genderTextValues =
    EnumValues({"Female": GenderText.FEMALE, "Male": GenderText.MALE});

enum Language { ENGLISH }

final languageValues = EnumValues({"english": Language.ENGLISH});

enum Registered {
  THE_20213,
  THE_20218,
  THE_20216,
  THE_20215,
  THE_20214,
  THE_20217,
  THE_000000
}

final registeredValues = EnumValues({
  "00/0000": Registered.THE_000000,
  "2021/3": Registered.THE_20213,
  "2021/4": Registered.THE_20214,
  "2021/5": Registered.THE_20215,
  "2021/6": Registered.THE_20216,
  "2021/7": Registered.THE_20217,
  "2021/8": Registered.THE_20218
});

enum Source { UPLOADED }

final sourceValues = EnumValues({"Uploaded": Source.UPLOADED});

enum VideoType { VIDEO_MP4 }

final videoTypeValues = EnumValues({"video/mp4": VideoType.VIDEO_MP4});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == '') {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
