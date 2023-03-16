// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_board_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewBoardCardController on NewBoardCardControllerBase, Store {
  late final _$isCardLayoutAtom =
      Atom(name: 'NewBoardCardControllerBase.isCardLayout', context: context);

  @override
  bool? get isCardLayout {
    _$isCardLayoutAtom.reportRead();
    return super.isCardLayout;
  }

  @override
  set isCardLayout(bool? value) {
    _$isCardLayoutAtom.reportWrite(value, super.isCardLayout, () {
      super.isCardLayout = value;
    });
  }

  late final _$NewBoardCardControllerBaseActionController =
      ActionController(name: 'NewBoardCardControllerBase', context: context);

  @override
  void setRegisterLayout({required bool isCard}) {
    final _$actionInfo = _$NewBoardCardControllerBaseActionController
        .startAction(name: 'NewBoardCardControllerBase.setRegisterLayout');
    try {
      return super.setRegisterLayout(isCard: isCard);
    } finally {
      _$NewBoardCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeToCardForm() {
    final _$actionInfo = _$NewBoardCardControllerBaseActionController
        .startAction(name: 'NewBoardCardControllerBase.changeToCardForm');
    try {
      return super.changeToCardForm();
    } finally {
      _$NewBoardCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeToBoardForm() {
    final _$actionInfo = _$NewBoardCardControllerBaseActionController
        .startAction(name: 'NewBoardCardControllerBase.changeToBoardForm');
    try {
      return super.changeToBoardForm();
    } finally {
      _$NewBoardCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isCardLayout: ${isCardLayout}
    ''';
  }
}
