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

    _avieImageMar.image = [UIImage imageNamed:@"avie_burrito.jpg"];
    
    _avieImageJun.image = [UIImage imageNamed:@"june_dillon.jpg"];
    
    _avieImages = @[@"avie_burrito.jpg", @"june_dillon.jpg"];

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
        detailViewController.avieDetailModel = @[_avieImages[row]];
    }
    else if ([[segue identifier] isEqualToString:@"ShowJunDetails"])
    {
        AvieDetailViewController *detailViewController = [segue destinationViewController];
        row = 1;
        detailViewController.avieDetailModel = @[_avieImages[row]];
    }
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
