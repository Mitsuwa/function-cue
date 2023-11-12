// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/sagemaker/v1beta1

package v1beta1

#ImageVersionObservation: {
	// The Amazon Resource Name (ARN) assigned by AWS to this Image Version.
	arn?: null | string @go(Arn,*string)

	// The registry path of the container image on which this image version is based.
	baseImage?: null | string @go(BaseImage,*string)

	// The registry path of the container image that contains this image version.
	containerImage?: null | string @go(ContainerImage,*string)

	// The name of the Image.
	id?: null | string @go(ID,*string)

	// The Amazon Resource Name (ARN) of the image the version is based on.
	imageArn?: null | string @go(ImageArn,*string)

	// The name of the image. Must be unique to your account.
	imageName?: null | string  @go(ImageName,*string)
	version?:   null | float64 @go(Version,*float64)
}

#ImageVersionParameters: {
	// The registry path of the container image on which this image version is based.
	// +kubebuilder:validation:Optional
	baseImage?: null | string @go(BaseImage,*string)

	// The name of the image. Must be unique to your account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sagemaker/v1beta1.Image
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	imageName?: null | string @go(ImageName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// ImageVersionSpec defines the desired state of ImageVersion
#ImageVersionSpec: {
	forProvider: #ImageVersionParameters @go(ForProvider)
}

// ImageVersionStatus defines the observed state of ImageVersion.
#ImageVersionStatus: {
	atProvider?: #ImageVersionObservation @go(AtProvider)
}

// ImageVersion is the Schema for the ImageVersions API. Provides a SageMaker Image Version resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ImageVersion: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.baseImage)",message="baseImage is a required parameter"
	spec:    #ImageVersionSpec   @go(Spec)
	status?: #ImageVersionStatus @go(Status)
}

// ImageVersionList contains a list of ImageVersions
#ImageVersionList: {
	items: [...#ImageVersion] @go(Items,[]ImageVersion)
}
