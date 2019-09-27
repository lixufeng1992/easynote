//
//  EPNNoteModel.m
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import "EPNNoteModel.h"

@implementation EPNNoteModel

+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content {
    return [self modelWithTitle:title content:content];
}

- (instancetype)initWithTitle:(NSString *)title content:(NSString *)content {
    if(self = [super init]) {
        self.title = title;
        self.content = content;
    }
    return self;
}

@end
