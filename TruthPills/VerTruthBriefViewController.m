//
//  VerTruthBriefViewController.m
//  TruthPills
//
//  Created by Jota Gomez on 02/05/14.
//  Copyright (c) 2014 Celmedia. All rights reserved.
//

#import "VerTruthBriefViewController.h"

@interface VerTruthBriefViewController ()

@end

@implementation VerTruthBriefViewController
    CGRect screenRect ;
    CGFloat screenWidth ;
    CGFloat screenHeight ;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    btnCrearPillBrief.layer.cornerRadius = 4.0f;
    
    
    screenRect = self.view.frame;
    screenWidth = screenRect.size.width;
    screenHeight = screenRect.size.height;
    
    
    [self cargarPill];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void) cargarPill{
    
    
    /*
    //   NSString *str=@"http://truthbrief.com/app/web/remote/mostrar/pill/29";
    NSString *str=@"http://192.168.0.133/Pills/web/app_dev.php/remote/mostrar/pill/29";
    
    
    
    
    NSURL *url=[NSURL URLWithString:str];
    NSData *data=[NSData dataWithContentsOfURL:url];
    NSError *error=nil;
    id response=[NSJSONSerialization JSONObjectWithData:data options:
                 NSJSONReadingMutableContainers error:&error];
    
    if (!response) {
        NSLog(@"Error parsing JSON: %@", error);
    } else {
        for(NSDictionary *item in response ) {
            
            //NSString *pillImageUrl  = [@"http://truthbrief.com/app/web/uploads/pills/" stringByAppendingString:  [item  valueForKey:@"imagen"]  ];
            NSString *pillImageUrl  = [@"http://192.168.0.133/Pills/web/uploads/pills/" stringByAppendingString:  [item  valueForKey:@"imagen"]  ];
            NSString *favoritos  = [@"" stringByAppendingString:  [item  valueForKey:@"favoritos"]    ];
            NSURL * imageURL = [NSURL URLWithString:pillImageUrl ];
            NSData * imageData = [NSData dataWithContentsOfURL:imageURL];
            UIImage * image = [UIImage imageWithData:imageData];
            [ _pill_image setImage:image ];
            [ _label_favorito setText:favoritos ];
            
            NSLog(@"Item: %@", pillImageUrl);
            
        }
    }
    */
}



@end
