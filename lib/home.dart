import 'package:flutter/material.dart';
import 'package:wathsapp_clon/Screens/screens.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      controller: tabController,
      tabs: const [
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
        Tab(
          text: 'CHATS',
        ),
        Tab(
          text: 'ESTADOS',
        ),
        Tab(
          text: 'LLAMADAS',
        ),
      ],
      isScrollable: false,
    );

    AppBar appBar = AppBar(
      title: const Text('WhatsApp'),
      bottom: tabBar,
      actions: const [
        Icon(Icons.search),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
        IconButton(onPressed: null, icon: Icon(Icons.more_vert))
      ],
    );

    TabBarView tabBarView = TabBarView(
        controller: tabController,
        children: [CameraScreen(), ChatScreen(), StatusScreen(), CallScreen()]);

    floatingActionButton(Icon icon) {
      return FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).accentColor,
        child: icon,
      );
    }

    Widget floatingActionButtonStatus(Icon iconEdit, Icon iconCamera) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            foregroundColor: Color(0xff49646c),
            backgroundColor: Color(0xffebf4fc),
            child: iconEdit,
          ),
          SizedBox(
            height: 10,
          ),
          floatingActionButton(iconCamera),
        ],
      );
    }

    return Scaffold(
        appBar: appBar,
        body: tabBarView,
        floatingActionButton: tabController.index == 0
            ? Container()
            : tabController.index == 1
                ? floatingActionButton(Icon(Icons.message))
                : tabController.index == 2
                    ? floatingActionButtonStatus(
                        Icon(Icons.edit), Icon(Icons.camera_alt))
                    : floatingActionButton(Icon(Icons.add_call)));
  }
}
