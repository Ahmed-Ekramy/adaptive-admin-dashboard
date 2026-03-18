import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../web_widget/category_distribution_chart.dart';
import '../web_widget/latest_products_item.dart';
import '../web_widget/stats_cards.dart';

class DashBoardContentTablet extends StatelessWidget {
  const DashBoardContentTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(slivers: [
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
        SliverToBoxAdapter(child: Row(
          children: [
            Expanded(child: StatsCards()),
            Expanded(child: StatsCards()),
            Expanded(child: StatsCards()),
          ],
        )),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(flex: 4, child: CategoryDistributionChart()),
                Expanded(flex: 2,child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE2E8F0)),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Column(

                    children: [
                      Row(
                        children: [
                          Text(
                            "Recently Users",
                            style: AppStyles.styleBold16(context),
                          ),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(AppAssets.me),
                          ),
                          title: Text("Ahmed Ekramy", style: AppStyles.styleBold14(context)),
                          subtitle: Text(
                            "Registered 2m ago",
                            style: AppStyles.styleMedium10(context),
                          ),
                        ),
                        itemCount: 5,
                      ),
                    ],
                  ),
                ) ,)
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Latest Products",
                    style: AppStyles.styleBold16(context),
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
      ]),
    );
  }
}