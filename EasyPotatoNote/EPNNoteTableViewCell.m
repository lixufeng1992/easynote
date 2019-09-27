//
//  EPNNoteTableViewCell.m
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import "EPNNoteTableViewCell.h"
#import "UILabel+Size.h"

#define DefaultTitleHeight    16
#define DefaultContentHeight  12
#define BBANoteDefaultTitleFont [UIFont systemFontOfSize:DefaultTitleHeight]
#define BBANoteDefaultContentFont [UIFont systemFontOfSize:DefaultContentHeight]

#define TitleContentMargin  5

#define BBANoteCellLeftMargin   12
#define BBANoteCellRightMargin  12
#define BBANoteCellTopMargin    12
#define BBANoteCellBottomMargin 12

@interface EPNNoteTableViewCell ()
@property (nonatomic, strong, readwrite) UILabel *titleLbl;
@property (nonatomic, strong, readwrite) UILabel *contentLbl;
@property (nonatomic, strong, readwrite) UIButton *alarmBtn;
@property (nonatomic, strong, readwrite) UIButton *editBtn;
@property (nonatomic, strong, readwrite) UIButton *dropBtn;
@property (nonatomic, strong, readwrite) UIButton *finishBtn;
@property (nonatomic, strong, readwrite) UIButton *shareBtn;

@end

@implementation EPNNoteTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    self.titleLbl = [[UILabel alloc] init];
    self.titleLbl.font = BBANoteDefaultTitleFont;
    self.titleLbl.numberOfLines = 1;
    self.titleLbl.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.titleLbl];
    
    self.contentLbl = [[UILabel alloc] init];
    self.contentLbl.font = BBANoteDefaultContentFont;
    self.contentLbl.numberOfLines = 1;
    self.contentLbl.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.contentLbl];
    
    self.alarmBtn = [[UIButton alloc] init];
    [self.alarmBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.alarmBtn addTarget:self action:@selector(alarmBtnFire:) forControlEvents:UIControlEventTouchUpInside];
    
    self.editBtn = [[UIButton alloc] init];
    [self.editBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.editBtn addTarget:self action:@selector(editBtnFire:) forControlEvents:UIControlEventTouchUpInside];
    
    self.dropBtn = [[UIButton alloc] init];
    [self.dropBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.dropBtn addTarget:self action:@selector(dropBtnFire:) forControlEvents:UIControlEventTouchUpInside];
    
    self.finishBtn = [[UIButton alloc] init];
    [self.finishBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.finishBtn addTarget:self action:@selector(finishBtnFire:) forControlEvents:UIControlEventTouchUpInside];
    
    self.shareBtn = [[UIButton alloc] init];
    [self.shareBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.shareBtn addTarget:self action:@selector(shareBtnFire:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.titleLbl.frame = CGRectMake(BBANoteCellLeftMargin, BBANoteCellTopMargin, CGRectGetWidth(self.contentView.bounds) - BBANoteCellLeftMargin - BBANoteCellRightMargin, DefaultTitleHeight);
    
    self.contentLbl.frame = CGRectMake(BBANoteCellLeftMargin, CGRectGetMaxY(self.titleLbl.frame) + TitleContentMargin, CGRectGetWidth(self.contentView.bounds) - BBANoteCellLeftMargin - BBANoteCellRightMargin, DefaultTitleHeight);
    
}

- (void)setItem:(EPNNoteModel *)item {
    _item = item;
    
    self.titleLbl.text = item.title;
    self.contentLbl.text = item.content;
}

+ (NSString *)identifier {
    return NSStringFromClass([self class]);
}

#pragma mark -- Event Handler

- (void)alarmBtnFire:(UIButton*)sender {
    
}

- (void)editBtnFire:(UIButton*)sender {
    
}

- (void)dropBtnFire:(UIButton*)sender {
    
}

- (void)finishBtnFire:(UIButton*)sender {
    
}

- (void)shareBtnFire:(UIButton*)sender {
    
}

@end
