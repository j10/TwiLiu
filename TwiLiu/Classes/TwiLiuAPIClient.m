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

#pragma mark - Write methods

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
