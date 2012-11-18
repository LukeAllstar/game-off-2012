package  
{
	import org.flixel.*;

	public class Bullet extends FlxSprite
	{
		[Embed(source = '../assets/box3_temp.png')] private var shotPNG:Class;
				
		public function Bullet() 
		{
			super(0,0);
			
			loadGraphic(shotPNG, false, false, 30, 30, false);
			//addAnimation("fly", [0, 1, 2], 10, true);
			
			//play("fly");
			solid = true;
		}
		
		override public function update():void
		{

		}
		
		public function fire(bx:int, by:int):void
		{
			x = bx;
			y = by;
			velocity.y = -10;
		}
		
	}

}