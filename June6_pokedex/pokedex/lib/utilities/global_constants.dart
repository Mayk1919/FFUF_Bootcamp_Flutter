import 'package:flutter/material.dart';

//
// PokemonListPage UI constants
//
const kChooseThemeMenuTitle = 'Choose Theme';
const kFetchMorePokemonCount = 20;
const kPokemonListPageScaffoldBodyPadding = EdgeInsets.only(
  left: 12.0,
  right: 12.0,
);
const kPokemonGridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 250,
  childAspectRatio: 3 / 2,
);
const kPokemonListPageFooterHeight = 100.0;
const kProgressIndicatorStrokeWidth = 2.0;
const kProgressIndicatorFooterHeight = 35.0;
const kProgressIndicatorFooterWidth = 35.0;
const kProgressIndicatorFooterPadding = EdgeInsets.all(12.0);
const kSearchDebounceMilliseconds = 500;

//
// PokemonListPage's PokemonListCard and PokemonPage UI constants
//
const kCardPadding = EdgeInsets.all(8.0);
const kPokemonImagePositionedBottom = 0.0;
const kPokemonImagePositionedRight = 0.0;
const kPokemonNamePadding = EdgeInsets.symmetric(vertical: 8.0);
const kPokemonTypePadding = EdgeInsets.symmetric(
  vertical: 4.0,
  horizontal: 12.0,
);
const kPokemonTypeMargin = EdgeInsets.only(bottom: 4.0);
const kPokemonTypeBorderColor = Colors.transparent;
const kPokemonTypeBorderRadius = BorderRadius.all(Radius.circular(20.0));
const kPokemonListCardImageWidth = 80.0;
const kPokemonListCardImageHeight = 80.0;

//
// PokemonPage UI constants
//
const kPokemonPageHeaderPadding = EdgeInsets.only(
  top: 8.0,
  bottom: 8.0,
  left: 16.0,
);
const kPokemonPageHeaderIdPadding = EdgeInsets.only(right: 16.0);
const kPokemonPageHeaderImageWidth = 200.0;
const kPokemonPageHeaderImageHeight = 200.0;
const kPokemonPageHeaderRow1Flex = 2;
const kPokemonPageHeaderTypeListTopPadding = EdgeInsets.only(top: 4.0);
const kPokemonPageHeaderTypeNamePadding = EdgeInsets.symmetric(
  vertical: 4.0,
  horizontal: 12.0,
);
const kPokemonPageHeaderTypeNameMargin = EdgeInsets.only(right: 8.0);
const kPokemonPageDetailsFlex = 2;
const kPokemonPageDetailsPadding = EdgeInsets.symmetric(horizontal: 5.0);
const kPokemonPageDetailsBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(20.0),
  topRight: Radius.circular(20.0),
);
const kPokemonPageDetailsTabCount = 4;
const kPokemonPageDetailsDefaultTabIndex = 0;

// MovesContainer
const kMovesContainerPadding = EdgeInsets.only(
  top: 8.0,
  left: 4.0,
  right: 4.0,
);
const kMovesContainerWrapSpacing = 3.0;
const kMovesContainerWrapRunSpacing = 3.0;
const kMoveItemPadding = EdgeInsets.all(8.0);

// AboutContainer
const kAboutContainerPadding = EdgeInsets.all(16.0);
const kFlavorTextPadding = EdgeInsets.only(
  top: 8.0,
  bottom: 16.0,
);
const kAboutGridTextPadding = EdgeInsets.all(4.0);
BorderSide aboutTableBorderInside(Color color) => BorderSide(color: color);

// EvolutionChainContainer
const kEvolutionChainContainerPadding = EdgeInsets.only(top: 32.0);
const kEvolutionChainGridDimension = 3; // 3x3 grid

// EvolutionCard
const kEvolutionCardPadding = EdgeInsets.only(left: 16.0);
const kEvolutionRowDetailsFlex = 4;
const kEvolutionColumnDetailsFlex = 2;
const kEvolutionColumnDetailsWidth = 50.0;
const kEvolutionColumnDetailsHeight = 50.0;
const kEvolutionArrowPadding =
    EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0);
const kEvolutionCardEmptyPadding =
    EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0);

final debugBorder = Border.all(color: Colors.blueAccent);


const kThemeSharedPrefsKey = 'theme';