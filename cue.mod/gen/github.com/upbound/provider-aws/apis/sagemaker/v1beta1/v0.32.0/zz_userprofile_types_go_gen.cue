// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sagemaker/v1beta1

package v1beta1

#CanvasAppSettingsTimeSeriesForecastingSettingsObservation: {
}

#CanvasAppSettingsTimeSeriesForecastingSettingsParameters: {
	// The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the AmazonSageMakerCanvasForecastAccess policy attached and forecast.amazonaws.com added in the trust relationship as a service principal.
	// +kubebuilder:validation:Optional
	amazonForecastRoleArn?: null | string @go(AmazonForecastRoleArn,*string)

	// Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are ENABLED and DISABLED.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)
}

#UserProfileObservation: {
	// The user profile Amazon Resource Name (ARN).
	arn?: null | string @go(Arn,*string)

	// The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
	homeEfsFileSystemUid?: null | string @go(HomeEFSFileSystemUID,*string)

	// The user profile Amazon Resource Name (ARN).
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#UserProfileParameters: {
	// The ID of the associated Domain.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sagemaker/v1beta1.Domain
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	domainId?: null | string @go(DomainID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A specifier for the type of value specified in single_sign_on_user_value. Currently, the only supported value is UserName. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
	// +kubebuilder:validation:Optional
	singleSignOnUserIdentifier?: null | string @go(SingleSignOnUserIdentifier,*string)

	// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
	// +kubebuilder:validation:Optional
	singleSignOnUserValue?: null | string @go(SingleSignOnUserValue,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The name for the User Profile.
	// +kubebuilder:validation:Required
	userProfileName?: null | string @go(UserProfileName,*string)

	// The user settings. See User Settings below.
	// +kubebuilder:validation:Optional
	userSettings?: [...#UserSettingsParameters] @go(UserSettings,[]UserSettingsParameters)
}

#UserSettingsCanvasAppSettingsObservation: {
}

#UserSettingsCanvasAppSettingsParameters: {
	// Time series forecast settings for the Canvas app. see Time Series Forecasting Settings below.
	// +kubebuilder:validation:Optional
	timeSeriesForecastingSettings?: [...#CanvasAppSettingsTimeSeriesForecastingSettingsParameters] @go(TimeSeriesForecastingSettings,[]CanvasAppSettingsTimeSeriesForecastingSettingsParameters)
}

#UserSettingsJupyterServerAppSettingsCodeRepositoryObservation: {
}

#UserSettingsJupyterServerAppSettingsCodeRepositoryParameters: {
	// The URL of the Git repository.
	// +kubebuilder:validation:Required
	repositoryUrl?: null | string @go(RepositoryURL,*string)
}

#UserSettingsJupyterServerAppSettingsDefaultResourceSpecObservation: {
}

#UserSettingsJupyterServerAppSettingsDefaultResourceSpecParameters: {
	// The instance type.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
	// +kubebuilder:validation:Optional
	lifecycleConfigArn?: null | string @go(LifecycleConfigArn,*string)

	// The Amazon Resource Name (ARN) of the SageMaker image created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageArn?: null | string @go(SagemakerImageArn,*string)

	// The ARN of the image version created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageVersionArn?: null | string @go(SagemakerImageVersionArn,*string)
}

#UserSettingsJupyterServerAppSettingsObservation: {
}

#UserSettingsJupyterServerAppSettingsParameters: {
	// A list of Git repositories that SageMaker automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
	// +kubebuilder:validation:Optional
	codeRepository?: [...#UserSettingsJupyterServerAppSettingsCodeRepositoryParameters] @go(CodeRepository,[]UserSettingsJupyterServerAppSettingsCodeRepositoryParameters)

	// The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below.
	// +kubebuilder:validation:Optional
	defaultResourceSpec?: [...#UserSettingsJupyterServerAppSettingsDefaultResourceSpecParameters] @go(DefaultResourceSpec,[]UserSettingsJupyterServerAppSettingsDefaultResourceSpecParameters)

	// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
	// +kubebuilder:validation:Optional
	lifecycleConfigArns?: [...null | string] @go(LifecycleConfigArns,[]*string)
}

#UserSettingsKernelGatewayAppSettingsCustomImageObservation: {
}

