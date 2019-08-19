//
//  MHMEntryListTableViewController.m
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import "MHMEntryListTableViewController.h"
#import "MHMEntryController.h"
#import "MHMEntryDetailViewController.h"


@interface MHMEntryListTableViewController ()

@end

@implementation MHMEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MHMEntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    MHMEntry *entry = MHMEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        MHMEntry *entry = MHMEntryController.shared.entries[indexPath.row];
        [MHMEntryController.shared removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"toEntryDetailVC"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        MHMEntry *entry = MHMEntryController.shared.entries[indexPath.row];
        MHMEntryDetailViewController *destinationVC = segue.destinationViewController;
        [destinationVC updateViews: entry];
    }
    
   
}


@end
