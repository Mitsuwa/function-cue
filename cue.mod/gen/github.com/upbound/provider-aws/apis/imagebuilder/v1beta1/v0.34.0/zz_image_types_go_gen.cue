// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/imagebuilder/v1beta1

package v1beta1

#AmisObservation: {
	// Account identifier of the AMI.
	accountId?: null | string @go(AccountID,*string)

	// Description of the AMI.
	description?: null | string @go(Description,*string)

	// Identifier of the AMI.
	image?: null | string @go(Image,*string)

	// Name of the AMI.
	name?: null | string @go(Name,*string)

	// Region of the AMI.
	region?: null | string @go(Region,*string)
}

#AmisParameters: {
}

#ImageObservation: {
	// Amazon Resource Name (ARN) of the image.
	arn?: null | string @go(Arn,*string)

	// - Amazon Resource Name (ARN) of the container recipe.
	containerRecipeArn?: null | string @go(ContainerRecipeArn,*string)

	// Date the image was created.
	dateCreated?: null | string @go(DateCreated,*string)

	// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
	distributionConfigurationArn?: null | string @go(DistributionConfigurationArn,*string)

	// Whether additional information about the image being created is collected. Defaults to true.
	enhancedImageMetadataEnabled?: null | bool   @go(EnhancedImageMetadataEnabled,*bool)
	id?:                           null | string @go(ID,*string)

	// Amazon Resource Name (ARN) of the image recipe.
	imageRecipeArn?: null | string @go(ImageRecipeArn,*string)

	// Configuration block with image tests configuration. Detailed below.
	imageTestsConfiguration?: [...#ImageTestsConfigurationObservation] @go(ImageTestsConfiguration,[]ImageTestsConfigurationObservation)

	// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
	infrastructureConfigurationArn?: null | string @go(InfrastructureConfigurationArn,*string)

	// Name of the AMI.
	name?: null | string @go(Name,*string)

	// Operating System version of the image.
	osVersion?: null | string @go(OsVersion,*string)

	// List of objects with resources created by the image.
	outputResources?: [...#OutputResourcesObservation] @go(OutputResources,[]OutputResourcesObservation)

	// Platform of the image.
	platform?: null | string @go(Platform,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Version of the image.
	version?: null | string @go(Version,*string)
}

#ImageParameters: {
	// - Amazon Resource Name (ARN) of the container recipe.
	// +kubebuilder:validation:Optional
	containerRecipeArn?: null | string @go(ContainerRecipeArn,*string)

	// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/imagebuilder/v1beta1.DistributionConfiguration
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	distributionConfigurationArn?: null | string @go(DistributionConfigurationArn,*string)

	// Whether additional information about the image being created is collected. Defaults to true.
	// +kubebuilder:validation:Optional
	enhancedImageMetadataEnabled?: null | bool @go(EnhancedImageMetadataEnabled,*bool)

	// Amazon Resource Name (ARN) of the image recipe.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/imagebuilder/v1beta1.ImageRecipe
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	imageRecipeArn?: null | string @go(ImageRecipeArn,*string)

	// Configuration block with image tests configuration. Detailed below.
	// +kubebuilder:validation:Optional
	imageTestsConfiguration?: [...#ImageTestsConfigurationParameters] @go(ImageTestsConfiguration,[]ImageTestsConfigurationParameters)

	// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/imagebuilder/v1beta1.InfrastructureConfiguration
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	infrastructureConfigurationArn?: null | string @go(InfrastructureConfigurationArn,*string)

	// Region of the AMI.
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ImageTestsConfigurationObservation: {
	// Whether image tests are enabled. Defaults to true.
	imageTestsEnabled?: null | bool @go(ImageTestsEnabled,*bool)

	// Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.
	timeoutMinutes?: null | float64 @go(TimeoutMinutes,*float64)
}

#ImageTestsConfigurationParameters: {
	// Whether image tests are enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	imageTestsEnabled?: null | bool @go(ImageTestsEnabled,*bool)

	// Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.
	// +kubebuilder:validation:Optional
	timeoutMinutes?: null | float64 @go(TimeoutMinutes,*float64)
}

#OutputResourcesObservation: {
	// Set of objects with each Amazon Machine Image (AMI) created.
	amis?: [...#AmisObservation] @go(Amis,[]AmisObservation)
}

#OutputResourcesParameters: {
}

// ImageSpec defines the desired state of Image
#ImageSpec: {
	forProvider: #ImageParameters @go(ForProvider)
}

// ImageStatus defines the observed state of Image.
#ImageStatus: {
	atProvider?: #ImageObservation @go(AtProvider)
}

// Image is the Schema for the Images API. Manages an Image Builder Image
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Image: {
	spec:    #ImageSpec   @go(Spec)
	status?: #ImageStatus @go(Status)
}

// ImageList contains a list of Images
#ImageList: {
	items: [...#Image] @go(Items,[]Image)
}
