// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/signer/v1beta1

package v1beta1

#SignatureValidityPeriodObservation: {
}

#SignatureValidityPeriodParameters: {
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)

	// +kubebuilder:validation:Required
	value?: null | float64 @go(Value,*float64)
}

#SigningProfileObservation: {
	// The Amazon Resource Name (ARN) for the signing profile.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A human-readable name for the signing platform associated with the signing profile.
	platformDisplayName?: null | string @go(PlatformDisplayName,*string)

	// Revocation information for a signing profile.
	revocationRecord?: [...#SigningProfileRevocationRecordObservation] @go(RevocationRecord,[]SigningProfileRevocationRecordObservation)

	// The status of the target signing profile.
	status?: null | string @go(Status,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The current version of the signing profile.
	version?: null | string @go(Version,*string)

	// The signing profile ARN, including the profile version.
	versionArn?: null | string @go(VersionArn,*string)
}

#SigningProfileParameters: {
	// The ID of the platform that is used by the target signing profile.
	// +kubebuilder:validation:Required
	platformId?: null | string @go(PlatformID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The validity period for a signing job.
	// +kubebuilder:validation:Optional
	signatureValidityPeriod?: [...#SignatureValidityPeriodParameters] @go(SignatureValidityPeriod,[]SignatureValidityPeriodParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SigningProfileRevocationRecordObservation: {
	revocationEffectiveFrom?: null | string @go(RevocationEffectiveFrom,*string)
	revokedAt?:               null | string @go(RevokedAt,*string)
	revokedBy?:               null | string @go(RevokedBy,*string)
}

#SigningProfileRevocationRecordParameters: {
}

// SigningProfileSpec defines the desired state of SigningProfile
#SigningProfileSpec: {
	forProvider: #SigningProfileParameters @go(ForProvider)
}

// SigningProfileStatus defines the observed state of SigningProfile.
#SigningProfileStatus: {
	atProvider?: #SigningProfileObservation @go(AtProvider)
}

// SigningProfile is the Schema for the SigningProfiles API. Creates a Signer Signing Profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SigningProfile: {
	spec:    #SigningProfileSpec   @go(Spec)
	status?: #SigningProfileStatus @go(Status)
}

// SigningProfileList contains a list of SigningProfiles
#SigningProfileList: {
	items: [...#SigningProfile] @go(Items,[]SigningProfile)
}
