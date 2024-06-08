import 'dart:async';

import 'animal.dart';
import 'plant.dart';
import 'particles.dart';
import 'living_things.dart';

class Ecosystem {
  late final Timer _ecoTime;
  final List<Plant> _plants;
  final List<Animal> _animals;
  final List<Oxygen> _oxygenPool = [Oxygen()];
  final List<CarbonDioxide> _carbonDioxidePool = [CarbonDioxide()];

  void addAnimal(Animal animal) {
    _animals.add(animal);
  }

  void addPlants(Plant animal) {
    _plants.add(animal);
  }

  factory Ecosystem(List<LivingThings> livingThings) {
    final animals = livingThings.whereType<Animal>().toList();
    final plants = livingThings.whereType<Plant>().toList();
    return Ecosystem._(animals: animals, plants: plants);
  }

  Ecosystem._({
    required List<Animal> animals,
    required List<Plant> plants,
  })  : _animals = animals,
        _plants = plants {
    _ecoTime = Timer.periodic(
      Duration(seconds: 1),
      (_) {
        if (_oxygenPool.isEmpty || _carbonDioxidePool.isEmpty) {
          print(
              "Ecosystem is broken due to no resources. All existence came to an extinction");
          _ecoTime.cancel();
          return;
        } else if (_animals.isEmpty && _plants.isEmpty) {
          print(
              "Ecosystem is broken due to no living things. All the resources is no more useful");
          _ecoTime.cancel();
          return;
        }
        print("Ecosystem is well maintained");
        final carbonDioxide = _carbonDioxidePool.removeAt(0);
        final oxygen = _oxygenPool.removeAt(0);
        final plantRemove = <int>[];
        final animalRemove = <int>[];
        for (int i = 0; i < _plants.length; i++) {
          final plant = _plants[i];
          if (plant.isAlive) {
            final oxygen = plant.breathe(carbonDioxide);
            _oxygenPool.add(oxygen);
          } else {
            plantRemove.add(i);
          }
        }
        for (int index in plantRemove) {
          _plants.removeAt(index);
        }
        for (int i = 0; i < _animals.length; i++) {
          final animal = _animals[i];
          if (animal.isAlive) {
            final carbonDioxide = animal.breathe(oxygen);
            _carbonDioxidePool.add(carbonDioxide);
          } else {
            animalRemove.add(i);
          }
        }
        for (int index in animalRemove) {
          _animals.removeAt(index);
        }
      },
    );
  }

  void dispose() {
    _ecoTime.cancel();
  }
}
