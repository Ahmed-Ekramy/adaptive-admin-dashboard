import 'dart:ui';

import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/stats_cards.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';
import 'category_distribution_chart.dart';
import 'latest_products_item.dart';
import 'latest_users_item.dart';

class DashBoardContent extends StatelessWidget {
  const DashBoardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text(
            "System Overview",
            style: AppStyles.styleBold24(context),
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            "Welcome back! Here's what's happening today.",
            style: AppStyles.styleRegular14(context),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: StatsCards()),
              Expanded(child: StatsCards()),
              Expanded(child: StatsCards()),
            ],
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: CategoryDistributionChart()),
                SizedBox(width: 32),
                Expanded(
                  flex: 2,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: Color(0xffE2E8F0),
                        width: 1,
                      ),
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 24,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Latest Products",
                                style: AppStyles.styleBold16(context),
                              ),
                              Spacer(),
                              Text(
                                "Admin Info",
                                style: AppStyles.styleSemiBold14(context),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "PRODUCT".toUpperCase(),
                                  style: AppStyles.styleSemiBold12(
                                    context,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Text(
                                      "CATEGORY".toUpperCase(),
                                      style: AppStyles.styleSemiBold12(
                                        context,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      "STOCK".toUpperCase(),
                                      style: AppStyles.styleSemiBold12(
                                        context,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text(
                                "PRICE".toUpperCase(),
                                style: AppStyles.styleSemiBold12(context),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 16,
                            thickness: 1,
                            color: Color(0xFFEEEEEE),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 250,
                            child: ListView.builder(
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: LatestProductsItem(),
                              ),
                              itemCount: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Color(0xffE2E8F0), width: 1),
            ),
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recently Registered Users",
                        style: AppStyles.styleBold16(context),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffF9FAFB),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Text(
                          "Manage Users",
                          style: AppStyles.styleRegular12(context),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    ),
                    child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) => LatestUsersItem(),
                        itemCount: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}