//
//  AvieFirstYearViewController.h
//  AvieFirstYear
//
//  Created by Patrick Leonard on 11/10/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvieFirstYearViewController : UITableViewController
@property (strong, nonatomic) NSArray *avieMonthTitles;
@property (strong, nonatomic) NSArray *avieImages;
@property (strong, nonatomic) NSArray *avieDescriptions;
/*
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMar;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageApr;
//@property (strong, nonatomic) IBOutlet UIImageView *avieImageMay;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJun;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJul;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageAug;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageSep;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageOct;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageNov;
*/
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMarch;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageApril;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMay;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJune;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJuly;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageAugust;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageSeptember;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageOctober;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageNovember;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageDecember;

@end
