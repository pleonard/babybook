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
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMar;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageApr;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMay;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJun;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJul;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageAug;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageSep;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageOct;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageNov;

@end
