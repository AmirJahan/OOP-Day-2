#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
// nsarray sample
        NSArray *myArr = [[NSArray alloc] initWithObjects:
                          @"Sun",
                          @"Mon",
                          @"Fri", nil];
        
        
        NSMutableArray *myNewArr = [myArr mutableCopy];
        
        [myNewArr insertObject:@"Tue" atIndex:1];
        
        if ([myNewArr containsObject: @"Tue"])
            [myNewArr removeObject: @"Mon"];
        [myNewArr removeObjectAtIndex: 1];

        
        
        // NSDictionary sample
        NSDictionary* myDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
        @"Amir", @"nameKey",
        @"amir.jahan@gmail.com", @"emailKey",
        @"Male", @"genderKey", nil];
        
        NSLog(@"For my dictionary, value for name is: %@",
              [myDictionary objectForKey:@"nameKey"]);
        
        
        
        
        // an example of including many songs as dictionaries into an array
        NSMutableDictionary * songDict = [NSMutableDictionary new];
        [songDict setObject:@"2 minutes" forKey:@"durationKey"];
        [songDict setObject:@"Baby" forKey:@"tyitleKey"];
        [songDict setObject:@"Pop" forKey:@"genreKey"];
        [songDict setObject:@"Yes" forKey:@"paidKey"];
        
        
        NSMutableDictionary * song2Dict = [NSMutableDictionary new];
        [song2Dict setObject:@"3 minutes" forKey:@"durationKey"];
        [song2Dict setObject:@"Billy Jean" forKey:@"tyitleKey"];
        [song2Dict setObject:@"Pop" forKey:@"genreKey"];
        [song2Dict setObject:@"No" forKey:@"paidKey"];
        
        
        NSMutableDictionary * song3Dict = [NSMutableDictionary new];
        [song3Dict setObject:@"5 minutes" forKey:@"durationKey"];
        [song3Dict setObject:@"Crazy Train" forKey:@"tyitleKey"];
        [song3Dict setObject:@"Rock" forKey:@"genreKey"];
        [song3Dict setObject:@"Yes" forKey:@"paidKey"];
        
        
        NSMutableArray<NSMutableDictionary *> *albumArr;
        albumArr = [NSMutableArray new];
        
        [albumArr addObject:songDict];
        [albumArr addObject:song2Dict];
        [albumArr addObject:song3Dict];
        
        
        NSLog(@"There are %d songs in the album", albumArr.count);

        
        
    
        NSMutableArray* rockSongsArr = [NSMutableArray new];
        // for loop
        for (int i = 0; i < albumArr.count ; i++)
        {
            NSMutableDictionary* thisOneDict = [albumArr objectAtIndex:i];
            if ( [[thisOneDict objectForKey: @"genreKey"] isEqualToString:@"Rock"])
            {
                [rockSongsArr addObject: thisOneDict];
            }
        }
        
        NSMutableArray* popSongsArr = [NSMutableArray new];

        for (NSMutableDictionary * any in albumArr)
        {
            if ( [[any objectForKey: @"genreKey"] isEqualToString:@"Pop"])
            {
                [popSongsArr addObject: any];
            }
        }
        
        
        NSMutableString * namesStr = [NSMutableString new];
        for (NSDictionary* any in popSongsArr)
        {
            NSString* formatStr = [NSString stringWithFormat:@"Name: %@\n",
                                   [any objectForKey:@"tyitleKey"]];
            [namesStr appendString: formatStr];
        }
        
        NSLog(namesStr);
        
        
        
        
        // A SHOPPING LIST DATA STRUCTURE
        
        // shopping list app
        // Title for the App
        // Array of the Lists
        // for each list
        // list title
        // array of the Items
        // purchase checkbox
        // title
        // quantity
        // time stamp
        // color of the list
        // notes
        // list owner
        // name
        // email
        // uid
        // list invitees
        // list last edit time
        // purchased items
        
        NSMutableDictionary* userDict = [NSMutableDictionary new];
        [userDict setObject:@"Amir" forKey:@"nameKey"];
        [userDict setObject:@"amir.jahan@gmail.com" forKey:@"emailKey"];
        [userDict setObject:@"amir.jahan@gmail.com" forKey:@"uidKey"];
        
        
        NSMutableDictionary* itemDict = [NSMutableDictionary new];
        [itemDict setObject:@"Peach" forKey:@"titleKey"];
        [itemDict setObject:@"1 kilo" forKey:@"quantityKey"];
        [itemDict setObject:@"12:33:54 05:10:17" forKey:@"timeKey"];
        [itemDict setObject:@"false" forKey:@"purchasedKey"];
        
        NSMutableDictionary* itemDict2 = [NSMutableDictionary new];
        [itemDict2 setObject:@"Beer" forKey:@"titleKey"];
        [itemDict2 setObject:@"6" forKey:@"quantityKey"];
        [itemDict2 setObject:@"9:33:54 05:10:17" forKey:@"timeKey"];
        [itemDict2 setObject:@"true" forKey:@"purchasedKey"];
        
        NSMutableArray* itemsArr = [NSMutableArray new];
        [itemsArr addObject: itemDict];
        [itemsArr addObject: itemDict2];
        
        NSMutableDictionary* aListDict = [NSMutableDictionary new];
        
        NSMutableArray *inviteesArr = [NSMutableArray new];
        
        [aListDict setObject:@"Party Stuff" forKey:@"listNameKey"];
        [aListDict setObject:itemsArr forKey:@"itemsKey"];
        [aListDict setObject:@"green" forKey:@"colorKey"];
        [aListDict setObject:@"Get before friday" forKey:@"notesKey"];
        [aListDict setObject:userDict forKey:@"listOwnerKey"];
        [aListDict setObject:inviteesArr forKey:@"inviteesKey"];
        [aListDict setObject:@"12:33:54 05:10:17" forKey:@"listTimeKey"];
        
        
        NSMutableArray<NSDictionary *>* listsArr = [NSMutableArray new];
        
        [listsArr addObject: aListDict];
        
        NSLog(@"Whatever is:/n/n/n %@", listsArr);


        
        
        
        
    }
    return 0;
}
