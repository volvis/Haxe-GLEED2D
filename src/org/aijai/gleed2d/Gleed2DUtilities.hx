package org.aijai.gleed2d;
import haxe.xml.Fast;

/**
 * Logic behind reading Gleed2D files
 * @author Pekka Heikkinen
 */

class Gleed2DUtilities {
	public static inline function readEntities(source:Fast, target:Gleed2DEntity):Void
	{
		target.properties = new Hash<Gleed2DProperty>();
		for ( prop in source.node.CustomProperties.nodes.Property )
		{
			var gProp:Gleed2DProperty = new Gleed2DPropertyImpl();
			gProp.name = prop.att.Name;
			gProp.type = prop.att.Type;
			gProp.description = prop.att.Description;
			
			if (gProp.type == "string")
			{
				gProp.value = prop.node.string.innerData;
			}
			else if (gProp.type == "Item")
			{
				gProp.value = prop.innerData;
			}
			
			target.properties.set(gProp.name, gProp);
		}
	}
	
	public static inline function readGleed2D(source:Xml, target:Gleed2D):Void {
		var fast:Fast = new Fast(source.firstElement());

		Gleed2DUtilities.readNameVisibility(fast, target);
		Gleed2DUtilities.readEntities(fast, target);
		
		target.layers = new Array<Gleed2DLayer>();
		
		for (layer in fast.node.Layers.nodes.Layer)
		{
			var l:Gleed2DLayerImpl = new Gleed2DLayerImpl();
			Gleed2DUtilities.readNameVisibility(layer, l);
			l.items = new Array<Gleed2DItem>();
			for (item in layer.node.Items.nodes.Item) {
				var i:Gleed2DItemImpl = new Gleed2DItemImpl();
				Gleed2DUtilities.readNameVisibility(item, i);
				Gleed2DUtilities.readItem(item, i);
				Gleed2DUtilities.readEntities(item, i);
				l.items.push(i);
			}
			l.scrollX = Std.parseFloat(layer.node.ScrollSpeed.node.X.innerData);
			l.scrollY = Std.parseFloat(layer.node.ScrollSpeed.node.Y.innerData);
			target.layers.push(l);
		}
	}
	
	public static inline function readItem(source:Fast, target:Gleed2DItem):Void {
		target.assetName		= source.node.asset_name.innerData;
		target.flipHorizontal	= (source.node.FlipHorizontally.innerData == "true") ? true : false;
		target.flipVertical		= (source.node.FlipVertically.innerData == "true") ? true : false;
		target.originX			= Std.parseFloat(source.node.Origin.node.X.innerData);
		target.originY			= Std.parseFloat(source.node.Origin.node.Y.innerData);
		target.positionX		= Std.parseFloat(source.node.Position.node.X.innerData);
		target.positionY		= Std.parseFloat(source.node.Position.node.Y.innerData);
		target.rotation			= Std.parseFloat(source.node.Rotation.innerData);
		target.scaleHeight		= Std.parseFloat(source.node.Scale.node.Y.innerData);
		target.scaleWidth		= Std.parseFloat(source.node.Scale.node.X.innerData);
		target.textureFilename	= source.node.texture_filename.innerData;
		target.tintColorAlpha	= Std.parseInt(source.node.TintColor.node.A.innerData);
		target.tintColorRed		= Std.parseInt(source.node.TintColor.node.R.innerData);
		target.tintColorGreen	= Std.parseInt(source.node.TintColor.node.G.innerData);
		target.tintColorBlue	= Std.parseInt(source.node.TintColor.node.B.innerData);
	}
	
	public static inline function readNameVisibility(source:Fast, target:Gleed2DBasic):Void {
		target.name				= source.att.Name;
		target.visible			= source.att.Visible == "true" ? true : false;
	}
}

private class Gleed2DItemImpl implements Gleed2DItem, implements Gleed2DEntity, implements Gleed2DBasic {
	public function new() {
		
	}
	public var name:String;
	public var visible:Bool;
	public var type:String;
	public var positionX:Float;
	public var positionY:Float;
	public var rotation:Float;
	public var scaleWidth:Float;
	public var scaleHeight:Float;
	public var flipHorizontal:Bool;
	public var flipVertical:Bool;
	public var originX:Float;
	public var originY:Float;
	public var textureFilename:String;
	public var assetName:String;
	public var properties:Hash<Gleed2DProperty>;
	public var tintColorAlpha:Int;
	public var tintColorBlue:Int;
	public var tintColorGreen:Int;
	public var tintColorRed:Int;
}


private class Gleed2DLayerImpl implements Gleed2DLayer, implements Gleed2DBasic {
	public function new()
	{
		
	}
	public var name:String;
	public var visible:Bool;
	public var items:Array<Gleed2DItem>;
	public var scrollX:Float;
	public var scrollY:Float;
}

private class Gleed2DPropertyImpl implements Gleed2DProperty {
	public function new()
	{
		
	}
	public var name:String;
	public var type:String;
	public var description:String;
	public var value:String;
}