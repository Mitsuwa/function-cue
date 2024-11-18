// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/signer/v1beta1

package v1beta1

#DestinationObservation: {
}

#DestinationParameters: {
	// A configuration block describing the S3 Source object: See S3 Source below for details.
	// +kubebuilder:validation:Required
	s3: [...#S3Parameters] @go(S3,[]S3Parameters)
}

#RevocationRecordObservation: {
	reason?:    null | string @go(Reason,*string)
	revokedAt?: null | string @go(RevokedAt,*string)
	revokedBy?: null | string @go(RevokedBy,*string)
}

#RevocationRecordParameters: {
}

#S3Observation: {
}

#S3Parameters: {
	// Name of the S3 bucket.
	// +kubebuilder:validation:Required
	bucket?: null | string @go(Bucket,*string)

	// An Amazon S3 object key prefix that you can use to limit signed objects keys to begin with the specified prefix.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)
}

#SignedObjectObservation: {
	// A configuration block describing the S3 Source object: See S3 Source below for details.
	s3?: [...#SignedObjectS3Observation] @go(S3,[]SignedObjectS3Observation)
}

#SignedObjectParameters: {
}

#SignedObjectS3Observation: {
	// Name of the S3 bucket.
	bucket?: null | string @go(Bucket,*string)

	// Key name of the object that contains your unsigned code.
	key?: null | string @go(Key,*string)
}

#SignedObjectS3Parameters: {
}

#SigningJobObservation: {
	// Date and time in RFC3339 format that the signing job was completed.
	completedAt?: null | string @go(CompletedAt,*string)

	// Date and time in RFC3339 format that the signing job was created.
	createdAt?: null | string @go(CreatedAt,*string)
	id?:        null | string @go(ID,*string)

	// The ID of the signing job on output.
	jobId?: null | string @go(JobID,*string)

	// The IAM entity that initiated the signing job.
	jobInvoker?: null | string @go(JobInvoker,*string)

	// The AWS account ID of the job owner.
	jobOwner?: null | string @go(JobOwner,*string)

	// A human-readable name for the signing platform associated with the signing job.
	platformDisplayName?: null | string @go(PlatformDisplayName,*string)

	// The platform to which your signed code image will be distributed.
	platformId?: null | string @go(PlatformID,*string)

	// The version of the signing profile used to initiate the signing job.
	profileVersion?: null | string @go(ProfileVersion,*string)

	// The IAM principal that requested the signing job.
	requestedBy?: null | string @go(RequestedBy,*string)

	// A revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature.
	revocationRecord?: [...#RevocationRecordObservation] @go(RevocationRecord,[]RevocationRecordObservation)

	// The time when the signature of a signing job expires.
	signatureExpiresAt?: null | string @go(SignatureExpiresAt,*string)

	// Name of the S3 bucket where the signed code image is saved by code signing.
	signedObject?: [...#SignedObjectObservation] @go(SignedObject,[]SignedObjectObservation)

	// Status of the signing job.
	status?: null | string @go(Status,*string)

	// String value that contains the status reason.
	statusReason?: null | string @go(StatusReason,*string)
}

#SigningJobParameters: {
	// The S3 bucket in which to save your signed object. See Destination below for details.
	// +kubebuilder:validation:Required
	destination: [...#DestinationParameters] @go(Destination,[]DestinationParameters)

	// Set this argument to true to ignore signing job failures and retrieve failed status and reason. Default false.
	// +kubebuilder:validation:Optional
	ignoreSigningJobFailure?: null | bool @go(IgnoreSigningJobFailure,*bool)

	// The name of the profile to initiate the signing operation.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/signer/v1beta1.SigningProfile
	// +kubebuilder:validation:Optional
	profileName?: null | string @go(ProfileName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The S3 bucket that contains the object to sign. See Source below for details.
	// +kubebuilder:validation:Required
	source: [...#SourceParameters] @go(Source,[]SourceParameters)
}

#SourceObservation: {
}

#SourceParameters: {
	// A configuration block describing the S3 Source object: See S3 Source below for details.
	// +kubebuilder:validation:Required
	s3: [...#SourceS3Parameters] @go(S3,[]SourceS3Parameters)
}

#SourceS3Observation: {
}

#SourceS3Parameters: {
	// Name of the S3 bucket.
	// +kubebuilder:validation:Required
	bucket?: null | string @go(Bucket,*string)

	// Key name of the object that contains your unsigned code.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// Version of your source image in your version enabled S3 bucket.
	// +kubebuilder:validation:Required
	version?: null | string @go(Version,*string)
}

// SigningJobSpec defines the desired state of SigningJob
#SigningJobSpec: {
	forProvider: #SigningJobParameters @go(ForProvider)
}

// SigningJobStatus defines the observed state of SigningJob.
#SigningJobStatus: {
	atProvider?: #SigningJobObservation @go(AtProvider)
}

// SigningJob is the Schema for the SigningJobs API. Creates a Signer Signing Job.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SigningJob: {
	spec:    #SigningJobSpec   @go(Spec)
	status?: #SigningJobStatus @go(Status)
}

// SigningJobList contains a list of SigningJobs
#SigningJobList: {
	items: [...#SigningJob] @go(Items,[]SigningJob)
}
