//
//  AgeVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/7.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "AgeVC.h"

#import "AADatePicker.h"

#define kIsUse @"isUsed"
#define kHeaderDes @"headerDes"
#define kFooterDes @"footerDes"
#define kDataArray @"itemArray"

#define kItemId @"itemId"
#define STR_AGE  @"年        龄："
#define STR_BOD  @"出生日期："

@interface AgeVC ()

@property (strong, nonatomic) UILabel *dateLabel;
@property (strong, nonatomic) UILabel *ageLabel;

@end

@implementation AgeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"年龄AGE";
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
    
    self.datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 216)];
    self.datePicker.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:self.datePicker];
    
    [self.datePicker addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged ];//重点：
    //设置显示格式
    //默认根据手机本地设置显示为中文还是其他语言
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];//设置为中文显示
    self.datePicker.locale = locale;
    
    
    //设置时间模式
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    
    
    //当前时间创建NSDate
    NSDate *localDate = [NSDate date];
    //在当前时间加上的时间：格里高利历
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    //设置时间
    [offsetComponents setYear:0];
    [offsetComponents setMonth:0];
    [offsetComponents setDay:0];

    NSString *currentDateString = @"1900-01-01 00:00:00";
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"yyyy年MM月dd日"];////@"yyyy年MM月dd日"//"@"yyyy-MM-DD HH:mm:ss"
    NSDate *minDate = [dateFormater dateFromString:currentDateString];
    NSLog(@"minDate %@",minDate);

    
    NSDate *maxDate = [gregorian dateByAddingComponents:offsetComponents toDate:localDate options:0];
    //设置属性
    NSLog(@"maxDate %@",maxDate);

    self.datePicker.minimumDate = minDate;
    //获取当前时间
    self.datePicker.maximumDate = [NSDate date];
    NSLog(@"maxDate2 %@",maxDate);

  
    self.showLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.datePicker.frame)+20, CGRectGetWidth(self.datePicker.frame), 30)];
    self.showLabel.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.showLabel.textAlignment = NSTextAlignmentLeft;
    self.showLabel.text = STR_BOD;
    [self.view addSubview:self.showLabel];
    
    
    self.ageLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.datePicker.frame)+50, CGRectGetWidth(self.datePicker.frame) , 30)];
    NSLog(@"33 %f",CGRectGetMaxY(self.datePicker.frame)+20);
    NSLog(@"34 %f",CGRectGetMaxY(self.showLabel.frame));
    

    self.ageLabel.backgroundColor = [UIColor redColor];
    self.ageLabel.textAlignment = NSTextAlignmentLeft;
    self.ageLabel.text = STR_AGE;
    [self.view addSubview:self.ageLabel];

}



/**
 dateChanged

 @param sender dateChanged
 */
-(void)dateChanged:(UIDatePicker *)sender
{

    //NSDate格式转换为NSString格式
    NSDate *pickerDate = [self.datePicker date];// 获取用户通过UIDatePicker设置的日期和时间
    NSDateFormatter *pickerFormatter = [[NSDateFormatter alloc] init];// 创建一个日期格式器
    [pickerFormatter setDateFormat:@"yyyy年MM月dd日"];
    NSString *dateString = [pickerFormatter stringFromDate:pickerDate];
    
    
    //打印显示日期时间
    NSLog(@"格式化显示时间：%@",dateString);
    self.showLabel.text = [NSString stringWithFormat:@"%@%@",STR_BOD,dateString];;
    
    
    
    //创建一个时间格式转换器
    NSDateFormatter *formatterDate=[[NSDateFormatter alloc] init];
    
    //创建一个时间格式
    formatterDate.dateFormat=@"yyyy-MM-dd";
    
    //创建一个日历牌对象
    NSCalendar *calender=[NSCalendar currentCalendar];
    
    //枚举保存日期的每一天
    NSCalendarUnit unitsave=NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
    
    //计算日期
    NSDateComponents *comTogether=[calender components:unitsave fromDate:pickerDate toDate:self.datePicker.maximumDate  options:0];
    NSLog(@"jack and Rose Together   %ld Year %ld Month %ld Day %ld Hour %ld Minute %ld Second",comTogether.year,comTogether.month,comTogether.day,comTogether.hour,comTogether.minute,comTogether.second);
    
    self.ageLabel.text  = [NSString stringWithFormat:@"%@%ld岁%ld月%ld天",STR_AGE,comTogether.year, comTogether.month,comTogether.day];

}

@end