#UserSettingsKernelGatewayAppSettingsCustomImageParameters: {
	// The name of the App Image Config.
	// +kubebuilder:validation:Required
	appImageConfigName?: null | string @go(AppImageConfigName,*string)

	// The name of the Custom Image.
	// +kubebuilder:validation:Required
	imageName?: null | string @go(ImageName,*string)

	// The version number of the Custom Image.
	// +kubebuilder:validation:Optional
	imageVersionNumber?: null | float64 @go(ImageVersionNumber,*float64)
}

#UserSettingsKernelGatewayAppSettingsDefaultResourceSpecObservation: {
}

#UserSettingsKernelGatewayAppSettingsDefaultResourceSpecParameters: {
	// The instance type.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
	// +kubebuilder:validation:Optional
	lifecycleConfigArn?: null | string @go(LifecycleConfigArn,*string)

	// The Amazon Resource Name (ARN) of the SageMaker image created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageArn?: null | string @go(SagemakerImageArn,*string)

	// The ARN of the image version created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageVersionArn?: null | string @go(SagemakerImageVersionArn,*string)
}

#UserSettingsKernelGatewayAppSettingsObservation: {
}

#UserSettingsKernelGatewayAppSettingsParameters: {
	// A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.
	// +kubebuilder:validation:Optional
	customImage?: [...#UserSettingsKernelGatewayAppSettingsCustomImageParameters] @go(CustomImage,[]UserSettingsKernelGatewayAppSettingsCustomImageParameters)

	// The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below.
	// +kubebuilder:validation:Optional
	defaultResourceSpec?: [...#UserSettingsKernelGatewayAppSettingsDefaultResourceSpecParameters] @go(DefaultResourceSpec,[]UserSettingsKernelGatewayAppSettingsDefaultResourceSpecParameters)

	// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
	// +kubebuilder:validation:Optional
	lifecycleConfigArns?: [...null | string] @go(LifecycleConfigArns,[]*string)
}

#UserSettingsObservation: {
}

#UserSettingsParameters: {
	// The Canvas app settings. See Canvas App Settings below.
	// +kubebuilder:validation:Optional
	canvasAppSettings?: [...#UserSettingsCanvasAppSettingsParameters] @go(CanvasAppSettings,[]UserSettingsCanvasAppSettingsParameters)

	// The execution role ARN for the user.
	// +kubebuilder:validation:Required
	executionRole?: null | string @go(ExecutionRole,*string)

	// The Jupyter server's app settings. See Jupyter Server App Settings below.
	// +kubebuilder:validation:Optional
	jupyterServerAppSettings?: [...#UserSettingsJupyterServerAppSettingsParameters] @go(JupyterServerAppSettings,[]UserSettingsJupyterServerAppSettingsParameters)

	// The kernel gateway app settings. See Kernel Gateway App Settings below.
	// +kubebuilder:validation:Optional
	kernelGatewayAppSettings?: [...#UserSettingsKernelGatewayAppSettingsParameters] @go(KernelGatewayAppSettings,[]UserSettingsKernelGatewayAppSettingsParameters)

	// The RSession app settings. See RSession App Settings below.
	// +kubebuilder:validation:Optional
	rSessionAppSettings?: [...#UserSettingsRSessionAppSettingsParameters] @go(RSessionAppSettings,[]UserSettingsRSessionAppSettingsParameters)

	// The security groups.
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// The sharing settings. See Sharing Settings below.
	// +kubebuilder:validation:Optional
	sharingSettings?: [...#UserSettingsSharingSettingsParameters] @go(SharingSettings,[]UserSettingsSharingSettingsParameters)

	// The TensorBoard app settings. See TensorBoard App Settings below.
	// +kubebuilder:validation:Optional
	tensorBoardAppSettings?: [...#UserSettingsTensorBoardAppSettingsParameters] @go(TensorBoardAppSettings,[]UserSettingsTensorBoardAppSettingsParameters)
}

#UserSettingsRSessionAppSettingsCustomImageObservation: {
}

#UserSettingsRSessionAppSettingsCustomImageParameters: {
	// The name of the App Image Config.
	// +kubebuilder:validation:Required
	appImageConfigName?: null | string @go(AppImageConfigName,*string)

	// The name of the Custom Image.
	// +kubebuilder:validation:Required
	imageName?: null | string @go(ImageName,*string)

	// The version number of the Custom Image.
	// +kubebuilder:validation:Optional
	imageVersionNumber?: null | float64 @go(ImageVersionNumber,*float64)
}

#UserSettingsRSessionAppSettingsDefaultResourceSpecObservation: {
}

#UserSettingsRSessionAppSettingsDefaultResourceSpecParameters: {
	// The instance type.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
	// +kubebuilder:validation:Optional
	lifecycleConfigArn?: null | string @go(LifecycleConfigArn,*string)

	// The Amazon Resource Name (ARN) of the SageMaker image created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageArn?: null | string @go(SagemakerImageArn,*string)

	// The ARN of the image version created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageVersionArn?: null | string @go(SagemakerImageVersionArn,*string)
}

#UserSettingsRSessionAppSettingsObservation: {
}

