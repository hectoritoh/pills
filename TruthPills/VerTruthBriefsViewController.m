//
//  VerTruthBriefsViewController.m
//  TruthPills
//
//  Created by Jota Gomez on 06/05/14.
//  Copyright (c) 2014 Celmedia. All rights reserved.
//

#import "VerTruthBriefsViewController.h"
#import "Pill.h"


@interface VerTruthBriefsViewController ()
- (void)showActionSheet:(id)sender;
@end


@implementation VerTruthBriefsViewController
    NSMutableArray *listaPills;

    CGRect screenRect ;
    CGFloat screenWidth ;
    CGFloat screenHeight ;


- (void)showActionSheet:(id)sender{
    
    /// inicializa el arreglo de botones
    NSMutableArray *listaBotones = [[NSMutableArray alloc] init];
    
    
    /// inicializa el menu inferior
    self.aac  = [[UIActionSheet alloc] initWithTitle:nil
                                            delegate:self
                                   cancelButtonTitle:nil
                              destructiveButtonTitle:nil
                                   otherButtonTitles:nil];
    
    //// crea los botones
    UIButton *menu_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *truth_brief_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *misTruthBrief_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *misPillsFavoritos_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *misTruthBriefRecibidos_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *estudios_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *crearPillBrief_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    UIButton *micuenta_btn = [UIButton buttonWithType: UIButtonTypeCustom];
    
    /// se setea el texto
    [menu_btn setTitle:@"" forState:UIControlStateNormal];
    [truth_brief_btn setTitle:@"Thruth Brief" forState:UIControlStateNormal];
    [misTruthBrief_btn setTitle:@"Mis Thruth Brief" forState:UIControlStateNormal];
    [misPillsFavoritos_btn setTitle:@"Mis Pills Favoritos" forState:UIControlStateNormal];
    [misTruthBriefRecibidos_btn setTitle:@"Thruth Brief Recibidos" forState:UIControlStateNormal];
    [estudios_btn setTitle:@"Estudios" forState:UIControlStateNormal];
    [crearPillBrief_btn setTitle:@"Crear Pill Brief" forState:UIControlStateNormal];
    [micuenta_btn setTitle:@"Mi cuenta" forState:UIControlStateNormal];
    
    [listaBotones addObject:menu_btn];
    [listaBotones addObject:truth_brief_btn];
    [listaBotones addObject:misTruthBrief_btn];
    [listaBotones addObject:misPillsFavoritos_btn];
    [listaBotones addObject:misTruthBriefRecibidos_btn];
    [listaBotones addObject:estudios_btn];
    [listaBotones addObject:crearPillBrief_btn];
    [listaBotones addObject:micuenta_btn];
    
    NSUInteger index = 0;
    for (UIButton *button in listaBotones) {
        [button setBackgroundImage:[UIImage imageNamed:@"btn_bg_menu_pill.png"]forState:UIControlStateNormal];
        
        //// color de border
        [[button layer] setBorderWidth:1.0f];
        [[button layer] setBorderColor:[UIColor colorWithRed:215/255.0 green:212/255.0 blue:212/255.0 alpha:1.0f].CGColor];
        
        //// tamano del boton
        button.frame = CGRectMake(0, (screenHeight / 8.4 ) *  index , screenWidth,  screenHeight / 8.4);
        
        /// titulo de los botones
        [button setTitleColor:[UIColor colorWithRed:141/255.0 green:133/255.0 blue:111/255.0 alpha:1.0f] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont fontWithName: @"Raleway" size: 20 ];
        [button.titleLabel  setTextAlignment:NSTextAlignmentLeft ];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, 15, 0, 0);
        
        /// acciones del boton
        ///  [button addTarget:self action:@selector(actionSheet:)    forControlEvents:UIControlEventTouchUpInside];
        index++;
    }
    
    [menu_btn setBackgroundImage:[UIImage imageNamed:@"btn_menu_close_pill.png"]forState:UIControlStateSelected];
    [menu_btn setBackgroundImage:[UIImage imageNamed:@"btn_menu_close_pill.png"]forState:UIControlStateNormal];
    [menu_btn addTarget:self action:@selector(cancelButtonClicked:)    forControlEvents:UIControlEventTouchUpInside];
    
    [self.aac addSubview: menu_btn];
    [self.aac addSubview: truth_brief_btn];
    [self.aac addSubview: misTruthBrief_btn];
    [self.aac addSubview: misPillsFavoritos_btn];
    [self.aac addSubview: misTruthBriefRecibidos_btn];
    [self.aac addSubview: estudios_btn];
    [self.aac addSubview: crearPillBrief_btn];
    [self.aac addSubview: micuenta_btn];
    
    [self.aac showInView:self.view];
    [self.aac setBounds:CGRectMake(0,0,screenWidth, screenHeight+ 400)];
    
}



