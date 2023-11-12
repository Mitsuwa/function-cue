// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ses/v1beta1

package v1beta1

#DomainIdentityObservation: {
	// The ARN of the domain identity.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A code which when added to the domain as a TXT record
	// will signal to SES that the owner of the domain has authorised SES to act on
	// their behalf. The domain identity will be in state "verification pending"
	// until this is done.  Find out more about verifying domains in Amazon
	// SES in the AWS SES
	// docs.
	verificationToken?: null | string @go(VerificationToken,*string)
}

#DomainIdentityParameters: {
	// The domain name to assign to SES
	// +kubebuilder:validation:Required
	domain?: null | string @go(Domain,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// DomainIdentitySpec defines the desired state of DomainIdentity
#DomainIdentitySpec: {
	forProvider: #DomainIdentityParameters @go(ForProvider)
}

// DomainIdentityStatus defines the observed state of DomainIdentity.
#DomainIdentityStatus: {
	atProvider?: #DomainIdentityObservation @go(AtProvider)
}

// DomainIdentity is the Schema for the DomainIdentitys API. Provides an SES domain identity resource
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DomainIdentity: {
	spec:    #DomainIdentitySpec   @go(Spec)
	status?: #DomainIdentityStatus @go(Status)
}

// DomainIdentityList contains a list of DomainIdentitys
#DomainIdentityList: {
	items: [...#DomainIdentity] @go(Items,[]DomainIdentity)
}
