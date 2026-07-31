package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.FlxSplash;

class InitState extends FlxState
{
    public override function create() {
        super.create();

        // Force the splash to play.
        #if (flixel >= "6.0.0")
        FlxG.switchState(() -> new FlxSplash(() -> new PlayState()));
        #else
        FlxSplash.nextState = PlayState;
        FlxG.switchState(new FlxSplash());
        #end
    }
}