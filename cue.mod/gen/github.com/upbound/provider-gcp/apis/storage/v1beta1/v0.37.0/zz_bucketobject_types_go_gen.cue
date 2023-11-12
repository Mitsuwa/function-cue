// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storage/v1beta1

package v1beta1

#BucketObjectInitParameters: {
	// Cache-Control
	// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
	cacheControl?: null | string @go(CacheControl,*string)

	// Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output.
	content?: null | string @go(Content,*string)

	// Content-Disposition of the object data.
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Content-Encoding of the object data.
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Content-Language of the object data.
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Content-Type of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
	contentType?: null | string @go(ContentType,*string)

	// Enables object encryption with Customer-Supplied Encryption Key (CSEK). [Google documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
	// Structure is documented below.
	customerEncryption?: [...#CustomerEncryptionInitParameters] @go(CustomerEncryption,[]CustomerEncryptionInitParameters)

	// MD5 hash of the data, encoded using base64. This field is not present for composite objects. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
	detectMd5Hash?: null | string @go(DetectMd5Hash,*string)

	// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
	eventBasedHold?: null | bool @go(EventBasedHold,*bool)

	// The resource name of the Cloud KMS key that will be used to encrypt the object.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// User-provided metadata, in key/value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the object. If you're interpolating the name of this object, see output_name instead.
	name?: null | string @go(Name,*string)

	// A path to the data you want to upload. Must be defined
	// if content is not.
	source?: null | string @go(Source,*string)

	// The StorageClass of the new bucket object.
	// Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default
	// storage class or to a standard class.
	storageClass?: null | string @go(StorageClass,*string)

	// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites.
	temporaryHold?: null | bool @go(TemporaryHold,*bool)
}

#BucketObjectObservation: {
	// The name of the containing bucket.
	bucket?: null | string @go(Bucket,*string)

	// Cache-Control
	// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
	cacheControl?: null | string @go(CacheControl,*string)

	// Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output.
	content?: null | string @go(Content,*string)

	// Content-Disposition of the object data.
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Content-Encoding of the object data.
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Content-Language of the object data.
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Content-Type of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
	contentType?: null | string @go(ContentType,*string)

	// (Computed) Base 64 CRC32 hash of the uploaded data.
	crc32c?: null | string @go(Crc32C,*string)

	// Enables object encryption with Customer-Supplied Encryption Key (CSEK). [Google documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
	// Structure is documented below.
	customerEncryption?: [...#CustomerEncryptionObservation] @go(CustomerEncryption,[]CustomerEncryptionObservation)

	// MD5 hash of the data, encoded using base64. This field is not present for composite objects. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
	detectMd5Hash?: null | string @go(DetectMd5Hash,*string)

	// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
	eventBasedHold?: null | bool   @go(EventBasedHold,*bool)
	id?:             null | string @go(ID,*string)

	// The resource name of the Cloud KMS key that will be used to encrypt the object.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// (Computed) Base 64 MD5 hash of the uploaded data.
	md5hash?: null | string @go(Md5Hash,*string)

	// (Computed) A url reference to download this object.
	mediaLink?: null | string @go(MediaLink,*string)

	// User-provided metadata, in key/value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the object. If you're interpolating the name of this object, see output_name instead.
	name?: null | string @go(Name,*string)

	// (Computed) The name of the object. Use this field in interpolations with google_storage_object_acl to recreate
	// google_storage_object_acl resources when your google_storage_bucket_object is recreated.
	outputName?: null | string @go(OutputName,*string)

	// (Computed) A url reference to this object.
	selfLink?: null | string @go(SelfLink,*string)

	// A path to the data you want to upload. Must be defined
	// if content is not.
	source?: null | string @go(Source,*string)

	// The StorageClass of the new bucket object.
	// Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default
	// storage class or to a standard class.
	storageClass?: null | string @go(StorageClass,*string)

	// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites.
	temporaryHold?: null | bool @go(TemporaryHold,*bool)
}

#BucketObjectParameters: {
	// The name of the containing bucket.
	// +crossplane:generate:reference:type=Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Cache-Control
	// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
	// +kubebuilder:validation:Optional
	cacheControl?: null | string @go(CacheControl,*string)

	// Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output.
	// +kubebuilder:validation:Optional
	content?: null | string @go(Content,*string)

	// Content-Disposition of the object data.
	// +kubebuilder:validation:Optional
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Content-Encoding of the object data.
	// +kubebuilder:validation:Optional
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Content-Language of the object data.
	// +kubebuilder:validation:Optional
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Content-Type of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// Enables object encryption with Customer-Supplied Encryption Key (CSEK). [Google documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	customerEncryption?: [...#CustomerEncryptionParameters] @go(CustomerEncryption,[]CustomerEncryptionParameters)

	// MD5 hash of the data, encoded using base64. This field is not present for composite objects. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
	// +kubebuilder:validation:Optional
	detectMd5Hash?: null | string @go(DetectMd5Hash,*string)

	// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
	// +kubebuilder:validation:Optional
	eventBasedHold?: null | bool @go(EventBasedHold,*bool)

	// The resource name of the Cloud KMS key that will be used to encrypt the object.
	// +kubebuilder:validation:Optional
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// User-provided metadata, in key/value pairs.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the object. If you're interpolating the name of this object, see output_name instead.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// A path to the data you want to upload. Must be defined
	// if content is not.
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)

	// The StorageClass of the new bucket object.
	// Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default
	// storage class or to a standard class.
	// +kubebuilder:validation:Optional
	storageClass?: null | string @go(StorageClass,*string)

	// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites.
	// +kubebuilder:validation:Optional
	temporaryHold?: null | bool @go(TemporaryHold,*bool)
}

#CustomerEncryptionInitParameters: {
	// Encryption algorithm. Default: AES256
	encryptionAlgorithm?: null | string @go(EncryptionAlgorithm,*string)
}

#CustomerEncryptionObservation: {
	// Encryption algorithm. Default: AES256
	encryptionAlgorithm?: null | string @go(EncryptionAlgorithm,*string)
}

#CustomerEncryptionParameters: {
	// Encryption algorithm. Default: AES256
	// +kubebuilder:validation:Optional
	encryptionAlgorithm?: null | string @go(EncryptionAlgorithm,*string)
}

// BucketObjectSpec defines the desired state of BucketObject
#BucketObjectSpec: {
	forProvider: #BucketObjectParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #BucketObjectInitParameters @go(InitProvider)
}

// BucketObjectStatus defines the observed state of BucketObject.
#BucketObjectStatus: {
	atProvider?: #BucketObjectObservation @go(AtProvider)
}

// BucketObject is the Schema for the BucketObjects API. Creates a new object inside a specified bucket
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#BucketObject: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #BucketObjectSpec   @go(Spec)
	status?: #BucketObjectStatus @go(Status)
}

// BucketObjectList contains a list of BucketObjects
#BucketObjectList: {
	items: [...#BucketObject] @go(Items,[]BucketObject)
}
