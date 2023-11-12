// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#GatewayAPIInitParameters: {
}

#GatewayAPIObservation: {
	// The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
	apiId?: null | string @go(APIID,*string)

	// The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
	gatewayId?: null | string @go(GatewayID,*string)

	// The ID of the API Management Gateway API.
	id?: null | string @go(ID,*string)
}

#GatewayAPIParameters: {
	// The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
	// +crossplane:generate:reference:type=API
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
	// +crossplane:generate:reference:type=Gateway
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	gatewayId?: null | string @go(GatewayID,*string)
}

// GatewayAPISpec defines the desired state of GatewayAPI
#GatewayAPISpec: {
	forProvider: #GatewayAPIParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #GatewayAPIInitParameters @go(InitProvider)
}

// GatewayAPIStatus defines the observed state of GatewayAPI.
#GatewayAPIStatus: {
	atProvider?: #GatewayAPIObservation @go(AtProvider)
}

// GatewayAPI is the Schema for the GatewayAPIs API. Manages a API Management Gateway API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#GatewayAPI: {
	spec:    #GatewayAPISpec   @go(Spec)
	status?: #GatewayAPIStatus @go(Status)
}

// GatewayAPIList contains a list of GatewayAPIs
#GatewayAPIList: {
	items: [...#GatewayAPI] @go(Items,[]GatewayAPI)
}
