//
//  VerPillsViewController.h
//  TruthPills
//
//  Created by Hector Alvarado on 2/6/14.
//  Copyright (c) 2014 Hector Alvarado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "PillUITapGestureRecognizer.h"
#import "MostrarPillViewController.h"


@interface VerPillsViewController : UICollectionViewController <UIActionSheetDelegate>{

}

@property (retain, nonatomic) UIActionSheet *aac;


@end
