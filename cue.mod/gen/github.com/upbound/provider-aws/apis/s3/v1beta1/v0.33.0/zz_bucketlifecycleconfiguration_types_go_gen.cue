// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3/v1beta1

package v1beta1

#AbortIncompleteMultipartUploadObservation: {
}

#AbortIncompleteMultipartUploadParameters: {
	// Number of days after which Amazon S3 aborts an incomplete multipart upload.
	// +kubebuilder:validation:Optional
	daysAfterInitiation?: null | float64 @go(DaysAfterInitiation,*float64)
}

#AndObservation: {
}

#AndParameters: {
	// Minimum object size (in bytes) to which the rule applies.
	// +kubebuilder:validation:Optional
	objectSizeGreaterThan?: null | float64 @go(ObjectSizeGreaterThan,*float64)

	// Maximum object size (in bytes) to which the rule applies.
	// +kubebuilder:validation:Optional
	objectSizeLessThan?: null | float64 @go(ObjectSizeLessThan,*float64)

	// DEPRECATED Use filter instead. This has been deprecated by Amazon S3. Prefix identifying one or more objects to which the rule applies. Defaults to an empty string ("") if filter is not specified.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)

	// Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#BucketLifecycleConfigurationObservation: {
	// and status)
	id?: null | string @go(ID,*string)
}

#BucketLifecycleConfigurationParameters: {
	// Name of the source S3 bucket you want Amazon S3 to monitor.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
	// +kubebuilder:validation:Optional
	expectedBucketOwner?: null | string @go(ExpectedBucketOwner,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// List of configuration blocks describing the rules managing the replication. See below.
	// +kubebuilder:validation:Required
	rule: [...#BucketLifecycleConfigurationRuleParameters] @go(Rule,[]BucketLifecycleConfigurationRuleParameters)
}

#BucketLifecycleConfigurationRuleObservation: {
}

#BucketLifecycleConfigurationRuleParameters: {
	// Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. See below.
	// +kubebuilder:validation:Optional
	abortIncompleteMultipartUpload?: [...#AbortIncompleteMultipartUploadParameters] @go(AbortIncompleteMultipartUpload,[]AbortIncompleteMultipartUploadParameters)

	// Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker. See below.
	// +kubebuilder:validation:Optional
	expiration?: [...#RuleExpirationParameters] @go(Expiration,[]RuleExpirationParameters)

	// Configuration block used to identify objects that a Lifecycle Rule applies to. See below. If not specified, the rule will default to using prefix.
	// +kubebuilder:validation:Optional
	filter?: [...#RuleFilterParameters] @go(Filter,[]RuleFilterParameters)

	// Unique identifier for the rule. The value cannot be longer than 255 characters.
	// +kubebuilder:validation:Required
	id?: null | string @go(ID,*string)

	// Configuration block that specifies when noncurrent object versions expire. See below.
	// +kubebuilder:validation:Optional
	noncurrentVersionExpiration?: [...#RuleNoncurrentVersionExpirationParameters] @go(NoncurrentVersionExpiration,[]RuleNoncurrentVersionExpirationParameters)

	// Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. See below.
	// +kubebuilder:validation:Optional
	noncurrentVersionTransition?: [...#RuleNoncurrentVersionTransitionParameters] @go(NoncurrentVersionTransition,[]RuleNoncurrentVersionTransitionParameters)

	// DEPRECATED Use filter instead. This has been deprecated by Amazon S3. Prefix identifying one or more objects to which the rule applies. Defaults to an empty string ("") if filter is not specified.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)

	// Whether the rule is currently being applied. Valid values: Enabled or Disabled.
	// +kubebuilder:validation:Required
	status?: null | string @go(Status,*string)

	// Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class. See below.
	// +kubebuilder:validation:Optional
	transition?: [...#RuleTransitionParameters] @go(Transition,[]RuleTransitionParameters)
}

#RuleExpirationObservation: {
}

#RuleExpirationParameters: {
	// Date objects are transitioned to the specified storage class. The date value must be in RFC3339 format and set to midnight UTC e.g. 2023-01-13T00:00:00Z.
	// +kubebuilder:validation:Optional
	date?: null | string @go(Date,*string)

	// Number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer. If both days and date are not specified, defaults to 0. Valid values depend on storage_class, see Transition objects using Amazon S3 Lifecycle for more details.
	// +kubebuilder:validation:Optional
	days?: null | float64 @go(Days,*float64)

	// Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action.
	// +kubebuilder:validation:Optional
	expiredObjectDeleteMarker?: null | bool @go(ExpiredObjectDeleteMarker,*bool)
}

#RuleFilterObservation: {
}

#RuleFilterParameters: {
	// Configuration block used to apply a logical AND to two or more predicates. See below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the and block.
	// +kubebuilder:validation:Optional
	and?: [...#AndParameters] @go(And,[]AndParameters)

	// Minimum object size (in bytes) to which the rule applies.
	// +kubebuilder:validation:Optional
	objectSizeGreaterThan?: null | string @go(ObjectSizeGreaterThan,*string)

	// Maximum object size (in bytes) to which the rule applies.
	// +kubebuilder:validation:Optional
	objectSizeLessThan?: null | string @go(ObjectSizeLessThan,*string)

	// DEPRECATED Use filter instead. This has been deprecated by Amazon S3. Prefix identifying one or more objects to which the rule applies. Defaults to an empty string ("") if filter is not specified.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)

	// Configuration block for specifying a tag key and value. See below.
	// +kubebuilder:validation:Optional
	tag?: [...#TagParameters] @go(Tag,[]TagParameters)
}

#RuleNoncurrentVersionExpirationObservation: {
}

#RuleNoncurrentVersionExpirationParameters: {
	// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
	// +kubebuilder:validation:Optional
	newerNoncurrentVersions?: null | string @go(NewerNoncurrentVersions,*string)

	// Number of days an object is noncurrent before Amazon S3 can perform the associated action.
	// +kubebuilder:validation:Optional
	noncurrentDays?: null | float64 @go(NoncurrentDays,*float64)
}

#RuleNoncurrentVersionTransitionObservation: {
}

