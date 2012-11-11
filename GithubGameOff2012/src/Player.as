package  
{

	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	
	/**
	 * ...
	 * @author Luke Allstar
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = '../assets/player_temp.png')] private var playerPNG:Class;
		
		public function Player(X:Number, Y:Number) 
		{
			super(X, Y);
			
			loadGraphic(playerPNG, true, true, 20, 40, true);
			
			width = 18;
			height = 35;
			offset.x = 2;
			offset.y = 5;
			
			// animations
			
			if (FlxG.getPlugin(FlxControl) == null) {
				FlxG.addPlugin(new FlxControl);
			}
			
			FlxControl.create(this, FlxControlHandler.MOVEMENT_ACCELERATES, FlxControlHandler.STOPPING_DECELERATES, 1, true, false);
			
			FlxControl.player1.setCursorControl(false, false, true, true);
			
			FlxControl.player1.setJumpButton("SPACE", FlxControlHandler.KEYMODE_PRESSED, 200, FlxObject.FLOOR, 250, 200);
			
			FlxControl.player1.setMovementSpeed(400, 0, 100, 200, 400, 0);
			
			FlxControl.player1.setGravity(0, 400);
			
			facing = FlxObject.RIGHT;
		}
		
		override public function update():void
		{
			super.update();
			
			if (x < 0) {
				x = 0;
			}
			
			if (touching == FlxObject.FLOOR) {
				if (velocity.x != 0) {
					// walk
				} else {
					// idle
				}
			} else if (velocity.y < 0) {
				// jump
				
			}
			
		}
	}

}