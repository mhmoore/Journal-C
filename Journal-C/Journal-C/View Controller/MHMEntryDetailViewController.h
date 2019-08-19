//
//  MHMEntryDetailViewController.h
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MHMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface MHMEntryDetailViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;



@property (nonatomic) MHMEntry *entryLandingPad;

- (void)updateViews:(MHMEntry *)entry;


@end

NS_ASSUME_NONNULL_END
