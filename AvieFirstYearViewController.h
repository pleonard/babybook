//
//  AvieFirstYearViewController.h
//  AvieFirstYear
//
//  Created by Patrick Leonard on 11/10/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvieFirstYearViewController : UITableViewController
@property (strong, nonatomic) NSArray *avieImages;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageMar;
@property (strong, nonatomic) IBOutlet UIImageView *avieImageJun;

@end
