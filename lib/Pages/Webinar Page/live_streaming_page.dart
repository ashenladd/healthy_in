import 'package:flutter/material.dart';
import 'package:healthy_in/theme/colors.dart';
import 'package:healthy_in/theme/fonts.dart';
import 'package:healthy_in/widgets/app_top_bar.dart';

class LiveStreamingPage extends StatefulWidget {
  static String routeName = '/live-streaming-page';
  const LiveStreamingPage({super.key});

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print('Tab bar: ${_tabController.index}');
    return Scaffold(
      backgroundColor: greyLight,
      body: Column(children: [
        AppTopBar(
          child: GridTileBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            title: Text(
              "Live Streaming",
              style: headLine1.copyWith(color: Colors.white),
            ),
          ),
        ),
        Column(children: [
          Container(
            width: double.infinity,
            height: 198,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Rectangle 1.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: double.infinity,
            color: whiteLight,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(children: [
              Text(
                "Bincang Sehat Bersama Dokter Reisa : Cara Mengatasi Baby Blues Bagi Ibu",
                style: headLine1.copyWith(fontSize: 16),
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                color: whiteLight,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.cloud_outlined,
                        color: blueNormal,
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.beach_access_sharp, color: blueNormal),
                    ),
                    Tab(
                      icon: Icon(Icons.brightness_5_sharp, color: blueNormal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              height: 300,
              child: TabBarView(controller: _tabController, children: [
                Text('Telaso'),
                Text('aa'),
                Text(
                  'Telaso',
                  style: headLine1.copyWith(fontSize: 300),
                ),
              ]),
            ),
          )
        ])
      ]),
    );
  }
}
