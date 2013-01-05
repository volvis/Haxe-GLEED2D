package org.aijai.gleed2d;

/**
 * Gleed2D Property element
 * @author Pekka Heikkinen
 */

interface Gleed2DProperty {
	/**
	 * Name of the property
	 */
	var name:String;
	
	/**
	 * Property type. (Currently remains NULL until Haxe has namespace support)
	 */
	var type:String;
	
	/**
	 * Description for the property
	 */
	var description:String;
	
	/**
	 * Value of the property
	 */
	var value:String;
}