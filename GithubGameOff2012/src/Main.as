package 
{
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * ...
	 * @author Luke Allstar
	 */
	[Frame(factoryClass="Preloader")]
	public class Main extends Sprite 
	{

		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var game:GGO2012 = new GGO2012;

			addChild(game);
		}

	}

}