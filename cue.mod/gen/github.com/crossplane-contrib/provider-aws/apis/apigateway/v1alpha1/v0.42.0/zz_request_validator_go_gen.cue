// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

// RequestValidatorParameters defines the desired state of RequestValidator
#RequestValidatorParameters: {
	// Region is which region the RequestValidator will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The name of the to-be-created RequestValidator.
	name?: null | string @go(Name,*string)

	// A Boolean flag to indicate whether to validate request body according to
	// the configured model schema for the method (true) or not (false).
	validateRequestBody?: null | bool @go(ValidateRequestBody,*bool)

	// A Boolean flag to indicate whether to validate request parameters, true,
	// or not false.
	validateRequestParameters?: null | bool @go(ValidateRequestParameters,*bool)

	#CustomRequestValidatorParameters
}

// RequestValidatorSpec defines the desired state of RequestValidator
#RequestValidatorSpec: {
	forProvider: #RequestValidatorParameters @go(ForProvider)
}

// RequestValidatorObservation defines the observed state of RequestValidator
#RequestValidatorObservation: {
	// The identifier of this RequestValidator.
	id?: null | string @go(ID,*string)
}

// RequestValidatorStatus defines the observed state of RequestValidator.
#RequestValidatorStatus: {
	atProvider?: #RequestValidatorObservation @go(AtProvider)
}

// RequestValidator is the Schema for the RequestValidators API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RequestValidator: {
	spec:    #RequestValidatorSpec   @go(Spec)
	status?: #RequestValidatorStatus @go(Status)
}

// RequestValidatorList contains a list of RequestValidators
#RequestValidatorList: {
	items: [...#RequestValidator] @go(Items,[]RequestValidator)
}
