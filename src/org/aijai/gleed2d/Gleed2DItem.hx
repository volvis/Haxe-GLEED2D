package org.aijai.gleed2d;

/**
 * Single graphic item
 * @author Pekka Heikkinen
 */

interface Gleed2DItem {
	
	/**
	 * Asset name. Essentially the file path without the extension.
	 */
	var assetName:String;
	
	/**
	 * Flipped along X axis
	 */
	var flipHorizontal:Bool;
	
	/**
	 * Flipped along Y axis
	 */
	var flipVertical:Bool;
	
	/**
	 * Item's name
	 */
	var name:String;
	
	/**
	 * Horizontal origin point of item
	 */
	var originX:Float;
	
	/**
	 * Vertical origin point of item
	 */
	var originY:Float;
	var positionX:Float;
	var positionY:Float;
	
	/**
	 * Item rotation in radians. (180 / Math.PI * rad)
	 */
	var rotation:Float;
	
	/**
	 * Vertical scale (0.0 - 1.0)
	 */
	var scaleHeight:Float;
	
	/**
	 * Horizontal scale (0.0 - 1.0)
	 */
	var scaleWidth:Float;
	
	/**
	 * Full path to the texture
	 */
	var textureFilename:String;
	
	/**
	 * Alpha (0-255)
	 */
	var tintColorAlpha:Int;
	
	/**
	 * Blue tint (0-255)
	 */
	var tintColorBlue:Int;
	
	/**
	 * Green tint (0-255)
	 */
	var tintColorGreen:Int;
	
	/**
	 * Red tint (0-255)
	 */
	var tintColorRed:Int;
	
	/**
	 * Currently not supported due to namespace limitations
	 */
	var type:String;
	
	/**
	 * Item visibility
	 */
	var visible:Bool;
}