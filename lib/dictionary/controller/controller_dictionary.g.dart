// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_dictionary.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerDictionary on ControllerDictionaryBase, Store {
  late final _$loadingAtom =
      Atom(name: 'ControllerDictionaryBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$wordAtom =
      Atom(name: 'ControllerDictionaryBase.word', context: context);

  @override
  String get word {
    _$wordAtom.reportRead();
    return super.word;
  }

  @override
  set word(String value) {
    _$wordAtom.reportWrite(value, super.word, () {
      super.word = value;
    });
  }

  late final _$wordMeanigAtom =
      Atom(name: 'ControllerDictionaryBase.wordMeanig', context: context);

  @override
  Word get wordMeanig {
    _$wordMeanigAtom.reportRead();
    return super.wordMeanig;
  }

  @override
  set wordMeanig(Word value) {
    _$wordMeanigAtom.reportWrite(value, super.wordMeanig, () {
      super.wordMeanig = value;
    });
  }

  late final _$errorAtom =
      Atom(name: 'ControllerDictionaryBase.error', context: context);

  @override
  ErrorMessage get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(ErrorMessage value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  @override
  String toString() {
    return '''
loading: ${loading},
word: ${word},
wordMeanig: ${wordMeanig},
error: ${error}
    ''';
  }
}
