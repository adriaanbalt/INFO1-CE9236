//
//  View.m
//  HW01Hello
//
//  Created by Adriaan Scholvinck on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 2*8 & 0xFF) / 255.0)

@implementation View

@synthesize string;
@synthesize point;
@synthesize font;

- (id) initWithFrame: (CGRect) frame
{
    NSLog(@"initWithFrame: self.retainCount == %u", self.retainCount);
    self = [super initWithFrame: frame];
    if (self != nil) {
        unsigned color = 0xFF00FF;	//purple
        self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
        self.backgroundColor = [UIColor whiteColor];
		string = @"Hello, World!";
		point = CGPointMake(0, 0);
		font = [UIFont systemFontOfSize: 1 * 72/2 +5];
    }
    return self;
}

- (id) initWithFrame: (CGRect) frame
            string: (NSString *) s
            backgroundColor: (UIColor *) c
            point: (CGPoint) p
            font: (UIFont *) f {
    
	if ((self = [super initWithFrame: frame]) != nil) {
		self.backgroundColor = c;
		self.string = s;
		point = p;	//not an object, doesn't need self.
		self.font = f;
	}
	return self;
}

- (void) drawRect: (CGRect) rect
{
    NSLog(@"Hello World! drawRect");

    id s = string;
    CGSize size = [s sizeWithFont: font];
	CGRect b = self.bounds;
	CGFloat x = b.origin.x + (b.size.width - size.width) / 2;
	CGFloat y = b.origin.y + (b.size.height - size.height) / 2 - 100;
	CGPoint p = CGPointMake(x+2, y+2);
    
    [s drawAtPoint: p withFont: font];
    
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 1.0, 1.0, 1.0, 1.0);

    p = CGPointMake(x, y);
    
    [s drawAtPoint: p withFont: font];
    
    s = [NSString
                   stringWithFormat: @"rect.origin == (%g, %g), rect.size == %g × %g",
                   rect.origin.x,
                   rect.origin.y,
                   rect.size.width,
                   rect.size.height
                   ];
    
    NSLog(@"drawRect: self.retainCount == %u", self.retainCount);
}


- (void) dealloc
{
    [super dealloc];
}

@end
