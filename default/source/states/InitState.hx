package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.FlxSplash;

class InitState extends FlxState
{
    public override function create() {
        super.create();

        // Force the splash to play.
        FlxG.switchState(() -> new FlxSplash(() -> new PlayState()));
    }
}