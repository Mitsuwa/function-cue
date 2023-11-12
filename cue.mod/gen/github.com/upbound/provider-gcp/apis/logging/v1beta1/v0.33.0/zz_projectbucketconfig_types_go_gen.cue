// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/logging/v1beta1

package v1beta1

#CmekSettingsObservation: {
	// The resource name for the configured Cloud KMS key.
	// KMS key name format:
	// 'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]'
	// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
	// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
	// See Enabling CMEK for Logging Buckets for more information.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// The CryptoKeyVersion resource name for the configured Cloud KMS key.
	// KMS key name format:
	// 'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]'
	// For example:
	// "projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1"
	// This is a read-only field used to convey the specific configured CryptoKeyVersion of kms_key that has been configured. It will be populated in cases where the CMEK settings are bound to a single key version.
	kmsKeyVersionName?: null | string @go(KMSKeyVersionName,*string)

	// The resource name of the CMEK settings.
	name?: null | string @go(Name,*string)

	// The service account associated with a project for which CMEK will apply.
	// Before enabling CMEK for a logging bucket, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account associated with the project for which CMEK will apply. Use v2.getCmekSettings to obtain the service account ID.
	// See Enabling CMEK for Logging Buckets for more information.
	serviceAccountId?: null | string @go(ServiceAccountID,*string)
}

#CmekSettingsParameters: {
	// The resource name for the configured Cloud KMS key.
	// KMS key name format:
	// 'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]'
	// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
	// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
	// See Enabling CMEK for Logging Buckets for more information.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/kms/v1beta1.CryptoKey
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	kmsKeyName?: null | string @go(KMSKeyName,*string)
}

#ProjectBucketConfigObservation: {
	// The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.
	bucketId?: null | string @go(BucketID,*string)

	// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
	cmekSettings?: [...#CmekSettingsObservation] @go(CmekSettings,[]CmekSettingsObservation)

	// Describes this bucket.
	description?: null | string @go(Description,*string)

	// Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the Log Analytics page using SQL queries. Cannot be disabled once enabled.
	enableAnalytics?: null | bool @go(EnableAnalytics,*bool)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/buckets/{{bucket_id}}
	id?: null | string @go(ID,*string)

	// The bucket's lifecycle such as active or deleted. See LifecycleState.
	lifecycleState?: null | string @go(LifecycleState,*string)

	// The location of the bucket.
	location?: null | string @go(Location,*string)

	// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
	name?: null | string @go(Name,*string)

	// The parent resource that contains the logging bucket.
	project?: null | string @go(Project,*string)

	// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

#ProjectBucketConfigParameters: {
	// The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default.
	// +kubebuilder:validation:Required
	bucketId?: null | string @go(BucketID,*string)

	// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
	// +kubebuilder:validation:Optional
	cmekSettings?: [...#CmekSettingsParameters] @go(CmekSettings,[]CmekSettingsParameters)

	// Describes this bucket.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the Log Analytics page using SQL queries. Cannot be disabled once enabled.
	// +kubebuilder:validation:Optional
	enableAnalytics?: null | bool @go(EnableAnalytics,*bool)

	// The location of the bucket.
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// The parent resource that contains the logging bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.Project
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
	// +kubebuilder:validation:Optional
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

// ProjectBucketConfigSpec defines the desired state of ProjectBucketConfig
#ProjectBucketConfigSpec: {
	forProvider: #ProjectBucketConfigParameters @go(ForProvider)
}

// ProjectBucketConfigStatus defines the observed state of ProjectBucketConfig.
#ProjectBucketConfigStatus: {
	atProvider?: #ProjectBucketConfigObservation @go(AtProvider)
}

// ProjectBucketConfig is the Schema for the ProjectBucketConfigs API. Manages a project-level logging bucket config.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectBucketConfig: {
	spec:    #ProjectBucketConfigSpec   @go(Spec)
	status?: #ProjectBucketConfigStatus @go(Status)
}

// ProjectBucketConfigList contains a list of ProjectBucketConfigs
#ProjectBucketConfigList: {
	items: [...#ProjectBucketConfig] @go(Items,[]ProjectBucketConfig)
}
