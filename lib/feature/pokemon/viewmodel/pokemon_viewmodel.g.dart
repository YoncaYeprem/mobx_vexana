// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonViewModel on _PokemonViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_PokemonViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$pokemonModelAtom = Atom(name: '_PokemonViewModelBase.pokemonModel');

  @override
  PokemonModel? get pokemonModel {
    _$pokemonModelAtom.reportRead();
    return super.pokemonModel;
  }

  @override
  set pokemonModel(PokemonModel? value) {
    _$pokemonModelAtom.reportWrite(value, super.pokemonModel, () {
      super.pokemonModel = value;
    });
  }

  final _$fetchPokesAsyncAction =
      AsyncAction('_PokemonViewModelBase.fetchPokes');

  @override
  Future<void> fetchPokes() {
    return _$fetchPokesAsyncAction.run(() => super.fetchPokes());
  }

  final _$_PokemonViewModelBaseActionController =
      ActionController(name: '_PokemonViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_PokemonViewModelBaseActionController.startAction(
        name: '_PokemonViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_PokemonViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
pokemonModel: ${pokemonModel}
    ''';
  }
}
