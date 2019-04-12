//
//  HippiusDemoViewController.m
//  Hippius
//
//  Created by Liyanjun on 2019/3/13.
//  Copyright © 2019 HAND. All rights reserved.
//

#import "HippiusDemoViewController.h"
#import "HippiusDemoConstant.h"
#import "HippiusDemoGlobalSeting.h"
@interface HippiusDemoViewController ()
@end

@implementation HippiusDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.fd_prefersNavigationBarHidden = YES;
    [self contructNav];
    [self constructView];
}

- (void)contructNav{
    //这一部分是替换手写的导航栏 实现push进来 更丝滑
    [self hippiusexchangeNavTocustmNav];
//    [self.customNavBar yj_setBottomLineHidden:YES];
    self.customNavBar.title = @"demo工程";
    
    [self.customNavBar yj_setRightButtonWithTitle:@"按钮" titleColor:[UIColor colorWithHexString:[GlobalSetting shareInstance].themeColor]];
    kWeakSelf
    [self.customNavBar setOnClickRightButton:^{
        NSLog(@"点击");
    }];
    self.customNavBar.rightButton.titleLabel.font = [UIFont defaultFontWithSize:16];
    [self.customNavBar.rightButton sizeToFit];
    self.customNavBar.rightButton.right = ScreenWidth - 15;
    self.customNavBar.rightButton.centerY = self.customNavBar.leftButton.centerY;
}

