package  
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Luke Allstar
	 */
	public class PlayState extends FlxState
	{
		
		private var player:Player;
		private var level:Map1;
		private var score:FlxText;

		public function PlayState() 
		{	
			level = new Map1;
			
			player = new Player(44, 120);
			score = new FlxText(100, 100, 100);
			score.color = 0xffffffff;
			score.shadow = 0xff000000;
			score.scrollFactor.x = 0;
			score.scrollFactor.y = 0;
			score.text = "text";
			
			add(level);
			add(level.boxes);
			add(player);
			add(player.bullet);
			//add(score);

			
			FlxG.worldBounds = new FlxRect(0, 0, level.width, level.height);
			
			FlxG.camera.setBounds(0, 0, level.width, level.height);
			
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
		}
		
		override public function update():void
		{
			super.update();
			
			FlxG.collide(player, level);		
			FlxG.collide(level.boxes, level);
			
			FlxG.collide(player, level.boxes);
						
			FlxG.collide(player.bullet, level.boxes, player.bullet.bulletCollideWithBox);
			FlxG.collide(player.bullet, level, player.bullet.bulletCollideWithWall);
		}
		
		
	}

}