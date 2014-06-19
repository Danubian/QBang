/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */

package org.common.interfaces
{
	import robotlegs.bender.framework.api.IContext;
	
	public interface IContextProvider
	{
		function getContext():IContext;
	}
}