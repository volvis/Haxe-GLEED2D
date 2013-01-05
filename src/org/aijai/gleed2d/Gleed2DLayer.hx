package org.aijai.gleed2d;

/**
 * Gleed2D layer element
 * @author Pekka Heikkinen
 */

interface Gleed2DLayer 
{
	/**
	 * Name of the layer
	 */
	var name:String;
	
	/**
	 * Layer visibility
	 */
	var visible:Bool;
	
	/**
	 * Items within layer
	 */
	var items:Array<Gleed2DItem>;
	
	/**
	 * Horizontal scrollspeed
	 */
	var scrollX:Float;
	
	/**
	 * Vertical scrollspeed
	 */
	var scrollY:Float;
}