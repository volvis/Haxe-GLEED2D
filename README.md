Haxe-GLEED2D
============

Class structure for reading GLEED2D files. (https://gleed2d.codeplex.com/)

	import org.aijai.gleed2d.front.G2DLevel;
	import org.aijai.gleed2d.Gleed2D;
	
	var g:G2DLevel = new Gleed2D(xmlString);</code>

At this point only texture items are supported. No data is read from geometric types, eg. rectangle, sphere and polygon.