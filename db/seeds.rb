# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


game = Game.create(description: "Znajdywanie ojca")
scene_1 = Scene.create(description: "Jesteś w karczmie.", status: "first", game: game)
scene_2 = Scene.create(description: "Dostajesz piwo. Zauważasz, że zakapturzona postać cie obserwuje.", game: game)
scene_3 = Scene.create(description: "Cała karczma wybucha śmiechem.", game: game)
scene_4 = Scene.create(description: "Postać podchodzi, nazywa cię Lukiem i mówi, że jest twoim ojcem", game: game)
scene_5 = Scene.create(description: "Ty i twój ojciec żyjecie długo i szczęśliwie", game: game)
scene_6 = Scene.create(description: "Zabiłeś osobę podającą się za twojego ojca.", game: game)

Option.create(description: "Zamów zimne piwo.", current_scene:scene_1, forward_scene:scene_2)
Option.create(description: "Zamów mleko.", current_scene:scene_1, forward_scene:scene_3)
Option.create(description: "Przemyśl swoje życie i zamów piwo.", current_scene:scene_3, forward_scene:scene_2)
Option.create(description: "Wpatrujesz się.", current_scene:scene_2, forward_scene: scene_4)
Option.create(description: "Udajesz, że nie widzisz.", current_scene:scene_2, forward_scene: scene_4)
Option.create(description: "Ciesz się.", current_scene:scene_4, forward_scene: scene_5)
Option.create(description: "Zadźgaj go z krzykiem: \"Dawaj kasę kutasiarzu!\".", current_scene:scene_4, forward_scene: scene_6)
