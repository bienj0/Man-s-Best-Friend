//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Robin van 't Slot on 17-09-14.
//  Copyright (c) 2014 Brick Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController

-(void)printHelloWord;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (nonatomic) int dogPicked;

@property (strong, nonatomic) NSMutableArray *myDogs;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
