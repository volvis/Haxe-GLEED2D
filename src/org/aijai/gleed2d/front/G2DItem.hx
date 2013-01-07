package org.aijai.gleed2d.front;

/**
 * Single graphic item
 * @author Pekka Heikkinen
 */

interface G2DItem implements G2DEntity {
	
	/**
	 * Asset name. Essentially the file path without the extension.
	 */
	var assetName:String;
	
	/**
	 * Flipped along X axis
	 */
	var flipHorizontal:Bool;
	
	/**
	 * Flipped along Y axisG
	 */
	var flipVertical:Bool;
	
	var origin:G2DPoint;
	
	var position:G2DPoint;
	
	/**
	 * Item rotation in radians. (180 / Math.PI * rad)
	 */
	var rotation:Float;
	
	
	/**
	 * Horizontal scale (0.0 - 1.0)
	 */
	var scale:G2DPoint;
	
	/**
	 * Full path to the texture
	 */
	var textureFilename:String;
	
	var tint:G2DColor;
	
	/**
	 * Currently not supported due to namespace limitations
	 */
	var type:G2DItemType;
	
}


enum G2DItemType {
	TextureItem;
	RectangleItem;
	CircleItem;
	PathItem;
}