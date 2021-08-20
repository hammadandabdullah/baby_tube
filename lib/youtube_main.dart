import 'package:flutter/material.dart';
import 'package:baby_tube/models/youtube_model.dart';
import 'package:baby_tube/screens/home.dart';
import 'package:baby_tube/screens/inbox.dart';
import 'package:baby_tube/screens/library.dart';
import 'package:baby_tube/screens/trending.dart';
import 'package:http/http.dart' as http;
import 'videos.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  var videos;
  bool videoLoading = true;
  bool isRefreshed = false;

  Future<http.Response?> fetchData() async {
    var headers = {
      'server_key': '4d9fb13a998c80d17c86a2f94d9d1be4',
      'Cookie':
          'PHPSESSID=dbe2bb33564aef8f099f0924d282a3a6; uads=a%3A2%3A%7Bs%3A4%3A%26quot%3Bdate%26quot%3B%3Bi%3A1629308401%3Bs%3A5%3A%26quot%3Buaid%26quot%3B%3Ba%3A0%3A%7B%7D%7D; mode=day'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://baby-tube.com/api/v1.0/?type=get_videos'));
    request.fields.addAll({'server_key': '4d9fb13a998c80d17c86a2f94d9d1be4'});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      var body = await response.stream.bytesToString();
      videos = videosFromJson(body);
      setState(() {
        videoLoading = false;
      });

      print(videos.data.featured[0].videoLocation);
      for (int i = 0; i < videos.data.featured.length; i++) {
        youtubeData.add(
          YoutubeModel(
            title: videos.data.featured[i].title,
            description: videos.data.featured[i].description,
            thumbNail: videos.data.featured[i].thumbnail,
            video: videos.data.featured[i].videoLocation,
            publishedTime: videos.data.featured[i].timeDate.day.toString() +
                ' ' +
                videos.data.featured[i].timeDate.month.toString() +
                ' ' +
                videos.data.featured[i].timeDate.year.toString(),
            channelTitle: videos.data.featured[i].owner.username,
            channelAvatar: videos.data.featured[i].owner.avatar,
            viewCount: videos.data.featured[i].views.toString() + ' views',
            likeCount: "0",
            dislikeCount: "0",
          ),
        );
      }
      for (int i = 0; i < videos.data.top.length; i++) {
        youtubeData.add(
          YoutubeModel(
            title: videos.data.top[i].title,
            description: videos.data.top[i].description,
            thumbNail: videos.data.top[i].thumbnail,
            video: videos.data.top[i].videoLocation,
            publishedTime: videos.data.top[i].timeDate.day.toString() +
                ' ' +
                videos.data.top[i].timeDate.month.toString() +
                ' ' +
                videos.data.top[i].timeDate.year.toString(),
            channelTitle: videos.data.top[i].owner.username,
            channelAvatar: videos.data.top[i].owner.avatar,
            viewCount: videos.data.top[i].views.toString() + ' views',
            likeCount: "0",
            dislikeCount: "0",
          ),
        );
      }
    } else {
      print(response.reasonPhrase);
    }
  }

  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      TrendingScreen(),
      Center(child: Text("Subscriptions")),
      InboxScreen(),
      LibraryScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'images/logo.png',
          width: 98.0,
          height: 22.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: videoLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
                title: Text("Home"), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: Text("Trending"), icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                title: Text("Subscriptions"), icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                title: Text("Inbox"), icon: Icon(Icons.mail)),
            BottomNavigationBarItem(
                title: Text("Library"), icon: Icon(Icons.folder)),
          ]),
    );
  }
}
