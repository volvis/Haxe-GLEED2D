package org.aijai.gleed2d.front;

/**
 * Single item within layer
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
	 * Flipped along Y axis
	 */
	var flipVertical:Bool;
	
	/**
	 * Origin (center) of the item
	 */
	var origin:G2DPoint;
	
	/**
	 * Position of the item
	 */
	var position:G2DPoint;
	
	/**
	 * Item rotation in radians. (180 / Math.PI * rad) to convert into degrees
	 */
	var rotation:Float;
	
	
	/**
	 * Scale (0.0 - 1.0)
	 */
	var scale:G2DPoint;
	
	/**
	 * Full path to the texture
	 */
	var textureFilename:String;
	
	/**
	 * Color tint
	 */
	var tint:G2DColor;
	
	var pathItem:Array<G2DPoint>;
	
	var radius:Float;
	
	var width:Int;
	var height:Int;
	
	/**
	 * Whether item is a TextureItem, RectangleItem, CircleItem or PathItem.
	 * Only TextureItem is supported at the moment.
	 */
	var type:G2DItemType;
	
}


enum G2DItemType {
	TextureItem;
	RectangleItem;
	CircleItem;
	PathItem;
}