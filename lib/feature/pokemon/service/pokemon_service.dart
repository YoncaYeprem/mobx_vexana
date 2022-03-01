import 'package:login_with_mobx/feature/pokemon/model/pokemon_model.dart';
import 'package:vexana/vexana.dart';

abstract class IPokeService {
  late INetworkManager networkManager;
  IPokeService(this.networkManager);

  Future<PokemonModel?> fetchPokemons();
}

class PokemonService extends IPokeService {
  PokemonService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<PokemonModel?> fetchPokemons() async {
    final response = await networkManager.send<PokemonModel, PokemonModel>(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json",
        parseModel: PokemonModel(),
        method: RequestType.GET);
    return response.data;
  }
}
