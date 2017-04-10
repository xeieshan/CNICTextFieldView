//
//  ViewController.m
//  CNICTextFieldView
//
//  Created by Test on 10/04/2017.
//  Copyright © 2017 <#Company Name#>. All rights reserved.
//

#import "ViewController.h"
#import "CNICTextFieldView.h"
@interface ViewController () <CNICTextFieldViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didBeginEditing:(CNICTextFieldView*)cnicTextFieldView {
    NSLog(@"%@",[cnicTextFieldView isValidCNIC]?@"Valid":@"Not Valid");
    [_lblStatus setText:[cnicTextFieldView isValidCNIC]?@"Valid":@"Not Valid"];
}
- (void)didEndEditing:(CNICTextFieldView*)cnicTextFieldView {
    NSLog(@"%@",[cnicTextFieldView isValidCNIC]?@"Valid":@"Not Valid");
    [_lblStatus setText:[cnicTextFieldView isValidCNIC]?@"Valid":@"Not Valid"];
}
@end
