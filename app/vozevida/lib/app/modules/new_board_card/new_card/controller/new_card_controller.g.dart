// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewCardController on NewCardControllerBase, Store {
  late final _$useGoogleVoiceAtom =
      Atom(name: 'NewCardControllerBase.useGoogleVoice', context: context);

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

  late final _$NewCardControllerBaseActionController =
      ActionController(name: 'NewCardControllerBase', context: context);

  @override
  void changeUseGoogleVoice({required bool switchValue}) {
    final _$actionInfo = _$NewCardControllerBaseActionController.startAction(
        name: 'NewCardControllerBase.changeUseGoogleVoice');
    try {
      return super.changeUseGoogleVoice(switchValue: switchValue);
    } finally {
      _$NewCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
useGoogleVoice: ${useGoogleVoice}
    ''';
  }
}
