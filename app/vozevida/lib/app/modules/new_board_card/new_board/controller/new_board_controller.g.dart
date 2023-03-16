// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_board_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewBoardController on NewBoardControllerBase, Store {
  late final _$useGoogleVoiceAtom =
      Atom(name: 'NewBoardControllerBase.useGoogleVoice', context: context);

  @override
  bool get useGoogleVoice {
    _$useGoogleVoiceAtom.reportRead();
    return super.useGoogleVoice;
  }

  @override
  set useGoogleVoice(bool value) {
    _$useGoogleVoiceAtom.reportWrite(value, super.useGoogleVoice, () {
      super.useGoogleVoice = value;
    });
  }

  late final _$NewBoardControllerBaseActionController =
      ActionController(name: 'NewBoardControllerBase', context: context);

  @override
  void changeUseGoogleVoice({required bool switchValue}) {
    final _$actionInfo = _$NewBoardControllerBaseActionController.startAction(
        name: 'NewBoardControllerBase.changeUseGoogleVoice');
    try {
      return super.changeUseGoogleVoice(switchValue: switchValue);
    } finally {
      _$NewBoardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
useGoogleVoice: ${useGoogleVoice}
    ''';
  }
}
