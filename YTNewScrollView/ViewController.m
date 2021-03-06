//
//  ViewController.m
//  YTNewScrollView
//
//  Created by TonyAng on 16/4/11.
//  Copyright © 2016年 TonyAng. All rights reserved.
//


#import "ViewController.h"
#import "CircleScrollView.h"
#import "UIImageView+WebCache.h"
@interface ViewController ()<CircleScrollDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CircleScrollView *scr = [[CircleScrollView alloc]initWithImgs:@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"] fram:CGRectMake(0,74, self.view.frame.size.width, 300)];
    scr.circleScrollType = CircleScrollTypePageControlAndTimer;
    scr.circleScrollStyle = CircleScrollStyleSkewing;
    scr.circleDelegate = self;
    [self.view addSubview:scr];
    
    
    CircleScrollView *scr1 = [[CircleScrollView alloc]initWithImgUrls:@[@"http://hiphotos.baidu.com/praisejesus/pic/item/e8df7df89fac869eb68f316d.jpg",@"http://pic15.nipic.com/20110731/8022110_162804602317_2.jpg",@"http://pic10.nipic.com/20101103/5063545_000227976000_2.jpg"] fram:CGRectMake(0,400, self.view.frame.size.width, 300)];
    scr1.circleScrollType = CircleScrollTypePageControl;
    scr1.circleScrollStyle = CircleScrollStyleSteadfast;
    scr1.circleDelegate = self;
    [self.view addSubview:scr1];
    
    
}

-(void)circleScroll:(CircleScrollView *)scrollView selectIndex:(NSInteger)index
{
    NSLog(@"%ld",(long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
