package
{
	import flash.display.Sprite;
	import flash.display.BitmapData;
	import flash.events.Event;

	import flash.display.Bitmap;
	import flash.geom.Point;
	


	public class Test extends Sprite
	{
		private var seed:uint=Math.random()*999;
		private var bd:BitmapData; 
		private var bmp:Bitmap;
		private var offsets:Array;
		
		private var line:Sprite;
		private var rotSpeed:Number = 10;
		
		private  var tx:Number;
		private var ty:Number;
		
		
		

		public function Test()
		{
			init();
			addEventListener(Event.ENTER_FRAME, grow);
		}
		private function init():void {
			bd = new BitmapData(100, 20, false);
			bmp = new Bitmap(bd);
			bmp.scaleX = bmp.scaleY = 50;
			addChild(bmp);
			
			offsets = [new Point( 0,0) ];
			
			line = new Sprite();
			line.graphics.lineStyle(1,0);
			line.graphics.moveTo(0,0);
			
			tx = ty =0;
			
		}
		
		private function grow(event:Event):void {
			offsets[0].x+=1;
			offsets[0].y-=.4;
			
			bd.perlinNoise(20, 20,1,seed,false, true, 7, true, offsets);
			line.lineTo( tx, ty);
			
			var val:uint = bd.getPixel(0,0);
			var realRotSpeed:Number= rotSpeed / 0xffffff*val;
			
			var rotRadians: Number = realRotSpeed/180*Math.PI;
			tx +=Math.cos(rotRadians);
			tx +=Math.sin(rotRadians);
			
			
		}

	}
}