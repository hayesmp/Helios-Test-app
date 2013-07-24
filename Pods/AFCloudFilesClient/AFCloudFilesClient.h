//
//  AFCloudFilesClient.h
//
//  Created by kalestarler on 28/6/12.
//

#import <UIKit/UIKit.h>
#import "AFHTTPClient.h"
#import "AFHTTPRequestOperation.h"

@protocol AFCloudFilesClientDelegate;

@interface AFCloudFilesClient : NSObject {
    
    BOOL authenticated;
}

@property(nonatomic, strong) NSString *cfUsername;
@property(nonatomic, strong) NSString *cfAPIKey;
@property(nonatomic, strong) NSString *authToken;
@property(nonatomic, strong) NSString *storageURL;
@property(nonatomic, strong) NSString *cdnManagementURL;
@property(nonatomic, strong) AFHTTPClient *cfClient;
@property(nonatomic, strong) id<AFCloudFilesClientDelegate> delegate;
@property(nonatomic, strong) UIProgressView *progressBar;

-(id)initWithUsername:(NSString *)username andKey:(NSString *)apiKey;
-(void)authenticate;

-(void)uploadFileToContainer:(NSString *)container withFilename:(NSString *)filename data:(NSData *)data andContentType:(NSString *)contentType;
-(void)setProgressBar:(UIProgressView *)appProgressBar;

-(void)retrieveImageWithFilename:(NSString *)filename fromContainer:(NSString *)container;

@end

@protocol AFCloudFilesClientDelegate <NSObject>
@optional

-(void)AFCloudFilesClient:(AFCloudFilesClient *)client withAFHTTPRequestOperation:(AFHTTPRequestOperation *)operation completedUploadWithResponse:(id)responseObject;
-(void)AFCloudFilesClient:(AFCloudFilesClient *)client withAFHTTPRequestOperation:(AFHTTPRequestOperation *)operation failedUploadWithError:(NSError *)error;

-(void)retrievedImage:(UIImage *)image WithFilename:(NSString *)filename fromContainer:(NSString *)container;
-(void)AFCloudFilesClient:(AFCloudFilesClient *)client withAFHTTPRequestOperation:(AFHTTPRequestOperation *)operation failedDownloadWithError:(NSError *)error;

@end
