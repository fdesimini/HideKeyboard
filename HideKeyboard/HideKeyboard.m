//
//  HideKeyboard.m
//  HideKeyboard
//
//  Created by Frank Desimini on 2015-04-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import "HideKeyboard.h"

@implementation HideKeyboard

- (IBAction)textFieldReturn:(id)sender;
{
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([_textField isFirstResponder] && [touch view] != _textField) {
        [_textField resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
