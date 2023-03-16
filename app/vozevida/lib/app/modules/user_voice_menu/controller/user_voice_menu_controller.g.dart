// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_voice_menu_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserVoiceMenuController on UserVoiceMenuControllerBase, Store {
  late final _$cardIdAtom =
      Atom(name: 'UserVoiceMenuControllerBase.cardId', context: context);

  @override
  int? get cardId {
    _$cardIdAtom.reportRead();
    return super.cardId;
  }

  @override
  set cardId(int? value) {
    _$cardIdAtom.reportWrite(value, super.cardId, () {
      super.cardId = value;
    });
  }

  late final _$UserVoiceMenuControllerBaseActionController =
      ActionController(name: 'UserVoiceMenuControllerBase', context: context);

  @override
  void handleCardIndexToSelectMode({required int cardIndex}) {
    final _$actionInfo =
        _$UserVoiceMenuControllerBaseActionController.startAction(
            name: 'UserVoiceMenuControllerBase.handleCardIndexToSelectMode');
    try {
      return super.handleCardIndexToSelectMode(cardIndex: cardIndex);
    } finally {
      _$UserVoiceMenuControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardId: ${cardId}
    ''';
  }
}
