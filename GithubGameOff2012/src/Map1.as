package  
{
	import org.flixel.*;
	
	public class Map1 extends FlxGroup
	{
		
		[Embed(source = '../assets/mapCSV_Group1_Boxes.csv', mimeType = "application/octet-stream")] public var boxesCSV:Class;
		[Embed(source = '../assets/mapCSV_Group1_Map.csv', mimeType = "application/octet-stream")] public var mapCSV:Class;
		[Embed(source = '../assets/box_sheet_1.png')] public var boxesPNG:Class;
		[Embed(source = '../assets/box1_temp.png')] public var box1PNG:Class;
		[Embed(source = '../assets/tileset1.png')] public var mapTilesPNG:Class;
		
		public var map:FlxTilemap;
		public var boxMap:FlxTilemap;
		public var boxes:FlxGroup;

		public var width:int;
		public var height:int;

		
		public function Map1() 
		{
			super();
			
			map = new FlxTilemap;
			map.loadMap(new mapCSV, mapTilesPNG, 30, 30, 0, 0, 1, 1);
			
			boxMap = new FlxTilemap;
			boxMap.loadMap(new boxesCSV, boxesPNG, 30, 30);
			
			width = map.width;
			height = map.height;
			
			add(map);
			//add(boxMap);
			parseBoxes();
		}
		
		private function parseBoxes():void
		{
			//var boxMap:FlxTilemap = new FlxTilemap();
			
			//boxMap.loadMap(new boxesCSV, boxesPNG, 30, 30);
			
			boxes = new FlxGroup();
			
			for (var ty:int = 0; ty < boxMap.heightInTiles; ty++) {
				for (var tx:int = 0; tx < boxMap.widthInTiles; tx++) {
					if (boxMap.getTile(tx, ty) != 0) {
						boxes.add(new BoxObj(tx, ty));
					}
				}
			}
		}
	}

}