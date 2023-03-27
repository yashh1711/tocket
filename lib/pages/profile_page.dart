import 'package:flutter/material.dart';
import 'package:tocket/core/constants.dart';
import 'package:tocket/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: constVal40,),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/web.png'),
            radius: 60,
          ),
          const SizedBox(
            height: constVal20,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Yash Nagar'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chevron_right),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('+91 85272 72303'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chevron_right),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('nagar.yash107@gmail.com'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDark, child) {
          if(!isDark){
            return const Icon(Icons.dark_mode);
          }
          else{
            return const Icon(Icons.light_mode);
          }
        },)
      ),
    );
  }
}
