package mods.helloworld;

import mods.api.Context;
import mods.api.Mod;

class Main extends Mod {
	override public function init(context:Context):Void {
		context.log("Hello mod loaded!");

		context.onFloorEnter(function(floor) {
			context.log("Entered floor " + floor.number);
		});

		context.onMonsterDespawned(function(monster) {
			context.log("Gone: " + monster.name);
		});
	}
}
