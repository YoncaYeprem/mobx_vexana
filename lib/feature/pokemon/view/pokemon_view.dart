import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_with_mobx/core/base/base_view.dart';
import 'package:login_with_mobx/feature/pokemon/viewmodel/pokemon_viewmodel.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PokemonViewModel>(
        viewModel: PokemonViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder:
            (BuildContext context, PokemonViewModel pokemonViewModel) {
          return Scaffold(
            body: Observer(builder: ((_) {
              return pokemonViewModel.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: pokemonViewModel.pokemonModel?.pokemon?.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(pokemonViewModel
                                      .pokemonModel?.pokemon?[index].img ??
                                  'http://www.serebii.net/pokemongo/pokemon/001.png'),
                            ),
                            title: Text(pokemonViewModel
                                    .pokemonModel?.pokemon?[index].name ??
                                "name"),
                          ),
                        );
                      });
            })),
          );
        });
  }
}