#UserSettingsRSessionAppSettingsParameters: {
	// A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.
	// +kubebuilder:validation:Optional
	customImage?: [...#UserSettingsRSessionAppSettingsCustomImageParameters] @go(CustomImage,[]UserSettingsRSessionAppSettingsCustomImageParameters)

	// The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below.
	// +kubebuilder:validation:Optional
	defaultResourceSpec?: [...#UserSettingsRSessionAppSettingsDefaultResourceSpecParameters] @go(DefaultResourceSpec,[]UserSettingsRSessionAppSettingsDefaultResourceSpecParameters)
}

#UserSettingsSharingSettingsObservation: {
}

#UserSettingsSharingSettingsParameters: {
	// Whether to include the notebook cell output when sharing the notebook. The default is Disabled. Valid values are Allowed and Disabled.
	// +kubebuilder:validation:Optional
	notebookOutputOption?: null | string @go(NotebookOutputOption,*string)

	// When notebook_output_option is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket.
	// +kubebuilder:validation:Optional
	s3KmsKeyId?: null | string @go(S3KMSKeyID,*string)

	// When notebook_output_option is Allowed, the Amazon S3 bucket used to save the notebook cell output.
	// +kubebuilder:validation:Optional
	s3OutputPath?: null | string @go(S3OutputPath,*string)
}

#UserSettingsTensorBoardAppSettingsDefaultResourceSpecObservation: {
}

#UserSettingsTensorBoardAppSettingsDefaultResourceSpecParameters: {
	// The instance type.
	// +kubebuilder:validation:Optional
	instanceType?: null | string @go(InstanceType,*string)

	// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
	// +kubebuilder:validation:Optional
	lifecycleConfigArn?: null | string @go(LifecycleConfigArn,*string)

	// The Amazon Resource Name (ARN) of the SageMaker image created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageArn?: null | string @go(SagemakerImageArn,*string)

	// The ARN of the image version created on the instance.
	// +kubebuilder:validation:Optional
	sagemakerImageVersionArn?: null | string @go(SagemakerImageVersionArn,*string)
}

#UserSettingsTensorBoardAppSettingsObservation: {
}

#UserSettingsTensorBoardAppSettingsParameters: {
	// The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below.
	// +kubebuilder:validation:Required
	defaultResourceSpec: [...#UserSettingsTensorBoardAppSettingsDefaultResourceSpecParameters] @go(DefaultResourceSpec,[]UserSettingsTensorBoardAppSettingsDefaultResourceSpecParameters)
}

// UserProfileSpec defines the desired state of UserProfile
#UserProfileSpec: {
	forProvider: #UserProfileParameters @go(ForProvider)
}

// UserProfileStatus defines the observed state of UserProfile.
#UserProfileStatus: {
	atProvider?: #UserProfileObservation @go(AtProvider)
}

// UserProfile is the Schema for the UserProfiles API. Provides a SageMaker User Profile resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#UserProfile: {
	spec:    #UserProfileSpec   @go(Spec)
	status?: #UserProfileStatus @go(Status)
}

// UserProfileList contains a list of UserProfiles
#UserProfileList: {
	items: [...#UserProfile] @go(Items,[]UserProfile)
}
