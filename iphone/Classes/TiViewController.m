/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiViewController.h"
#import "TiApp.h"

@implementation TiViewController


-(id)initWithViewProxy:(TiViewProxy*)proxy_
{
	if (self = [super init])
	{
		proxy = proxy_;
	}
	return self;
}

-(TiViewProxy*)proxy
{
	return proxy;
}

-(UIView*)view
{
	return [proxy view];
}

- (void)viewDidUnload
{
	[proxy detachView];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	[super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	//Since the AppController will be the deciding factor, and it compensates for iPad, let it do the work.
	return [[[TiApp app] controller] shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

@end