//这一部分仅仅是为了演示 打包的时候 根据打包文件data.json 转换后的customStyle.plist 动态显示
- (void)constructView{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self.customNavBar.bottom, ScreenWidth, ScreenHeight-self.customNavBar.bottom - Height_TabBar)];
    
    scrollView.backgroundColor = [UIColor whiteColor];
    //设置字体和颜色的区域
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    firstView.backgroundColor = [UIColor whiteColor];
    //hippiusmoduledemo_str1
    UILabel *hippiusmoduledemo_str1label = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"Demo字符串1：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_str1label.top = 5;
    hippiusmoduledemo_str1label.left = 10;
    [hippiusmoduledemo_str1label sizeToFit];
    UILabel *hippiusmoduledemo_str1value = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_str1 colorstr:@"1F8CEB"];
    hippiusmoduledemo_str1value.top = hippiusmoduledemo_str1label.top;
    hippiusmoduledemo_str1value.left = hippiusmoduledemo_str1label.right+ 10;
    [hippiusmoduledemo_str1value sizeToFit];
    [firstView addSubview:hippiusmoduledemo_str1label];
    [firstView addSubview:hippiusmoduledemo_str1value];
    
    //hippiusmoduledemo_str2
    UILabel *hippiusmoduledemo_str2label = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"Demo字符串2：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_str2label.top = hippiusmoduledemo_str1label.bottom + 10;
    hippiusmoduledemo_str2label.left = hippiusmoduledemo_str1label.left;
    [hippiusmoduledemo_str2label sizeToFit];
    UILabel *hippiusmoduledemo_str2value = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_str1 colorstr:@"1F8CEB"];
    hippiusmoduledemo_str2value.top = hippiusmoduledemo_str2label.top;
    hippiusmoduledemo_str2value.left = hippiusmoduledemo_str2label.right+ 10;
    [hippiusmoduledemo_str2value sizeToFit];
    [firstView addSubview:hippiusmoduledemo_str2label];
    [firstView addSubview:hippiusmoduledemo_str2value];
    
   
    //hippiusmoduledemo_color1
    UILabel *hippiusmoduledemo_color1label = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"Demo颜色1：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_color1label.top = hippiusmoduledemo_str2label.bottom + 10;
    hippiusmoduledemo_color1label.left = hippiusmoduledemo_str2label.left;
    [hippiusmoduledemo_color1label sizeToFit];
    UIView *hippiusmoduledemo_color1View = [UIView new];
    hippiusmoduledemo_color1View.backgroundColor = [UIColor colorWithHexString:[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_color1];
    hippiusmoduledemo_color1View.left = hippiusmoduledemo_color1label.right + 10;
    hippiusmoduledemo_color1View.top = hippiusmoduledemo_color1label.top;
    hippiusmoduledemo_color1View.size = CGSizeMake(ScreenWidth - hippiusmoduledemo_color1View.left - 10, hippiusmoduledemo_color1label.height);
    [firstView addSubview:hippiusmoduledemo_color1label];
    [firstView addSubview:hippiusmoduledemo_color1View];
    
    //hippiusmoduledemo_color2
    UILabel *hippiusmoduledemo_color2label = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"Demo颜色2：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_color2label.top = hippiusmoduledemo_color1label.bottom + 10;
    hippiusmoduledemo_color2label.left = hippiusmoduledemo_color1label.left;
    [hippiusmoduledemo_color2label sizeToFit];
    UIView *hippiusmoduledemo_color2View = [UIView new];
    hippiusmoduledemo_color2View.backgroundColor = [UIColor colorWithHexString:[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_color2];
    hippiusmoduledemo_color2View.left = hippiusmoduledemo_color1View.left;
    hippiusmoduledemo_color2View.top = hippiusmoduledemo_color2label.top;
    hippiusmoduledemo_color2View.size = CGSizeMake(ScreenWidth - hippiusmoduledemo_color2View.left - 10, hippiusmoduledemo_color2label.height);
    [firstView addSubview:hippiusmoduledemo_color2label];
    [firstView addSubview:hippiusmoduledemo_color2View];
    firstView.height = hippiusmoduledemo_color2View.bottom+ 10;
    [scrollView addSubview:firstView];
    
    //图片的区域
    UIView *secondView = [UIView new];
    secondView.backgroundColor = RGB_COLOR(241, 241, 241);
    secondView.top = firstView.bottom;
    secondView.left = 0;
    secondView.width = ScreenWidth;
    
    UILabel *hippiusmoduledemo_imglabel = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"示例图片1：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_imglabel.top = 5;
    hippiusmoduledemo_imglabel.left = 10;
    [hippiusmoduledemo_imglabel sizeToFit];

    
    UIImageView *hippiusmoduledemo_img = [[UIImageView alloc] initWithImage:[NSURL getImageFromBundleWithName:[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_img_1]];
    hippiusmoduledemo_img.top = hippiusmoduledemo_imglabel.bottom + 10;
    hippiusmoduledemo_img.width = ScreenWidth - 30;
    hippiusmoduledemo_img.left = 15;
    hippiusmoduledemo_img.height = 100;
    [secondView addSubview:hippiusmoduledemo_imglabel];
    [secondView addSubview:hippiusmoduledemo_img];
    
    secondView.height = hippiusmoduledemo_img.bottom + 10;
    [scrollView addSubview:secondView];
    //多选择区域
    UIView *thirdView = [UIView new];
    thirdView.backgroundColor = [UIColor whiteColor];
    thirdView.top = secondView.bottom;
    thirdView.left = 0;
    thirdView.width = ScreenWidth;
    
    UILabel *hippiusmoduledemo_checkbox_arealabel = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"显示区域多选择：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_checkbox_arealabel.top = 5;
    hippiusmoduledemo_checkbox_arealabel.left = 10;
    [hippiusmoduledemo_checkbox_arealabel sizeToFit];

    UIView *area1 = [UIView new];
    area1.left = 0 ;
    area1.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    area1.width = ScreenWidth/3;
    area1.height = 150;
    area1.backgroundColor = [UIColor randomColor];
    
    UIView *area2 = [UIView new];
    area2.left = ScreenWidth/3 ;
    area2.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    area2.width = ScreenWidth/3;
    area2.height = 150;
    area2.backgroundColor = [UIColor randomColor];
    
    UIView *area3 = [UIView new];
    area3.left = ScreenWidth/3*2 ;
    area3.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    area3.width = ScreenWidth/3;
    area3.height = 150;
    area3.backgroundColor = [UIColor randomColor];
    [thirdView addSubview:hippiusmoduledemo_checkbox_arealabel];
    NSArray *hippiusmoduledemo_checkbox_arealist = [HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_checkbox_area;
   NSArray * hippiusmoduledemo_checkbox_arealistprelist =  [hippiusmoduledemo_checkbox_arealist filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF IN {'area1','area2','area3'}"]];
    if ([hippiusmoduledemo_checkbox_arealistprelist containsObject:@"area1"]) {
         [thirdView addSubview:area1];
    }
    if ([hippiusmoduledemo_checkbox_arealistprelist containsObject:@"area2"]) {
        [thirdView addSubview:area2];
    }
    if ([hippiusmoduledemo_checkbox_arealistprelist containsObject:@"area3"]) {
        [thirdView addSubview:area3];
    }
    thirdView.height = area2.bottom + 10;
    [scrollView addSubview:thirdView];
    
    //单选择区域
    UIView *fourView = [UIView new];
    fourView.backgroundColor = RGBA_COLOR(241, 241, 241, 0.8);
    fourView.top = thirdView.bottom;
    fourView.left = 0;
    fourView.width = ScreenWidth;
    
    UILabel *hippiusmoduledemo_radio_arealabel = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"显示区域单选：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_radio_arealabel.top = 5;
    hippiusmoduledemo_radio_arealabel.left = 10;
    [hippiusmoduledemo_radio_arealabel sizeToFit];
    
    UIView *radioarea1 = [UIView new];
    radioarea1.left = 0 ;
    radioarea1.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    radioarea1.width = ScreenWidth/3;
    radioarea1.height = 150;
    radioarea1.backgroundColor = [UIColor randomColor];
    
    UIView *radioarea2 = [UIView new];
    radioarea2.left = ScreenWidth/3 ;
    radioarea2.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    radioarea2.width = ScreenWidth/3;
    radioarea2.height = 150;
    radioarea2.backgroundColor = [UIColor randomColor];
    
    UIView *radioarea3 = [UIView new];
    radioarea3.left = ScreenWidth/3*2 ;
    radioarea3.top = hippiusmoduledemo_checkbox_arealabel.bottom + 10;
    radioarea3.width = ScreenWidth/3;
    radioarea3.height = 150;
    radioarea3.backgroundColor = [UIColor randomColor];
    
    [fourView addSubview:hippiusmoduledemo_radio_arealabel];
    
    if ([[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_radio_area isEqualToString:@"area1"]) {
        [fourView addSubview:radioarea1];
    }
    if ([[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_radio_area isEqualToString:@"area2"]) {
        [fourView addSubview:radioarea2];
    }
    if ([[HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_radio_area isEqualToString:@"area3"]) {
        [fourView addSubview:radioarea3];
    }
    fourView.height = radioarea3.bottom + 10;
    [scrollView addSubview:fourView];
    
    
    //单选择区域
    UIView *fiveView = [UIView new];
    fiveView.backgroundColor = [UIColor whiteColor];
    fiveView.top = fourView.bottom;
    fiveView.left = 0;
    fiveView.width = ScreenWidth;
    
    UILabel *hippiusmoduledemo_textarea1label = [self createLabelWithFont:[UIFont defaultFontWithSize:14] name:@"长文本示例：" colorstr:@"4d4d4d"];
    hippiusmoduledemo_textarea1label.top = 5;
    hippiusmoduledemo_textarea1label.left = 10;
    [hippiusmoduledemo_textarea1label sizeToFit];
    
    UITextView *textView = [[UITextView alloc] init];
    textView.backgroundColor = [UIColor randomColor];
    textView.textColor = [UIColor colorWithHexString:@"1F8CEB"];
    textView.font = [UIFont defaultFontWithSize:14];
    textView.text = [HippiusDemoGlobalSeting shareInstance].hippiusmoduledemo_textarea1;
    textView.top = hippiusmoduledemo_textarea1label.bottom + 10;
    textView.left = 15;
    textView.width = ScreenWidth - 30;
    textView.height = 100;
    [fiveView addSubview:hippiusmoduledemo_textarea1label];
    [fiveView addSubview:textView];
    
    fiveView.height = textView.bottom + 10;
    [scrollView addSubview:fiveView];
    
    scrollView.contentSize = CGSizeMake(ScreenWidth, fiveView.bottom+10);
    [self.view addSubview:scrollView];
}

- (UILabel *)createLabelWithFont:(UIFont *)font name:(NSString *)name colorstr:(NSString *)color{
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textAlignment = NSTextAlignmentLeft;
    label.text = name;
    label.textColor = [UIColor colorWithHexString:color];
    return label;
}

@end
