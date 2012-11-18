package  
{
	import org.flixel.*;

	public class BoxObj extends FlxSprite
	{
		[Embed(source = '../assets/box1_temp.png')] private var box1PNG:Class;
		
		public function BoxObj(X:int, Y:int) 
		{
			super(X * 30, Y * 30);
			loadGraphic(box1PNG, true, false, 30, 30, false);
			
			solid = true;
		}
		
		public function pushOne(direction:uint):void
		{
			if (direction == FlxObject.RIGHT) {
				velocity.x = 130;
			}else {
				velocity.x = -130;
			}
		}
		
		override public function update():void
		{
			super.update();
			
			if (touching != FlxObject.FLOOR) {
				//velocity.x = 0;
				velocity.y = 130;
			}else {
				velocity.y = 0;
			}
		}
		
	}

}