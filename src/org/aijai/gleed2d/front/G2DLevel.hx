package org.aijai.gleed2d.front;

/**
 * Represents a single Gleed2D level file.
 * @author Pekka Heikkinen
 */

interface G2DLevel implements G2DEntity
{
	
	/**
	 * Layers within level
	 */
	var layers:Array<G2DLayer>;
	
}