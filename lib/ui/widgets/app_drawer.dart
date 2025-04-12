import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.green, AppColors.primaryLight],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.sports_soccer, color: AppColors.green),
                ),
                const SizedBox(height: 10),
                Text(
                  'Sport Connect',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.map, color: AppColors.green),
            title: const Text('Mapa de Quadras'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/courts_map');
            },
          ),
          ListTile(
            leading: const Icon(Icons.sports, color: AppColors.green),
            title: const Text('Partidas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/games');
            },
          ),
                    ListTile(
            leading: const Icon(Icons.score, color: AppColors.green),
            title: const Text('Placar'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'score');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: AppColors.green),
            title: const Text('Reservas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/bookings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.feed, color: AppColors.green),
            title: const Text('Feed Social'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/feed');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people, color: AppColors.green),
            title: const Text('ONGs Esportivas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/organizations');
            },
          ),
          const Divider(color: AppColors.textLight),
          ListTile(
            leading: const Icon(Icons.person, color: AppColors.green),
            title: const Text('Meu Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: AppColors.green),
            title: const Text('Configurações'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
          const Divider(color: AppColors.textLight),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: AppColors.error),
            title: const Text('Sair'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'login');
            },
          ),
        ],
      ),
    );
  }
}