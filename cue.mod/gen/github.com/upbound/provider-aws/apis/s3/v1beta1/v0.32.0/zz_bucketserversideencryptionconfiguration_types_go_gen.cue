// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3/v1beta1

package v1beta1

#BucketServerSideEncryptionConfigurationObservation: {
	// The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided.
	id?: null | string @go(ID,*string)
}

#BucketServerSideEncryptionConfigurationParameters: {
	// ID (name) of the bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Account ID of the expected bucket owner.
	// +kubebuilder:validation:Optional
	expectedBucketOwner?: null | string @go(ExpectedBucketOwner,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
	// +kubebuilder:validation:Required
	rule: [...#BucketServerSideEncryptionConfigurationRuleParameters] @go(Rule,[]BucketServerSideEncryptionConfigurationRuleParameters)
}

#BucketServerSideEncryptionConfigurationRuleObservation: {
}

#BucketServerSideEncryptionConfigurationRuleParameters: {
	// Single object for setting server-side encryption by default. See below.
	// +kubebuilder:validation:Optional
	applyServerSideEncryptionByDefault?: [...#RuleApplyServerSideEncryptionByDefaultParameters] @go(ApplyServerSideEncryptionByDefault,[]RuleApplyServerSideEncryptionByDefaultParameters)

	// Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.
	// +kubebuilder:validation:Optional
	bucketKeyEnabled?: null | bool @go(BucketKeyEnabled,*bool)
}

#RuleApplyServerSideEncryptionByDefaultObservation: {
}

#RuleApplyServerSideEncryptionByDefaultParameters: {
	// AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	kmsMasterKeyId?: null | string @go(KMSMasterKeyID,*string)

	// Server-side encryption algorithm to use. Valid values are AES256 and aws:kms
	// +kubebuilder:validation:Required
	sseAlgorithm?: null | string @go(SseAlgorithm,*string)
}

// BucketServerSideEncryptionConfigurationSpec defines the desired state of BucketServerSideEncryptionConfiguration
#BucketServerSideEncryptionConfigurationSpec: {
	forProvider: #BucketServerSideEncryptionConfigurationParameters @go(ForProvider)
}

// BucketServerSideEncryptionConfigurationStatus defines the observed state of BucketServerSideEncryptionConfiguration.
#BucketServerSideEncryptionConfigurationStatus: {
	atProvider?: #BucketServerSideEncryptionConfigurationObservation @go(AtProvider)
}

// BucketServerSideEncryptionConfiguration is the Schema for the BucketServerSideEncryptionConfigurations API. Provides a S3 bucket server-side encryption configuration resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BucketServerSideEncryptionConfiguration: {
	spec:    #BucketServerSideEncryptionConfigurationSpec   @go(Spec)
	status?: #BucketServerSideEncryptionConfigurationStatus @go(Status)
}

// BucketServerSideEncryptionConfigurationList contains a list of BucketServerSideEncryptionConfigurations
#BucketServerSideEncryptionConfigurationList: {
	items: [...#BucketServerSideEncryptionConfiguration] @go(Items,[]BucketServerSideEncryptionConfiguration)
}
