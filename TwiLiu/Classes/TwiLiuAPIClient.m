#import "TwiLiuAPIClient.h"
#import "AFJSONRequestOperation.h"
#import "TwiLiuKeys.h"

@implementation TwiLiuAPIClient

+ (TwiLiuAPIClient *)sharedClient {
    static TwiLiuAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:kTwilioBaseURLString]];
    });
    
    return _sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [self setAuthorizationHeaderWithUsername:kTwilioAccountSID password:kTwilioAuthToken];
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    
    return self;
}

#pragma mark - AFIncrementalStore

- (id)representationOrArrayOfRepresentationsFromResponseObject:(id)responseObject {
    return responseObject;
}

- (NSDictionary *)attributesForRepresentation:(NSDictionary *)representation 
                                     ofEntity:(NSEntityDescription *)entity 
                                 fromResponse:(NSHTTPURLResponse *)response 
{
    NSMutableDictionary *mutablePropertyValues = [[super attributesForRepresentation:representation ofEntity:entity fromResponse:response] mutableCopy];
    
    // Customize the response object to fit the expected attribute keys and values  
    
    return mutablePropertyValues;
}

#pragma mark - Write methods 

- (NSDictionary *)representationOfAttributes:(NSDictionary *)attributes ofManagedObject:(NSManagedObject *)managedObject
{
    NSMutableDictionary *mutablePropertyValues = [[super representationOfAttributes:attributes ofManagedObject:managedObject] mutableCopy];
    
    NSLog(@"POST representationOfAttributes: attributes %@, managedObject %@, mutable property values %@", attributes, managedObject, mutablePropertyValues);
    
    return mutablePropertyValues;
}

- (NSMutableURLRequest *)requestForInsertedObject:(NSManagedObject *)insertedObject {
    NSMutableURLRequest *mutableURLRequest = nil;
    
    NSString *path = kTwilioCallURLPath;
    NSDictionary *parameters = @{@"From": kTwilioFromPhoneNumber,
                                 @"To": [insertedObject valueForKey:@"to"],
                                 @"Url": kTwilioUrl};
    mutableURLRequest = [self requestWithMethod:@"POST" path:path parameters:parameters];    
    
    NSLog(@"Sending insert request to %@ with parameters %@", mutableURLRequest.URL.description, parameters);
    return mutableURLRequest;
}

- (BOOL)shouldFetchRemoteAttributeValuesForObjectWithID:(NSManagedObjectID *)objectID
                                 inManagedObjectContext:(NSManagedObjectContext *)context
{
    return NO;
}

- (BOOL)shouldFetchRemoteValuesForRelationship:(NSRelationshipDescription *)relationship
                               forObjectWithID:(NSManagedObjectID *)objectID
                        inManagedObjectContext:(NSManagedObjectContext *)context
{
    return NO;
}

@end
