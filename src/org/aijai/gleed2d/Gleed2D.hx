package org.aijai.gleed2d;

/**
 * Parses Gleed2D generated XML files
 * @author Pekka Heikkinen
 */

class Gleed2D implements Gleed2DEntity, implements Gleed2DBasic
{
	/**
	 * Name of the level
	 */
	public var name:String;
	
	/**
	 * Level visibility
	 */
	public var visible:Bool;
	
	/**
	 * Properties associated with level
	 */
	public var properties:Hash<Gleed2DProperty>;
	
	/**
	 * Layers within level
	 */
	public var layers:Array<Gleed2DLayer>;
	
	/**
	 * Parse Gleed2D file
	 * @param	source	Xml content
	 */
	public function new(source:Xml) 
	{
		Gleed2DUtilities.readGleed2D(source, this);
	}
	
}






