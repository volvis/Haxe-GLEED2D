package org.aijai.gleed2d;

/**
 * Gleed2D element that has custom properties
 * @author Pekka Heikkinen
 */

interface Gleed2DEntity {
	
	/**
	 * Name of the element
	 */
	var name:String;
	
	/**
	 * Element visibility
	 */
	var visible:Bool;
	
	/**
	 * Properties associated with element
	 */
	var properties:Hash<Gleed2DProperty>;
}