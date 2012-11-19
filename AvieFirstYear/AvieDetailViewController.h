//
//  AvieDetailViewController.h
//  AvieFirstYear
//
//  Created by Patrick Leonard on 11/11/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvieDetailViewController : UIViewController
@property (strong, nonatomic) NSArray *avieDetailModel;
@property (strong, nonatomic) NSArray *avieTitleDetailModel;
@property (strong, nonatomic) NSArray *avieDescriptionDetailModel;
@property (strong, nonatomic) IBOutlet UIImageView *avieDetailImage;
@property (strong, nonatomic) IBOutlet UILabel *avieDetailDescription;

@end
