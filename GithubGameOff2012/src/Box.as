package  
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Luke Allstar
	 */
	public class Box extends FlxSprite
	{
		[Embed(source = '../assets/box1_temp.png')] private var boxPNG:Class;
		public function Box(X:int, Y:int) 
		{
			super(X * 30, Y * 30, boxPNG);
			
			solid = true;
		}
		
	}

}