//
//  CNICTextFieldView.h
//  CNICTextFieldView
//
//  Created by Test on 10/04/2017.
//  Copyright © 2017 <#Company Name#>. All rights reserved.
//

#import <UIKit/UIKit.h>
extern NSInteger const kFirstPhaseLength;
extern NSInteger const kSecondPhaseLength;
extern NSInteger const kThirdPhaseLength;
@class CNICTextFieldView;

@protocol CNICTextFieldViewDelegate <NSObject>

@optional
- (void)didBeginEditing:(CNICTextFieldView*)cnicTextFieldView;
- (void)didEndEditing:(CNICTextFieldView*)cnicTextFieldView;

@end

@interface CNICTextFieldView : UIView

@property (nonatomic,strong) NSString *cnicString;;
@property (nonatomic,weak) IBOutlet id <CNICTextFieldViewDelegate> delegate;
- (BOOL)isValidCNIC;
- (NSString *)getCNIC;

@end
