//
//  ViewController.m
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import "EPNHomeViewController.h"
#import "EPNNoteTableViewCell.h"
#import "EPNNoteModel.h"

#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height

#define STATUSBAR_HEIGHT CGRectGetHeight([UIApplication sharedApplication].statusBarFrame)

#define VOICEBTN_HEIGHT 64

@interface EPNHomeViewController () <UITableViewDataSource, UITabBarDelegate>

@property (nonatomic, strong, readwrite) UITableView *tableView;
@property (nonatomic, strong, readwrite) UIButton *voiceBtn;

@property (nonatomic, strong, readwrite) NSArray *data;


@end

@implementation EPNHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.data = @[
        [EPNNoteModel modelWithTitle:@"第一个笔记题目" content:@"第一笔记内容"],
        [EPNNoteModel modelWithTitle:@"第二个笔记题目" content:@"第二笔记内容"],
        [EPNNoteModel modelWithTitle:@"第三个笔记题目" content:@"第三笔记内容"],
    ];
    
}

- (void)setupView {
    CGRect tableFrame = CGRectMake(0, STATUSBAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - VOICEBTN_HEIGHT);
    self.tableView = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.tableView registerClass:[EPNNoteTableViewCell class] forCellReuseIdentifier:[EPNNoteTableViewCell identifier]];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}


#pragma mark -- TableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EPNNoteTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[EPNNoteTableViewCell identifier] forIndexPath:indexPath];
    cell.item = [self.data objectAtIndex:indexPath.section];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}


#pragma mark -- TableView Delegate


@end
