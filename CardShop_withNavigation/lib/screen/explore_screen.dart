import 'package:flutter/material.dart';
import 'package:may10_shop/api/mock_app_service.dart';
import 'package:may10_shop/components/components.dart';
import 'package:may10_shop/models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockAppService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final cards = snapshot.data?.featuredExpansion ?? [];
          final friendPosts = snapshot.data?.friendPosts ?? [];

          return ListView(
            children: [
              FeaturedExpansionListView(cards: cards),
              const SizedBox(
                height: 16,
              ),
              FriendPostListView(friendPosts: friendPosts),
            ],

          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
