#import "AFIncrementalStore.h"
#import "AFRestClient.h"

@interface TwiLiuAPIClient : AFRESTClient <AFIncrementalStoreHTTPClient>

+ (TwiLiuAPIClient *)sharedClient;

@end
