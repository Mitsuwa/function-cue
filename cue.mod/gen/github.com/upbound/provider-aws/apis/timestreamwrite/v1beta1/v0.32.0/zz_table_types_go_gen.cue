// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/timestreamwrite/v1beta1

package v1beta1

#MagneticStoreRejectedDataLocationObservation: {
}

#MagneticStoreRejectedDataLocationParameters: {
	// Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes. See S3 Configuration below for more details.
	// +kubebuilder:validation:Optional
	s3Configuration?: [...#S3ConfigurationParameters] @go(S3Configuration,[]S3ConfigurationParameters)
}

#MagneticStoreWritePropertiesObservation: {
}

#MagneticStoreWritePropertiesParameters: {
	// A flag to enable magnetic store writes.
	// +kubebuilder:validation:Optional
	enableMagneticStoreWrites?: null | bool @go(EnableMagneticStoreWrites,*bool)

	// The location to write error reports for records rejected asynchronously during magnetic store writes. See Magnetic Store Rejected Data Location below for more details.
	// +kubebuilder:validation:Optional
	magneticStoreRejectedDataLocation?: [...#MagneticStoreRejectedDataLocationParameters] @go(MagneticStoreRejectedDataLocation,[]MagneticStoreRejectedDataLocationParameters)
}

#RetentionPropertiesObservation: {
}

#RetentionPropertiesParameters: {
	// The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000.
	// +kubebuilder:validation:Required
	magneticStoreRetentionPeriodInDays?: null | float64 @go(MagneticStoreRetentionPeriodInDays,*float64)

	// The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.
	// +kubebuilder:validation:Required
	memoryStoreRetentionPeriodInHours?: null | float64 @go(MemoryStoreRetentionPeriodInHours,*float64)
}

#S3ConfigurationObservation: {
}

#S3ConfigurationParameters: {
	// Bucket name of the customer S3 bucket.
	// +kubebuilder:validation:Optional
	bucketName?: null | string @go(BucketName,*string)

	// Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key. Valid values are SSE_KMS and SSE_S3.
	// +kubebuilder:validation:Optional
	encryptionOption?: null | string @go(EncryptionOption,*string)

	// KMS key arn for the customer s3 location when encrypting with a KMS managed key.
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Object key prefix for the customer S3 location.
	// +kubebuilder:validation:Optional
	objectKeyPrefix?: null | string @go(ObjectKeyPrefix,*string)
}

#TableObservation: {
	// The ARN that uniquely identifies this table.
	arn?: null | string @go(Arn,*string)

	// The table_name and database_name separated by a colon (:).
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#TableParameters: {
	// –  The name of the Timestream database.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/timestreamwrite/v1beta1.Database
	// +kubebuilder:validation:Optional
	databaseName?: null | string @go(DatabaseName,*string)

	// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
	// +kubebuilder:validation:Optional
	magneticStoreWriteProperties?: [...#MagneticStoreWritePropertiesParameters] @go(MagneticStoreWriteProperties,[]MagneticStoreWritePropertiesParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, magnetic_store_retention_period_in_days default to 73000 and memory_store_retention_period_in_hours defaults to 6.
	// +kubebuilder:validation:Optional
	retentionProperties?: [...#RetentionPropertiesParameters] @go(RetentionProperties,[]RetentionPropertiesParameters)

	// The name of the Timestream table.
	// +kubebuilder:validation:Required
	tableName?: null | string @go(TableName,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// TableSpec defines the desired state of Table
#TableSpec: {
	forProvider: #TableParameters @go(ForProvider)
}

// TableStatus defines the observed state of Table.
#TableStatus: {
	atProvider?: #TableObservation @go(AtProvider)
}

// Table is the Schema for the Tables API. Provides a Timestream table resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Table: {
	spec:    #TableSpec   @go(Spec)
	status?: #TableStatus @go(Status)
}

// TableList contains a list of Tables
#TableList: {
	items: [...#Table] @go(Items,[]Table)
}