#RuleNoncurrentVersionTransitionParameters: {
	// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
	// +kubebuilder:validation:Optional
	newerNoncurrentVersions?: null | string @go(NewerNoncurrentVersions,*string)

	// Number of days an object is noncurrent before Amazon S3 can perform the associated action.
	// +kubebuilder:validation:Optional
	noncurrentDays?: null | float64 @go(NoncurrentDays,*float64)

	// Class of storage used to store the object. Valid Values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR.
	// +kubebuilder:validation:Required
	storageClass?: null | string @go(StorageClass,*string)
}

#RuleTransitionObservation: {
}

#RuleTransitionParameters: {
	// Date objects are transitioned to the specified storage class. The date value must be in RFC3339 format and set to midnight UTC e.g. 2023-01-13T00:00:00Z.
	// +kubebuilder:validation:Optional
	date?: null | string @go(Date,*string)

	// Number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer. If both days and date are not specified, defaults to 0. Valid values depend on storage_class, see Transition objects using Amazon S3 Lifecycle for more details.
	// +kubebuilder:validation:Optional
	days?: null | float64 @go(Days,*float64)

	// Class of storage used to store the object. Valid Values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR.
	// +kubebuilder:validation:Required
	storageClass?: null | string @go(StorageClass,*string)
}

#TagObservation: {
}

#TagParameters: {
	// Name of the object key.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// Value of the tag.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

// BucketLifecycleConfigurationSpec defines the desired state of BucketLifecycleConfiguration
#BucketLifecycleConfigurationSpec: {
	forProvider: #BucketLifecycleConfigurationParameters @go(ForProvider)
}

// BucketLifecycleConfigurationStatus defines the observed state of BucketLifecycleConfiguration.
#BucketLifecycleConfigurationStatus: {
	atProvider?: #BucketLifecycleConfigurationObservation @go(AtProvider)
}

// BucketLifecycleConfiguration is the Schema for the BucketLifecycleConfigurations API. Provides a S3 bucket lifecycle configuration resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BucketLifecycleConfiguration: {
	spec:    #BucketLifecycleConfigurationSpec   @go(Spec)
	status?: #BucketLifecycleConfigurationStatus @go(Status)
}

// BucketLifecycleConfigurationList contains a list of BucketLifecycleConfigurations
#BucketLifecycleConfigurationList: {
	items: [...#BucketLifecycleConfiguration] @go(Items,[]BucketLifecycleConfiguration)
}
