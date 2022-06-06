import 'package:flutter/material.dart';
import 'package:pokedex/widgets/empty_footer.dart';
import 'package:pokedex/widgets/progress_indicator_footer.dart';

class InfiniteScrollGrid extends StatelessWidget {
  const InfiniteScrollGrid(
    {Key? key,
    required this.scrollController,
    required this.gridDelegate,
    required this.delegate,
    required this.isLoadingMoreData,
    }) : super(key: key);

  final ScrollController scrollController;
  final SliverGridDelegate gridDelegate;
  final SliverChildDelegate delegate;
  final bool isLoadingMoreData;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverGrid(
          delegate: delegate, 
          gridDelegate: gridDelegate,
          ),
          if(!isLoadingMoreData)const SliverToBoxAdapter(
            child: EmptyFooter())
            else
              const SliverToBoxAdapter(
                child: ProgressIndicatorFooter(),
                )
            
      
      ],
    );
  }
}
