// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

// BasePathMappingParameters defines the desired state of BasePathMapping
#BasePathMappingParameters: {
	// Region is which region the BasePathMapping will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The base path name that callers of the API must provide as part of the URL
	// after the domain name. This value must be unique for all of the mappings
	// across a single API. Specify '(none)' if you do not want callers to specify
	// a base path name after the domain name.
	basePath?: null | string @go(BasePath,*string)

	// The domain name of the BasePathMapping resource to create.
	// +kubebuilder:validation:Required
	domainName?: null | string @go(DomainName,*string)

	// The name of the API's stage that you want to use for this mapping. Specify
	// '(none)' if you want callers to explicitly specify the stage name after any
	// base path name.
	stage?: null | string @go(Stage,*string)

	#CustomBasePathMappingParameters
}

// BasePathMappingSpec defines the desired state of BasePathMapping
#BasePathMappingSpec: {
	forProvider: #BasePathMappingParameters @go(ForProvider)
}

// BasePathMappingObservation defines the observed state of BasePathMapping
#BasePathMappingObservation: {
	// The string identifier of the associated RestApi.
	restAPIID?: null | string @go(RestAPIID,*string)
}

// BasePathMappingStatus defines the observed state of BasePathMapping.
#BasePathMappingStatus: {
	atProvider?: #BasePathMappingObservation @go(AtProvider)
}

// BasePathMapping is the Schema for the BasePathMappings API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#BasePathMapping: {
	spec:    #BasePathMappingSpec   @go(Spec)
	status?: #BasePathMappingStatus @go(Status)
}

// BasePathMappingList contains a list of BasePathMappings
#BasePathMappingList: {
	items: [...#BasePathMapping] @go(Items,[]BasePathMapping)
}
