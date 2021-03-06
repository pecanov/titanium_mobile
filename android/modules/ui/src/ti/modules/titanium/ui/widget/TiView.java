/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
package ti.modules.titanium.ui.widget;

import org.appcelerator.titanium.TiDict;
import org.appcelerator.titanium.proxy.TiViewProxy;
import org.appcelerator.titanium.util.TiConvert;
import org.appcelerator.titanium.view.TiUIView;
import org.appcelerator.titanium.view.TiCompositeLayout;

public class TiView extends TiUIView
{

	public TiView(TiViewProxy proxy) {
		super(proxy);

		boolean vertical = proxy.hasDynamicValue("layout") && TiConvert.toString(proxy.getDynamicValue("layout")).equals("vertical");
		setNativeView(new TiCompositeLayout(proxy.getContext(), vertical));
	}

	@Override
	public void processProperties(TiDict d)
	{

		super.processProperties(d);
	}

}
