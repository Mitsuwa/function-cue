// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

// APIMappingParameters defines the desired state of APIMapping
#APIMappingParameters: {
	// Region is which region the APIMapping will be created.
	// +kubebuilder:validation:Required
	region:         string        @go(Region)
	apiMappingKey?: null | string @go(APIMappingKey,*string)

	#CustomAPIMappingParameters
}

// APIMappingSpec defines the desired state of APIMapping
#APIMappingSpec: {
	forProvider: #APIMappingParameters @go(ForProvider)
}

// APIMappingObservation defines the observed state of APIMapping
#APIMappingObservation: {
	apiID?:        null | string @go(APIID,*string)
	apiMappingID?: null | string @go(APIMappingID,*string)
	stage?:        null | string @go(Stage,*string)
}

// APIMappingStatus defines the observed state of APIMapping.
#APIMappingStatus: {
	atProvider?: #APIMappingObservation @go(AtProvider)
}

// APIMapping is the Schema for the APIMappings API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#APIMapping: {
	spec:    #APIMappingSpec   @go(Spec)
	status?: #APIMappingStatus @go(Status)
}

// APIMappingList contains a list of APIMappings
#APIMappingList: {
	items: [...#APIMapping] @go(Items,[]APIMapping)
}
