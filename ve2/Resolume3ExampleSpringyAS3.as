﻿package
		private var dug:Number=0;
		private var resolume:Resolume = new Resolume();
		private var paramDotsOnly:BooleanParameter = resolume.addBooleanParameter("Dots only", false);

					if (dug==0){spring2(particleA, particleB);}
					else {spring(particleA, particleB);}
		private function spring2(particleA, particleB): void
		{
			var dx:Number = particleB.x - particleA.x;
			var dy:Number = particleB.y - particleA.y;
			var dist:Number = Math.sqrt(dx*dx + dy*dy);

			var fromColor:uint=0xFFFFFF;
			var toColor:uint=0x00FF55;
			
			if (dist < minDist)
			{
				var factor:Number = (100 - dist / minDist * 100) / 100;
				var lineColor:uint = Color.interpolateColor(fromColor, toColor, factor);
				this.graphics.lineStyle(3, lineColor, factor);
				this.graphics.moveTo(particleB.x, particleA.y);
				this.graphics.lineTo(particleA.x, particleB.y);
				
				var ax:Number = dx * springAmount;
				var ay:Number = dy * springAmount;
				
				particleA.vx += ax;
				particleA.vy += ay;
				particleB.vx -= ax;
				particleB.vy -= ay;
				
			}

			
		}
				if (this.paramDotsOnly.getValue()==true){
					dug=1
					//spring2(ParticleA,ParticleB)
					}
				if (this.paramDotsOnly.getValue()==false){
					dug=0
					//spring(ParticleA,ParticleB);
					}
}