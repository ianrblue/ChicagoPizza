//
//  MMViewController.m
//  ChicagoPizza
//
//  Created by Ian Blue on 2/12/13.
//  Copyright (c) 2013 Ian Blue. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()
{
    NSDictionary *restaurant1;
    NSDictionary *restaurant2;
    NSDictionary *restaurant3;
    NSDictionary *restaurant4;
    NSDictionary *restaurant5;
    NSDictionary *restaurant6;
    NSDictionary *restaurant7;
    NSDictionary *restaurant8;
    NSDictionary *restaurant9;
    NSDictionary *restaurant10;
    NSDictionary *restaurant11;
    NSDictionary *restaurant12;
    NSDictionary *restaurant13;
    NSDictionary *allRestaurants;
    //NSDictionary *allRestaurants2;
}
@end

@implementation MMViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	//.................KEY..........VALUE..................
    restaurant1 = @{@"name"   : @"Ferrentino's Pizza",
                    @"phone"  : @"847-295-8888",
                            };
    restaurant2 = @{@"name"   : @"Rosati's Pizza",
                    @"phone"  : @"847-634-0039",
                            };
    restaurant3 = @{@"name"   : @"Chicago Pizza Authority",
                    @"phone"  : @"847-385-8811",
                            };
    restaurant4 = @{@"name"   : @"Rosati's Pizza",
                    @"phone"  : @"847-634-0039",
                            };
    restaurant5 = @{@"name"   : @"Pizano's Pizza and Pasta",
                    @"phone"  : @"312-751-1766",
                            };
    restaurant6 = @{@"name"   : @"Caprio's Pizza",
                    @"phone"  : @"708-361-3330 ",
                            };
    restaurant7 = @{@"name"   : @"Mangia Roma",
                    @"phone"  : @"312-475-9801",
                            };
    restaurant8 = @{@"name"   : @"Great Chicago Pizza",
                    @"phone"  : @"847-882-2466 ",
                            };
    restaurant9 = @{@"name"   : @"Edwardo's Natural Pizza",
                    @"phone"  : @"773-871-3400",
                            };
    restaurant10 = @{@"name"  : @"The Original Gino's East",
                     @"phone" : @"773-327-3737",
                            };
    restaurant11 = @{@"name"  : @"Lou Malnati's Pizzeria",
                     @"phone" : @"312-828-9800",
                            };
    restaurant12 = @{@"name"  : @"Aurelio's Pizza",
                     @"phone" : @"312-994-2000",
                            };
    
   allRestaurants = @{
                                   @"0" : restaurant1,
                                   @"1" : restaurant2,
                                   @"2" : restaurant3,
                                   @"3" : restaurant4,
                                   @"4" : restaurant5,
                                   @"5" : restaurant6,
                                   @"6" : restaurant7,
                                   @"7" : restaurant8,
                                   @"8" : restaurant9,
                                   @"9" : restaurant10,
                                   @"10": restaurant11,
                                   @"11": restaurant12,
                                   };
    
//   EXAMPLE of another way to put dictionaries inside of dictionaries
//    allRestaurants2 = @{
//                        @"0":@{
//                                @"name"  : @"Aurelio's Pizza",
//                                @"phone" : @"312-994-2000"
//                                },
//                        @"1":@{
//                                @"name"   : @"Rosati's Pizza",
//                                @"phone"  : @"847-634-0039"
//                                },
//                        
//                        };
    
NSLog(@"the phone number of the second restaurant is... %@", [allRestaurants valueForKeyPath:@"1.phone"]);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [allRestaurants count];
}
    
        
        
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{   //looking for cells to reuse
    UITableViewCell* tableViewCell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"MMTableViewReuseIdentifier"];
    
    //if no cells to reuse...
    if (tableViewCell == nil) {
    
    //create new cell
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MMTableViewReuseIdentifier"];
    }
    
    //insert stuff into cell
    NSString *newLabelText;
 
    NSLog(@"indexPath.row = %d",indexPath.row);
    NSString *stringToGenerateName = [NSString stringWithFormat:@"%d.name", indexPath.row];

    newLabelText = [allRestaurants valueForKeyPath:stringToGenerateName];

    tableViewCell.textLabel.text = newLabelText;
    
    
    return tableViewCell;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
