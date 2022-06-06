import 'package:flutter/material.dart';
import 'package:may10_shop/models/models.dart';
import 'package:may10_shop/api/mock_app_service.dart';
import 'package:may10_shop/components/components.dart';

class CardScreen extends StatelessWidget {
  final exploreCards = MockAppService();
  final String filter;

  CardScreen({
    Key? key,
    this.filter ='all',
  }) : super(key: key);

  List<CardsList> _sortNameAsc(List<CardsList> cardsList){
    cardsList.sort((a, b) {
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });
    return cardsList;
  }

  List<CardsList> _sortNameDsc(List<CardsList> cardsList){
    cardsList.sort((a, b) {
      return b.name.toLowerCase().compareTo(a.name.toLowerCase());
    });
    cardsList.reversed;
    return cardsList;
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: exploreCards.getCardsList(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardsList>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {

            if(filter == 'sortNameAsc' && snapshot.data !=null){
              _sortNameAsc(snapshot.data!);
            }
            else if(filter == 'sortNameDsc' && snapshot.data !=null){
              _sortNameDsc(snapshot.data!);
            }
            else if(filter == 'all' && snapshot.data !=null){
              return  CardsGridView(cardsList: snapshot.data ?? []);
            }
            return  CardsGridView(cardsList: snapshot.data ?? []);

          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        );
  }
}
