// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WelcomeController on WelcomeControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'WelcomeControllerBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$WelcomeControllerBaseActionController =
      ActionController(name: 'WelcomeControllerBase', context: context);

  @override
  void indexPage(dynamic index, dynamic reason) {
    final _$actionInfo = _$WelcomeControllerBaseActionController.startAction(
        name: 'WelcomeControllerBase.indexPage');
    try {
      return super.indexPage(index, reason);
    } finally {
      _$WelcomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage}
    ''';
  }
}
