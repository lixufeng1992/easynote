//
//  UILabel+Size.m
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import "UILabel+Size.h"

#import <AppKit/AppKit.h>


@implementation UILabel (Size)

- (CGSize)size {
    
    if(!self.text || !self.font) {
        return CGSizeZero;
    }
    
    UIFont *font = self.font;
    NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
    CGSize s = [self.text sizeWithAttributes:attribute];
    
    return CGSizeMake(ceil(s.width), ceil(s.height));
}

@end
