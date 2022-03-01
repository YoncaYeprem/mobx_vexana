import 'package:flutter/material.dart';
import 'package:login_with_mobx/feature/pokemon/model/pokemon_model.dart';
import 'package:login_with_mobx/feature/pokemon/service/pokemon_service.dart';
import 'package:mobx/mobx.dart';
import 'package:vexana/vexana.dart';

import '../../../core/base/base_viewmodel.dart';
part 'pokemon_viewmodel.g.dart';

class PokemonViewModel = _PokemonViewModelBase with _$PokemonViewModel;

abstract class _PokemonViewModelBase with Store, BaseViewModel {
  late IPokeService pokeService;

  @observable
  bool isLoading = false;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  PokemonModel? pokemonModel;
  
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    pokeService = PokemonService(networkManager);
    fetchPokes();
  }
  @action
  Future<void> fetchPokes() async {
    changeLoading();
    pokemonModel = await pokeService.fetchPokemons();
    changeLoading();
  }
}
