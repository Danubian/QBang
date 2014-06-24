package org.common.interfaces
{
	import spark.components.Image;

	public interface IPlayerStatusModule
	{
		function setPicture(image:Image):void;
		function setName(name:String):void;
		function setXP(xp:int):void;
		function setTitle(title:String):void;
	}
}