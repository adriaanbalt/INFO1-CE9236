//
//  View.h
//  HW01Hello
//
//  Created by Adriaan Scholvinck on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView{
    //in the file View.h, inside the curly braces
	NSString *string;
	CGPoint point;
	UIFont *font;
}

@property (nonatomic, copy) NSString *string;
@property (nonatomic) CGPoint point;
@property (nonatomic, retain) UIFont *font;

@end
