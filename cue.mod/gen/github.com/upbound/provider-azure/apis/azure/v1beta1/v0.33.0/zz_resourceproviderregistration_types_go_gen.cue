// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/azure/v1beta1

package v1beta1

#FeatureObservation: {
	// Specifies the name of the feature to register.
	name?: null | string @go(Name,*string)

	// Should this feature be Registered or Unregistered?
	registered?: null | bool @go(Registered,*bool)
}

#FeatureParameters: {
	// Specifies the name of the feature to register.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Should this feature be Registered or Unregistered?
	// +kubebuilder:validation:Required
	registered?: null | bool @go(Registered,*bool)
}

#ResourceProviderRegistrationObservation: {
	// A list of feature blocks as defined below.
	feature?: [...#FeatureObservation] @go(Feature,[]FeatureObservation)
	id?: null | string @go(ID,*string)

	// The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#ResourceProviderRegistrationParameters: {
	// A list of feature blocks as defined below.
	// +kubebuilder:validation:Optional
	feature?: [...#FeatureParameters] @go(Feature,[]FeatureParameters)

	// The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

// ResourceProviderRegistrationSpec defines the desired state of ResourceProviderRegistration
#ResourceProviderRegistrationSpec: {
	forProvider: #ResourceProviderRegistrationParameters @go(ForProvider)
}

// ResourceProviderRegistrationStatus defines the observed state of ResourceProviderRegistration.
#ResourceProviderRegistrationStatus: {
	atProvider?: #ResourceProviderRegistrationObservation @go(AtProvider)
}

// ResourceProviderRegistration is the Schema for the ResourceProviderRegistrations API. Manages the Registration of a Resource Provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ResourceProviderRegistration: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #ResourceProviderRegistrationSpec   @go(Spec)
	status?: #ResourceProviderRegistrationStatus @go(Status)
}

// ResourceProviderRegistrationList contains a list of ResourceProviderRegistrations
#ResourceProviderRegistrationList: {
	items: [...#ResourceProviderRegistration] @go(Items,[]ResourceProviderRegistration)
}
