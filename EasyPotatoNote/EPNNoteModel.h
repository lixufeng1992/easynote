//
//  EPNNoteModel.h
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EPNNoteModel : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *content;

+ (instancetype)modelWithTitle:(NSString*)title content:(NSString*)content;


@end

NS_ASSUME_NONNULL_END
