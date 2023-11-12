// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigatewayv2/v1beta1

package v1beta1

#APIMappingObservation: {
	// API mapping identifier.
	id?: null | string @go(ID,*string)
}

#APIMappingParameters: {
	// API identifier.
	// +crossplane:generate:reference:type=API
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// The API mapping key.
	// +kubebuilder:validation:Optional
	apiMappingKey?: null | string @go(APIMappingKey,*string)

	// Domain name. Use the aws_apigatewayv2_domain_name resource to configure a domain name.
	// +crossplane:generate:reference:type=DomainName
	// +kubebuilder:validation:Optional
	domainName?: null | string @go(DomainName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// API stage. Use the aws_apigatewayv2_stage resource to configure an API stage.
	// +crossplane:generate:reference:type=Stage
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.TerraformID()
	// +kubebuilder:validation:Optional
	stage?: null | string @go(Stage,*string)
}

// APIMappingSpec defines the desired state of APIMapping
#APIMappingSpec: {
	forProvider: #APIMappingParameters @go(ForProvider)
}

// APIMappingStatus defines the observed state of APIMapping.
#APIMappingStatus: {
	atProvider?: #APIMappingObservation @go(AtProvider)
}

// APIMapping is the Schema for the APIMappings API. Manages an Amazon API Gateway Version 2 API mapping.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#APIMapping: {
	spec:    #APIMappingSpec   @go(Spec)
	status?: #APIMappingStatus @go(Status)
}

// APIMappingList contains a list of APIMappings
#APIMappingList: {
	items: [...#APIMapping] @go(Items,[]APIMapping)
}
