//
//  MHMEntryDetailViewController.m
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import "MHMEntryDetailViewController.h"
#import "MHMEntryController.h"

@interface MHMEntryDetailViewController ()

@end

@implementation MHMEntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextField.delegate = self;
    
    
}
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *newTitle = _titleTextField.text;
    NSString *newBody = _bodyTextView.text;
    
    if (_entryLandingPad != nil) {
        _entryLandingPad.title = newTitle;
        _entryLandingPad.body = newBody;
    } else {
        [MHMEntryController.shared addEntry:newTitle body:newBody];
    }
}


- (void)setLandingPad: (MHMEntry *)entryLandingPad {
    _entryLandingPad = entryLandingPad;
    [self updateViews:entryLandingPad];
}

- (void)updateViews: (MHMEntry *)entry {
    if (self) {
        self.titleTextField.text = entry.title;
        self.bodyTextView.text = entry.body;
        self.entryLandingPad = entry;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return _titleTextField.resignFirstResponder;
}
@end
