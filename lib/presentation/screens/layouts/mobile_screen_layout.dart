import 'package:flutter/material.dart';
import '../../widgets/contact_list.dart';
import '../../../util/colors.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with TickerProviderStateMixin {
  late final TabController tabBarController;

  @override
  void initState() {
    tabBarController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white60,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white60,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white60,
            ),
          ),
        ],
        bottom: TabBar(
          // isScrollable: true,
          controller: tabBarController,
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            /* SizedBox(
              child: Tab(
                child: Icon(Icons.people_rounded),
              ),
            ), */
            SizedBox(width: 80, child: Tab(text: 'Chats')),
            SizedBox(width: 80, child: Tab(text: 'Status')),
            SizedBox(width: 80, child: Tab(text: 'Calls')),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabBarController,
        children: const [
          // Center(child: Text('Contacts')),
          ContactList(),
          Center(child: Text('Status')),
          Center(child: Text('Calls')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        child: const Icon(
          Icons.message_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
