#
# Be sure to run `pod spec lint AFCloudFilesClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "AFCloudFilesClient"
  s.version      = "0.0.5"
  s.homepage     = "https://github.com/hayesmp/AFCloudFilesClient"
  s.authors      = { "Michael Hayes" => "tasslehawf@gmail.com", "kalestarler" => "https://github.com/kalestarler" }
  s.source       = { :git => "https://github.com/hayesmp/AFCloudFilesClient.git", :tag => "0.0.5" }
  s.ios.deployment_target = '5.0'
  s.source_files = 'Classes', 'AFCloudFilesClient.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
  s.license      = 'MIT'
  s.dependency 'AFNetworking'
  s.summary      = "AFCloudFilesClient is an add-on to AFNetworking to support network interaction with the Rackspace Cloud Files service."
  s.description  = <<-DESC
                     ##AFCloudFilesClient

AFCloudFilesClient is an add-on to AFNetworking to support network interaction with the Rackspace Cloud Files service.

This first version is just a quick-hack to facilitate image uploads to Cloud Files for a project I'm working on at the moment.

**Updated**: 

 - Merged the authenticate method into the initializer.
 - Added a **retrieveImageWithFilename:fromContainer:** method that returns the image via a delegate method.

**Instructions**:

 - Create a **AFCloudFilesClient** object. It will authenticate during init.
 - Call for the relevant method required. Currently available are **uploadFileToContainer:withFilename:data:andContentType:** and **retrieveImageWithFilename:fromContainer:**
 - Proceed with the relevant delegates for those methods.

**Things to come**:

- Integrating authentication within the client so that explicit calls will not be necessary.
- Turning the AFCloudFilesClient into a singleton client class method so it can be called directly without needing to instantiate a new object.
                  DESC
end
