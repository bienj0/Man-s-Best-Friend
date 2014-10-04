//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Robin van 't Slot on 17-09-14.
//  Copyright (c) 2014 Brick Inc. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 3;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russel Terrier";
    secondDog.image = [UIImage imageNamed: @"JRT.jpg"];
    secondDog.age = 2;
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Border Collie";
    thirdDog.age = 2;
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    self.dogPicked = 0;
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    [self.myDogs addObject:littlePuppy];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWord
{
    NSLog(@"Hello World!");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if ( self.dogPicked == randomIndex && self.dogPicked == 0) {
        randomIndex ++;
    } else if (self.dogPicked == randomIndex){
        randomIndex --;

    } else {
        
        MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
        self.dogPicked = randomIndex;
        
        //    self.myImageView.image = randomDog.image;
        //    self.breedLabel.text = randomDog.breed;
        //    self.nameLabel.text = randomDog.name;
        
        [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.myImageView.image = randomDog.image;
            self.breedLabel.text = randomDog.breed;
            self.nameLabel.text = randomDog.name;
        } completion:^(BOOL finished) {
            
        }];
        sender.title = @"And Another";
    }
}
@end
