package  
{
	import org.flixel.FlxSprite;

	public class BoxObj extends FlxSprite
	{
		[Embed(source = '../assets/box1_temp.png')] private var box1PNG:Class;
		
		public function BoxObj(X:int, Y:int) 
		{
			super(X * 30, Y * 30, box1PNG);
			//loadGraphic(box1PNG, true, false, 30, 30, false);
			
			solid = true;
		}
		
	}

}