-(void)cancelButtonClicked:(id)sender {
    [self.aac dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if  ([buttonTitle isEqualToString:@"Destructive Button"]) {
        NSLog(@"Destructive pressed --> Delete Something");
    }
    if ([buttonTitle isEqualToString:@"Other Button 1"]) {
        NSLog(@"Other 1 pressed");
    }
    if ([buttonTitle isEqualToString:@"Other Button 2"]) {
        NSLog(@"Other 2 pressed");
    }
    if ([buttonTitle isEqualToString:@"Other Button 3"]) {
        NSLog(@"Other 3 pressed");
    }
    if ([buttonTitle isEqualToString:@"Cancel Button"]) {
        NSLog(@"Cancel pressed --> Cancel ActionSheet");
    }
}


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
    
    
    screenRect = self.view.frame;
    screenWidth = screenRect.size.width;
    screenHeight = screenRect.size.height;
    
    listaPills =  [[NSMutableArray alloc] init];
    
    
    NSLog(@"My view's frame is: %@", NSStringFromCGRect(self.view.frame));
    
    
    
    UIImage *image = [UIImage imageNamed:@"iconPill.png"];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage: [image stretchableImageWithLeftCapWidth:7.0 topCapHeight:0.0] forState:UIControlStateNormal];
    button.frame= CGRectMake(10,15, 50, 40);
    [button addTarget:self action:@selector(AcceptData)    forControlEvents:UIControlEventTouchUpInside];
    UIView *v=[[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, image.size.width, image.size.height) ];
    [v addSubview:button];
    UIBarButtonItem *btn_logo = [[UIBarButtonItem alloc] initWithCustomView:v];
    
    UIImage *imageBuscar = [UIImage imageNamed:@"btn_buscar.png"];
    UIButton *buttonBuscar = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonBuscar setBackgroundImage: [imageBuscar stretchableImageWithLeftCapWidth:7.0 topCapHeight:0.0] forState:UIControlStateNormal];
    buttonBuscar.frame= CGRectMake(30,15, 40, 40);
    [buttonBuscar addTarget:self action:@selector(AcceptData)    forControlEvents:UIControlEventTouchUpInside];
    UIView *v_buscar=[[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, imageBuscar.size.width, imageBuscar.size.height) ];
    [v_buscar addSubview:buttonBuscar];
    UIBarButtonItem *btn_buscar = [[UIBarButtonItem alloc] initWithCustomView:v_buscar];
    
    [[[self navigationController] navigationBar] setTintColor:[UIColor blackColor]];
    
    self.navigationController.navigationBar.topItem.title = @"Truth Brief";
    
    
    self.navigationItem.rightBarButtonItem = btn_buscar;
    self.navigationItem.leftBarButtonItem = btn_logo;
    
    //[self cargarImagenes];
    
    /* boton de submenu   */
    UIButton *button_menu = [UIButton buttonWithType:UIButtonTypeCustom];
    //button_menu.frame = CGRectMake(0, screenHeight - 100, screenWidth , (screenHeight / 8.5) + 5 );
    button_menu.frame = CGRectMake(22,  -23, 24 , 25 );
    
    
    [button_menu setBackgroundImage:[UIImage imageNamed:@"btn_menu_open_pill.png"]forState:UIControlStateNormal];
    [button_menu addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_menu];

    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
