// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ecr/v1beta1

package v1beta1

#EncryptionConfigurationObservation: {
	// The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256.
	encryptionType?: null | string @go(EncryptionType,*string)

	// The ARN of the KMS key to use when encryption_type is KMS. If not specified, uses the default AWS managed key for ECR.
	kmsKey?: null | string @go(KMSKey,*string)
}

#EncryptionConfigurationParameters: {
	// The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256.
	// +kubebuilder:validation:Optional
	encryptionType?: null | string @go(EncryptionType,*string)

	// The ARN of the KMS key to use when encryption_type is KMS. If not specified, uses the default AWS managed key for ECR.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	kmsKey?: null | string @go(KMSKey,*string)
}

#ImageScanningConfigurationObservation: {
	// Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false).
	scanOnPush?: null | bool @go(ScanOnPush,*bool)
}

#ImageScanningConfigurationParameters: {
	// Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false).
	// +kubebuilder:validation:Required
	scanOnPush?: null | bool @go(ScanOnPush,*bool)
}

#RepositoryObservation: {
	// Full ARN of the repository.
	arn?: null | string @go(Arn,*string)

	// Encryption configuration for the repository. See below for schema.
	encryptionConfiguration?: [...#EncryptionConfigurationObservation] @go(EncryptionConfiguration,[]EncryptionConfigurationObservation)

	// If true, will delete the repository even if it contains images.
	// Defaults to false.
	forceDelete?: null | bool   @go(ForceDelete,*bool)
	id?:          null | string @go(ID,*string)

	// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide for more information about image scanning.
	imageScanningConfiguration?: [...#ImageScanningConfigurationObservation] @go(ImageScanningConfiguration,[]ImageScanningConfigurationObservation)

	// The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE.
	imageTagMutability?: null | string @go(ImageTagMutability,*string)

	// The registry ID where the repository was created.
	registryId?: null | string @go(RegistryID,*string)

	// The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName).
	repositoryUrl?: null | string @go(RepositoryURL,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#RepositoryParameters: {
	// Encryption configuration for the repository. See below for schema.
	// +kubebuilder:validation:Optional
	encryptionConfiguration?: [...#EncryptionConfigurationParameters] @go(EncryptionConfiguration,[]EncryptionConfigurationParameters)

	// If true, will delete the repository even if it contains images.
	// Defaults to false.
	// +kubebuilder:validation:Optional
	forceDelete?: null | bool @go(ForceDelete,*bool)

	// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide for more information about image scanning.
	// +kubebuilder:validation:Optional
	imageScanningConfiguration?: [...#ImageScanningConfigurationParameters] @go(ImageScanningConfiguration,[]ImageScanningConfigurationParameters)

	// The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE.
	// +kubebuilder:validation:Optional
	imageTagMutability?: null | string @go(ImageTagMutability,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// RepositorySpec defines the desired state of Repository
#RepositorySpec: {
	forProvider: #RepositoryParameters @go(ForProvider)
}

// RepositoryStatus defines the observed state of Repository.
#RepositoryStatus: {
	atProvider?: #RepositoryObservation @go(AtProvider)
}

// Repository is the Schema for the Repositorys API. Provides an Elastic Container Registry Repository.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Repository: {
	spec:    #RepositorySpec   @go(Spec)
	status?: #RepositoryStatus @go(Status)
}

// RepositoryList contains a list of Repositorys
#RepositoryList: {
	items: [...#Repository] @go(Items,[]Repository)
}
