// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iam/v1beta1

package v1beta1

#SAMLProviderObservation: {
	// The ARN assigned by AWS for this provider.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The expiration date and time for the SAML provider in RFC1123 format, e.g., Mon, 02 Jan 2006 15:04:05 MST.
	validUntil?: null | string @go(ValidUntil,*string)
}

#SAMLProviderParameters: {
	// An XML document generated by an identity provider that supports SAML 2.0.
	// +kubebuilder:validation:Required
	samlMetadataDocument?: null | string @go(SAMLMetadataDocument,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SAMLProviderSpec defines the desired state of SAMLProvider
#SAMLProviderSpec: {
	forProvider: #SAMLProviderParameters @go(ForProvider)
}

// SAMLProviderStatus defines the observed state of SAMLProvider.
#SAMLProviderStatus: {
	atProvider?: #SAMLProviderObservation @go(AtProvider)
}

// SAMLProvider is the Schema for the SAMLProviders API. Provides an IAM SAML provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SAMLProvider: {
	spec:    #SAMLProviderSpec   @go(Spec)
	status?: #SAMLProviderStatus @go(Status)
}

// SAMLProviderList contains a list of SAMLProviders
#SAMLProviderList: {
	items: [...#SAMLProvider] @go(Items,[]SAMLProvider)
}
