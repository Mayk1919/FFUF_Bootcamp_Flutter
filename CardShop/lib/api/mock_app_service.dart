import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:may10_shop/models/models.dart';

class MockAppService {
  Future<ExploreData> getExploreData() async {
    final featuredExpansion = await _getFeaturedExpansion();
    final friendPosts = await _getFriendFeed();
    return ExploreData(featuredExpansion, friendPosts);
  }

  Future<List<FeaturedExpansion>> _getFeaturedExpansion() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString =
        await _loadAsset('sample_data/sample_explore_expansions.json');

    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object
    if (json['expansions'] != null) {
      final cards = <FeaturedExpansion>[];
      json['expansions'].forEach((v) {
        cards.add(FeaturedExpansion.fromJson(v));
      });

      return cards;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<List<Post>> _getFriendFeed() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString = await _loadAsset('sample_data/sample_friends_feed.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to Post object
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<List<CardsList>> getCardsList() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('sample_data/sample_cards.json');

    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object
    if (json['cards'] != null) {
      final cardsList = <CardsList>[];
      json['cards'].forEach((v) {
        cardsList.add(CardsList.fromJson(v));
      });

      return cardsList;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<List> getCardsListNames() async {
    List cardNamesList = List.empty(growable: true);
    await Future.delayed(const Duration(milliseconds: 1000));

    final dataString = await _loadAsset('sample_data/sample_cards.json');
    final List names = List.empty(growable: true);

    final Map<String, dynamic> json = jsonDecode(dataString);

    json['cards'].forEach((v) {
      names.add({'name': v['name'], 'price': v['price']});
    });
    cardNamesList = names;
    print('test');
    return names;
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
