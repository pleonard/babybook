//
//  AvieFirstYearViewController.m
//  AvieFirstYear
//
//  Created by Patrick Leonard on 11/10/12.
//  Copyright (c) 2012 Patrick Leonard. All rights reserved.
//

#import "AvieFirstYearViewController.h"
#import "AvieDetailViewController.h"

@interface AvieFirstYearViewController ()

@end

@implementation AvieFirstYearViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _avieImageMarch.image = [UIImage imageNamed:@"avie_burrito_thumb.jpg"];
    _avieImageApril.image = [UIImage imageNamed:@"apr_feeding_thumb.jpg"];
    _avieImageMay.image = [UIImage imageNamed:@"may_bath_thumb.jpg"];
    _avieImageJune.image = [UIImage imageNamed:@"june_dillon_thumb.jpg"];
    _avieImageJuly.image = [UIImage imageNamed:@"jul_hiking_thumb.jpg"];
    _avieImageAugust.image = [UIImage imageNamed:@"aug_hair_thumb.jpg"];
    _avieImageSeptember.image = [UIImage imageNamed:@"sep_laugh_yard_thumb.jpg"];
    _avieImageOctober.image = [UIImage imageNamed:@"oct_lobster_thumb.jpg"];
    _avieImageNovember.image = [UIImage imageNamed:@"nov_bath_mohawk_thumb.jpg"];
    _avieImageDecember.image = [UIImage imageNamed:@"dec_walker_thumb.jpg"];

    //March description
    //After a long day of Mommy working very, very, hard, our little Avery was born on a snowy day the 1st of March 2012. When she rolled over after only 2 weeks we knew she would be a "spirited" little girl!
    
    // create array of images for use in detail view controller
    _avieMonthTitles = @[@"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", @"January", @"February"];
    _avieImages = @[@"avie_burrito.jpg", @"apr_feeding.jpg", @"may_bath.jpg", @"june_dillon_large.jpg", @"jul_hiking_large.jpg", @"aug_hair_large.jpg", @"sep_laugh_yard.jpg", @"oct_lobster_large.jpg", @"nov_bath_mohawk.jpg", @"dec_walker.jpg"
    ];
    _avieDescriptions = @[
        @"After a long day of Mommy working very, very, very, hard, our little Avery was born on a snowy day the 1st of March 2012. When she rolled over after only 2 weeks we knew she would be a ""spirited"" little girl!",
        @"Avie looking up at Daddy. There is absolutely nothing like the first time that your little girl looks up at you.",
        @"'Tonight is baaaath night... we're gonna have a paaaarty! A party in the baaaathtub. Cause tonight is baaaath night!' Mommy wrote our bath night song and Avie loves bath night.",
        @"We learned quickly that Avie loves being outside - she's definitely a Colorado girl. We went to Dillon and looked up at the trees and clouds.",
        @"We got the 'Bob' stroller for a reason - to take off road! So here is Mommy and Avie on the Tenderfoot trail near the condo in Dillon. She doesn't like being in the stroller, but is perfectly happy with it if she's on a hike in the mountains.",
        @"Avie's hair became kind of famous for sticking straight up on it's own. Daddy called it her '80's punk rock do'. As her hair got longer it started to lay down and she traded her spikes in for a side ponytail.",
        @"Soon after she started to smile, she started to laugh. Both are infectous - when Avie laughs you can't help but laugh too.",
        @"Mommy had been talking about dressing up Avie as a lobster in a pot for Halloween for a long time. She wasn't kidding. Not sure Avie loved it but she did look cute. Here are Avie and Kalyn before we went to the Gaylord St. festival with Des & Bri.",
        @"Avie still loves bath night! And Mommy and Daddy think the mohawk is pretty hilarious.",
        @"Minutes before Daddy had to go to the airport, Avie stood up with the walker and walked across the room!  It was so exciting - Avie may have been the most excited of all."
    ];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
    int row = [myIndexPath row];
    row = 0;
    
    if ([[segue identifier] isEqualToString:@"ShowMarDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 0;
        detailViewController.avieTitleDetailModel = _avieMonthTitles[row];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMarch"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 0;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowApril"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMay"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 2;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJune"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 3;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJuly"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 4;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowAugust"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 5;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowSeptember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 6;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowOctober"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 7;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowNovember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 8;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowDecember"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 9;
        detailViewController.avieTitleDetailModel = @[_avieMonthTitles[row]];
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
/*
    else if ([[segue identifier] isEqualToString:@"ShowAprDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowMayDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 2;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJunDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 3;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJulDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 4;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowAugDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 5;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowSepDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 6;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowOctDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 7;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowNovDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 8;
        detailViewController.avieDetailModel = @[_avieImages[row]];
        detailViewController.avieDescriptionDetailModel = @[_avieDescriptions[row]];
    }
*/
}

#pragma mark - Table view data source

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
