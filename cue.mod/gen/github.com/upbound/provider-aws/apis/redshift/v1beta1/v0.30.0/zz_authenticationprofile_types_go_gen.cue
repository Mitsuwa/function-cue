// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/redshift/v1beta1

package v1beta1

#AuthenticationProfileObservation: {
	// The name of the authentication profile.
	id?: null | string @go(ID,*string)
}

#AuthenticationProfileParameters: {
	// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
	// +kubebuilder:validation:Required
	authenticationProfileContent?: null | string @go(AuthenticationProfileContent,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// AuthenticationProfileSpec defines the desired state of AuthenticationProfile
#AuthenticationProfileSpec: {
	forProvider: #AuthenticationProfileParameters @go(ForProvider)
}

// AuthenticationProfileStatus defines the observed state of AuthenticationProfile.
#AuthenticationProfileStatus: {
	atProvider?: #AuthenticationProfileObservation @go(AtProvider)
}

// AuthenticationProfile is the Schema for the AuthenticationProfiles API. Creates a Redshift authentication profile
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AuthenticationProfile: {
	spec:    #AuthenticationProfileSpec   @go(Spec)
	status?: #AuthenticationProfileStatus @go(Status)
}

// AuthenticationProfileList contains a list of AuthenticationProfiles
#AuthenticationProfileList: {
	items: [...#AuthenticationProfile] @go(Items,[]AuthenticationProfile)
}
