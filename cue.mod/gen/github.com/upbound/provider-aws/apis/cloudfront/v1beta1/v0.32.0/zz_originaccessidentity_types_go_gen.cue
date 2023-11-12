// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/cloudfront/v1beta1

package v1beta1

#OriginAccessIdentityObservation: {
	// Internal value used by CloudFront to allow future
	// updates to the origin access identity.
	callerReference?: null | string @go(CallerReference,*string)

	// A shortcut to the full path for the
	// origin access identity to use in CloudFront, see below.
	cloudfrontAccessIdentityPath?: null | string @go(CloudfrontAccessIdentityPath,*string)

	// The current version of the origin access identity's information.
	// For example: E2QWRUHAPOMQZL.
	etag?: null | string @go(Etag,*string)

	// A pre-generated ARN for use in S3 bucket policies (see below).
	// Example: arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E2QWRUHAPOMQZL.
	iamArn?: null | string @go(IAMArn,*string)

	// The identifier for the distribution. For example: EDFDVBD632BHDS5.
	id?: null | string @go(ID,*string)

	// The Amazon S3 canonical user ID for the origin
	// access identity, which you use when giving the origin access identity read
	// permission to an object in Amazon S3.
	s3CanonicalUserId?: null | string @go(S3CanonicalUserID,*string)
}

#OriginAccessIdentityParameters: {
	// An optional comment for the origin access identity.
	// +kubebuilder:validation:Optional
	comment?: null | string @go(Comment,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// OriginAccessIdentitySpec defines the desired state of OriginAccessIdentity
#OriginAccessIdentitySpec: {
	forProvider: #OriginAccessIdentityParameters @go(ForProvider)
}

// OriginAccessIdentityStatus defines the observed state of OriginAccessIdentity.
#OriginAccessIdentityStatus: {
	atProvider?: #OriginAccessIdentityObservation @go(AtProvider)
}

// OriginAccessIdentity is the Schema for the OriginAccessIdentitys API. Provides a CloudFront origin access identity.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#OriginAccessIdentity: {
	spec:    #OriginAccessIdentitySpec   @go(Spec)
	status?: #OriginAccessIdentityStatus @go(Status)
}

// OriginAccessIdentityList contains a list of OriginAccessIdentitys
#OriginAccessIdentityList: {
	items: [...#OriginAccessIdentity] @go(Items,[]OriginAccessIdentity)
}
