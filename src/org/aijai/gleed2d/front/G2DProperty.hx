package org.aijai.gleed2d.front;

/**
 * Custom set property element
 * @author Pekka Heikkinen
 */

interface G2DProperty {
	/**
	 * Name of the property
	 */
	var name:String;
	
	/**
	 * Property type, either FreeText, Boolean, Vector, Color, Item
	 */
	var type:G2DPropertyType;
	
	/**
	 * Description for the property, if present
	 */
	var description:String;
	
	/**
	 * FreeText value of property, if present
	 */
	var freeText:String;
	
	/**
	 * Boolean value of property, if present
	 */
	var boolean:Bool;
	
	/**
	 * Vector2 value of property, if present
	 */
	var vector2:G2DPoint;
	
	/**
	 * Color value of property, if present
	 */
	var color:G2DColor;
	
	/**
	 * Item value of property, if present
	 */
	var item:String;
}


enum G2DPropertyType {
	FreeText;
	Boolean;
	Vector2;
	Color;
	Item;
}