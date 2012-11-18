package  
{
	import org.flixel.*;

	public class Bullet extends FlxSprite
	{
		[Embed(source = '../assets/shot.png')] private var shotPNG:Class;
				
		public function Bullet() 
		{
			super(0,0);
			
			loadGraphic(shotPNG, true, true, 15, 15, true);
			addAnimation("fly", [0, 1, 2], 10, true);
			
			play("fly");
			solid = true;
			exists = false;
		}
		
		override public function update():void
		{
			super.update();
			
			if (exists && (y < -15 || y > FlxG.height || x > FlxG.width || x < -15 )) {
				exists = false;
			}
		}
		
		public function fire(bx:int, by:int, direction:uint):void
		{
			if(!exists){
				facing = direction;
				exists = true;
				x = bx;
				y = by;
				if (facing == FlxObject.RIGHT) {
					velocity.x = 130;
				}else {
					velocity.x = -130;
				}
			}
		}
		
		public function bulletCollideWithWall(bullet:FlxObject, wall:FlxObject):void
		{
			exists = false;
		}
		
		public function bulletCollideWithBox(bullet:Bullet, box:BoxObj):void
		{
			exists = false;
			box.pushOne(facing);
		}
		
	}

}