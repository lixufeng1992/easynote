//
//  EPNNoteTableViewCell.h
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EPNNoteModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface EPNNoteTableViewCell : UITableViewCell

+ (NSString*)identifier;

@property (nonatomic, strong, readwrite) EPNNoteModel *item;


@end

NS_ASSUME_NONNULL_END
