// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/s3/v1beta1

package v1beta1

#ObjectCopyGrantObservation: {
}

#ObjectCopyGrantParameters: {
	// Email address of the grantee. Used only when type is AmazonCustomerByEmail.
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)

	// The canonical user ID of the grantee. Used only when type is CanonicalUser.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// List of permissions to grant to grantee. Valid values are READ, READ_ACP, WRITE_ACP, FULL_CONTROL.
	// +kubebuilder:validation:Required
	permissions: [...null | string] @go(Permissions,[]*string)

	// - Type of grantee. Valid values are CanonicalUser, Group, and AmazonCustomerByEmail.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)

	// URI of the grantee group. Used only when type is Group.
	// +kubebuilder:validation:Optional
	uri?: null | string @go(URI,*string)
}

#ObjectCopyObservation: {
	// The ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers.
	etag?: null | string @go(Etag,*string)

	// If the object expiration is configured, this attribute will be set.
	expiration?: null | string @go(Expiration,*string)

	// The canonical user ID of the grantee. Used only when type is CanonicalUser.
	id?: null | string @go(ID,*string)

	// Returns the date that the object was last modified, in RFC3339 format.
	lastModified?: null | string @go(LastModified,*string)

	// If present, indicates that the requester was successfully charged for the request.
	requestCharged?: null | bool @go(RequestCharged,*bool)

	// Version of the copied object in the source bucket.
	sourceVersionId?: null | string @go(SourceVersionID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Version ID of the newly created copy.
	versionId?: null | string @go(VersionID,*string)
}

#ObjectCopyParameters: {
	// Canned ACL to apply. Defaults to private. Valid values are private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, and bucket-owner-full-control. Conflicts with grant.
	// +kubebuilder:validation:Optional
	acl?: null | string @go(ACL,*string)

	// Name of the bucket to put the file in.
	// +kubebuilder:validation:Required
	bucket?: null | string @go(Bucket,*string)

	// +kubebuilder:validation:Optional
	bucketKeyEnabled?: null | bool @go(BucketKeyEnabled,*bool)

	// Specifies caching behavior along the request/reply chain Read w3c cache_control for further details.
	// +kubebuilder:validation:Optional
	cacheControl?: null | string @go(CacheControl,*string)

	// Specifies presentational information for the object. Read w3c content_disposition for further information.
	// +kubebuilder:validation:Optional
	contentDisposition?: null | string @go(ContentDisposition,*string)

	// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information.
	// +kubebuilder:validation:Optional
	contentEncoding?: null | string @go(ContentEncoding,*string)

	// Language the content is in e.g., en-US or en-GB.
	// +kubebuilder:validation:Optional
	contentLanguage?: null | string @go(ContentLanguage,*string)

	// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// Copies the object if its entity tag (ETag) matches the specified tag.
	// +kubebuilder:validation:Optional
	copyIfMatch?: null | string @go(CopyIfMatch,*string)

	// Copies the object if it has been modified since the specified time, in RFC3339 format.
	// +kubebuilder:validation:Optional
	copyIfModifiedSince?: null | string @go(CopyIfModifiedSince,*string)

	// Copies the object if its entity tag (ETag) is different than the specified ETag.
	// +kubebuilder:validation:Optional
	copyIfNoneMatch?: null | string @go(CopyIfNoneMatch,*string)

	// Copies the object if it hasn't been modified since the specified time, in RFC3339 format.
	// +kubebuilder:validation:Optional
	copyIfUnmodifiedSince?: null | string @go(CopyIfUnmodifiedSince,*string)

	// Specifies the algorithm to use to when encrypting the object (for example, AES256).
	// +kubebuilder:validation:Optional
	customerAlgorithm?: null | string @go(CustomerAlgorithm,*string)

	// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
	// +kubebuilder:validation:Optional
	customerKeyMd5?: null | string @go(CustomerKeyMd5,*string)

	// Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
	// +kubebuilder:validation:Optional
	expectedBucketOwner?: null | string @go(ExpectedBucketOwner,*string)

	// Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
	// +kubebuilder:validation:Optional
	expectedSourceBucketOwner?: null | string @go(ExpectedSourceBucketOwner,*string)

	// Date and time at which the object is no longer cacheable, in RFC3339 format.
	// +kubebuilder:validation:Optional
	expires?: null | string @go(Expires,*string)

	// Allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled.
	// +kubebuilder:validation:Optional
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// Configuration block for header grants. Documented below. Conflicts with acl.
	// +kubebuilder:validation:Optional
	grant?: [...#ObjectCopyGrantParameters] @go(Grant,[]ObjectCopyGrantParameters)

	// Name of the object once it is in the bucket.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API).
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are COPY and REPLACE.
	// +kubebuilder:validation:Optional
	metadataDirective?: null | string @go(MetadataDirective,*string)

	// The legal hold status that you want to apply to the specified object. Valid values are ON and OFF.
	// +kubebuilder:validation:Optional
	objectLockLegalHoldStatus?: null | string @go(ObjectLockLegalHoldStatus,*string)

	// The object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE.
	// +kubebuilder:validation:Optional
	objectLockMode?: null | string @go(ObjectLockMode,*string)

	// The date and time, in RFC3339 format, when this object's object lock will expire.
	// +kubebuilder:validation:Optional
	objectLockRetainUntilDate?: null | string @go(ObjectLockRetainUntilDate,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is requester.
	// +kubebuilder:validation:Optional
	requestPayer?: null | string @go(RequestPayer,*string)

	// Specifies server-side encryption of the object in S3. Valid values are AES256 and aws:kms.
	// +kubebuilder:validation:Optional
	serverSideEncryption?: null | string @go(ServerSideEncryption,*string)

	// Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (/). For example, testbucket/test1.json. For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>. For example, arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json.
	// +kubebuilder:validation:Required
	source?: null | string @go(Source,*string)

	// Specifies the algorithm to use when decrypting the source object (for example, AES256).
	// +kubebuilder:validation:Optional
	sourceCustomerAlgorithm?: null | string @go(SourceCustomerAlgorithm,*string)

	// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
	// +kubebuilder:validation:Optional
	sourceCustomerKeyMd5?: null | string @go(SourceCustomerKeyMd5,*string)

	// Specifies the desired storage class for the object. Defaults to STANDARD.
	// +kubebuilder:validation:Optional
	storageClass?: null | string @go(StorageClass,*string)

	// Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are COPY and REPLACE.
	// +kubebuilder:validation:Optional
	taggingDirective?: null | string @go(TaggingDirective,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies a target URL for website redirect.
	// +kubebuilder:validation:Optional
	websiteRedirect?: null | string @go(WebsiteRedirect,*string)
}

// ObjectCopySpec defines the desired state of ObjectCopy
#ObjectCopySpec: {
	forProvider: #ObjectCopyParameters @go(ForProvider)
}

// ObjectCopyStatus defines the observed state of ObjectCopy.
#ObjectCopyStatus: {
	atProvider?: #ObjectCopyObservation @go(AtProvider)
}

// ObjectCopy is the Schema for the ObjectCopys API. Provides a resource for copying an S3 object.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ObjectCopy: {
	spec:    #ObjectCopySpec   @go(Spec)
	status?: #ObjectCopyStatus @go(Status)
}

// ObjectCopyList contains a list of ObjectCopys
#ObjectCopyList: {
	items: [...#ObjectCopy] @go(Items,[]ObjectCopy)
}
