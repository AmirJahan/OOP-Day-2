#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    // properties declared WITHOUT setter GETTER
    NSString* name;
    int count;
}

// Peroperties assumed to have both SETTER / GETTER
@property (nonatomic, readwrite) NSString* myProperty;
@property (nonatomic, readwrite) NSArray* myArr;

// CLASS METHODS
+(MyClass *)myInit;
+(int)thereAre;

// instance methods
-(id)initWithName:(NSString *)inpName;

// manually settig name setter and getter
-(void)setTheName:(NSString *)inpName;
-(NSString *)getTheName;
@end


@implementation MyClass
// counter int for class instances
static int counter = 0;

+(int)thereAre
{
    return counter;
}
+(MyClass *)myInit
{
    counter ++;
    return [MyClass alloc];
}


-(void)setTheName:(NSString *)inpName
{
    name = inpName;
}

-(NSString *)getTheName
{
    return name;
}

-(id)initWithName:(NSString *)inpName
{
    name = inpName;
    return self;
}

@end

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        MyClass* newObj = [[MyClass alloc] init];
        [newObj setTheName: @"John"];
        
        MyClass * otherObj = [[MyClass alloc] initWithName:@"John"];
        
    }
    return 0;
}
