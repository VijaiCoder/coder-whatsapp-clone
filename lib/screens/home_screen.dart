import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.grey))
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Calls',
                  )
                ]),
            centerTitle: false,
            title: const Text('CloneApp'),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: tabColor,
            onPressed: () {},
            child: const Icon(Icons.comment, color: Colors.white),
          ),
          body: const ListViewHome()),
    );
  }
}
