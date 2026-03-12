import 'package:adaptive_dashboard/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'admin_ifo_list_tile.dart';
import 'list_tile_drawer.dart';
import 'list_tile_model.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<ListTileModel> list = [
    ListTileModel(title: "Dashboard", icon: AppAssets.dashboard),
    ListTileModel(title: "Products", icon: AppAssets.product),
    ListTileModel(title: "Categories", icon: AppAssets.category),
    ListTileModel(title: "Users", icon: AppAssets.users),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AdminInfoListTile(
              title: "Admin Panel",
              subtitle: "SaaS Dashboard",
              icon: AppAssets.admin,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTileDrawer(
                AppColors.textSecondary,
                title: list[index].title!,
                icon: list[index].icon!,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list.length,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody:  false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                ListTileDrawer(
                    AppColors.textSecondary,
                    title: "Profile", icon: AppAssets.profile
                ),
                ListTileDrawer(
                  Colors.red,
                  title: 'Logout',
                  icon: AppAssets.logout,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
