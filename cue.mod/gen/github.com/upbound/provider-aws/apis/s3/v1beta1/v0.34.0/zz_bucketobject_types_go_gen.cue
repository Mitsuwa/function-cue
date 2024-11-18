// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3/v1beta1

package v1beta1

#BucketObjectObservation: {
	// Canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private.
	acl?: null | string @go(ACL,*string)

	// Name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified.
	bucket?: null | string @go(Bucket,*string)

	// Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.
	bucketKeyEnabled?: null | bool @go(BucketKeyEnabled,*bool)

	// Caching behavior along the request/reply chain Read w3c cache_control for further details.
	cacheControl?: null | string @go(CacheControl,*string)

	// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
	content?: null | string @go(Content,*string)

	// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the gzipbase64 function with small text strings. For larger objects, use source to stream the content from a disk file.
	contentBase64?: null | string @go(ContentBase64,*string)

	// Presentational information for the object. Read w3c content_disposition for further information.
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information.
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Language the content is in e.g., en-US or en-GB.
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
	contentType?: null | string @go(ContentType,*string)

	// Triggers updates when the value changes.11.11.11 or earlier). This attribute is not compatible with KMS encryption, kms_key_id or server_side_encryption = "aws:kms" (see source_hash instead).
	etag?: null | string @go(Etag,*string)

	// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled.
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// key of the resource supplied above
	id?: null | string @go(ID,*string)

	// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute.
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Name of the object once it is in the bucket.
	key?: null | string @go(Key,*string)

	// Map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API).
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// Legal hold status that you want to apply to the specified object. Valid values are ON and OFF.
	objectLockLegalHoldStatus?: null | string @go(ObjectLockLegalHoldStatus,*string)

	// Object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE.
	objectLockMode?: null | string @go(ObjectLockMode,*string)

	// Date and time, in RFC3339 format, when this object's object lock will expire.
	objectLockRetainUntilDate?: null | string @go(ObjectLockRetainUntilDate,*string)

	// Server-side encryption of the object in S3. Valid values are "AES256" and "aws:kms".
	serverSideEncryption?: null | string @go(ServerSideEncryption,*string)

	// Path to a file that will be read and uploaded as raw bytes for the object content.
	source?: null | string @go(Source,*string)

	// Triggers updates like etag but useful to address etag encryption limitations.11.12 or later). (The value is only stored in state and not saved by AWS.)
	sourceHash?: null | string @go(SourceHash,*string)

	// Storage Class for the object. Defaults to "STANDARD".
	storageClass?: null | string @go(StorageClass,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Unique version ID value for the object, if bucket versioning is enabled.
	versionId?: null | string @go(VersionID,*string)

	// Target URL for website redirect.
	websiteRedirect?: null | string @go(WebsiteRedirect,*string)
}

#BucketObjectParameters: {
	// Canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private.
	// +kubebuilder:validation:Optional
	acl?: null | string @go(ACL,*string)

	// Name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.
	// +kubebuilder:validation:Optional
	bucketKeyEnabled?: null | bool @go(BucketKeyEnabled,*bool)

	// Caching behavior along the request/reply chain Read w3c cache_control for further details.
	// +kubebuilder:validation:Optional
	cacheControl?: null | string @go(CacheControl,*string)

	// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
	// +kubebuilder:validation:Optional
	content?: null | string @go(Content,*string)

	// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the gzipbase64 function with small text strings. For larger objects, use source to stream the content from a disk file.
	// +kubebuilder:validation:Optional
	contentBase64?: null | string @go(ContentBase64,*string)

	// Presentational information for the object. Read w3c content_disposition for further information.
	// +kubebuilder:validation:Optional
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information.
	// +kubebuilder:validation:Optional
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Language the content is in e.g., en-US or en-GB.
	// +kubebuilder:validation:Optional
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// Triggers updates when the value changes.11.11.11 or earlier). This attribute is not compatible with KMS encryption, kms_key_id or server_side_encryption = "aws:kms" (see source_hash instead).
	// +kubebuilder:validation:Optional
	etag?: null | string @go(Etag,*string)

	// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled.
	// +kubebuilder:validation:Optional
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/kms/v1beta1.Key
	// +kubebuilder:validation:Optional
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Name of the object once it is in the bucket.
	// +kubebuilder:validation:Optional
	key?: null | string @go(Key,*string)

	// Map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API).
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// Legal hold status that you want to apply to the specified object. Valid values are ON and OFF.
	// +kubebuilder:validation:Optional
	objectLockLegalHoldStatus?: null | string @go(ObjectLockLegalHoldStatus,*string)

	// Object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE.
	// +kubebuilder:validation:Optional
	objectLockMode?: null | string @go(ObjectLockMode,*string)

	// Date and time, in RFC3339 format, when this object's object lock will expire.
	// +kubebuilder:validation:Optional
	objectLockRetainUntilDate?: null | string @go(ObjectLockRetainUntilDate,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Server-side encryption of the object in S3. Valid values are "AES256" and "aws:kms".
	// +kubebuilder:validation:Optional
	serverSideEncryption?: null | string @go(ServerSideEncryption,*string)

	// Path to a file that will be read and uploaded as raw bytes for the object content.
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)

	// Triggers updates like etag but useful to address etag encryption limitations.11.12 or later). (The value is only stored in state and not saved by AWS.)
	// +kubebuilder:validation:Optional
	sourceHash?: null | string @go(SourceHash,*string)

	// Storage Class for the object. Defaults to "STANDARD".
	// +kubebuilder:validation:Optional
	storageClass?: null | string @go(StorageClass,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Target URL for website redirect.
	// +kubebuilder:validation:Optional
	websiteRedirect?: null | string @go(WebsiteRedirect,*string)
}

// BucketObjectSpec defines the desired state of BucketObject
#BucketObjectSpec: {
	forProvider: #BucketObjectParameters @go(ForProvider)
}

// BucketObjectStatus defines the observed state of BucketObject.
#BucketObjectStatus: {
	atProvider?: #BucketObjectObservation @go(AtProvider)
}

// BucketObject is the Schema for the BucketObjects API. Provides an S3 object resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BucketObject: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.key)",message="key is a required parameter"
	spec:    #BucketObjectSpec   @go(Spec)
	status?: #BucketObjectStatus @go(Status)
}

// BucketObjectList contains a list of BucketObjects
#BucketObjectList: {
	items: [...#BucketObject] @go(Items,[]BucketObject)
}
