package org.aijai.gleed2d;

/**
 * ...
 * @author Pekka Heikkinen
 */

interface Gleed2DItem {
	var name:String;
	var visible:Bool;
	var type:String;
	var positionX:Float;
	var positionY:Float;
	var rotation:Float;
	var scaleWidth:Float;
	var scaleHeight:Float;
	var flipHorizontal:Bool;
	var flipVertical:Bool;
	var originX:Float;
	var originY:Float;
	var textureFilename:String;
	var assetName:String;
}