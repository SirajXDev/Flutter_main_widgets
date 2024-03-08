import 'package:flutter/material.dart';

class TapbarScreen extends StatefulWidget {
  const TapbarScreen({super.key});

  @override
  State<TapbarScreen> createState() => _TapbarScreenState();
}

class _TapbarScreenState extends State<TapbarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(controller: _tabController, tabs: const [
              Tab(
                text: 'chats',
              
              ),
              Tab(
                text: 'calls',
              ),
              Tab(
                text: 'updates',
              ),
            ])),
        actions: [
          const Icon(
            Icons.camera_alt,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.search),
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(value: '1', child: Text('New group')),
                    const PopupMenuItem(value: '2', child: Text('setting')),
                    const PopupMenuItem(value: '3', child: Text('logout')),
                  ])
        ],
      ),
      body: TabBarView( 
        
        controller: _tabController, 
        children: [
          ListView.builder(
            itemCount: 50,
            itemBuilder: (context,index){
            return const ListTile(title: Text('siraj khan'),
            subtitle: Text('where ar you'),
            trailing: Text('4.00 pm'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/Abdulwali.png'),),
            );
          }),
           ListView.builder(
            itemCount: 50,
            itemBuilder: (context,index){
            return const ListTile(title: Text('siraj khan'),
            subtitle: Text('where ar you'),
            trailing: Text('4.00 pm'),
            leading: CircleAvatar(),
            );
          }),
           ListView.builder(
            itemCount: 50,
            itemBuilder: (context,index){
            return const ListTile(title: Text('siraj khan'),
            subtitle: Text('where ar you'),
            trailing: Text('4.00 pm'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/Abdulwali.png'),),
            );
          }),
        // const Chats(),
        //const Calls(),
        //const Updates(),
      ]),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('chats'),
    );
  }
}

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('calls'),
    );
  }
}

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('updates'),
    );
  }
}
