package org.aijai.gleed2d.front;

/**
 * Gleed2D element that has custom properties
 * @author Pekka Heikkinen
 */

interface G2DEntity implements G2DBasic {

	/**
	 * Properties associated with element
	 */
	var properties:Array<G2DProperty>;
	
}