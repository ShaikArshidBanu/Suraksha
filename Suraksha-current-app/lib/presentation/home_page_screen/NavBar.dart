import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [

          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('My Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('My Calendar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text('Report'),
          ),

          ListTile(
            leading: Icon(Icons.info_outlined),
            title: Text('About Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language Settings'),
            onTap: () => null,
          ),
          Divider(),
          Spacer(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
