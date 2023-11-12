// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#GatewayObservation: {
	// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
	apiManagementId?: null | string @go(APIManagementID,*string)

	// The description of the API Management Gateway.
	description?: null | string @go(Description,*string)

	// The ID of the API Management Gateway.
	id?: null | string @go(ID,*string)

	// A location_data block as documented below.
	locationData?: [...#LocationDataObservation] @go(LocationData,[]LocationDataObservation)
}

#GatewayParameters: {
	// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	apiManagementId?: null | string @go(APIManagementID,*string)

	// The description of the API Management Gateway.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A location_data block as documented below.
	// +kubebuilder:validation:Optional
	locationData?: [...#LocationDataParameters] @go(LocationData,[]LocationDataParameters)
}

#LocationDataObservation: {
	// The city or locality where the resource is located.
	city?: null | string @go(City,*string)

	// The district, state, or province where the resource is located.
	district?: null | string @go(District,*string)

	// A canonical name for the geographic or physical location.
	name?: null | string @go(Name,*string)

	// The country or region where the resource is located.
	region?: null | string @go(Region,*string)
}

#LocationDataParameters: {
	// The city or locality where the resource is located.
	// +kubebuilder:validation:Optional
	city?: null | string @go(City,*string)

	// The district, state, or province where the resource is located.
	// +kubebuilder:validation:Optional
	district?: null | string @go(District,*string)

	// A canonical name for the geographic or physical location.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The country or region where the resource is located.
	// +kubebuilder:validation:Optional
	region?: null | string @go(Region,*string)
}

// GatewaySpec defines the desired state of Gateway
#GatewaySpec: {
	forProvider: #GatewayParameters @go(ForProvider)
}

// GatewayStatus defines the observed state of Gateway.
#GatewayStatus: {
	atProvider?: #GatewayObservation @go(AtProvider)
}

// Gateway is the Schema for the Gateways API. Manages an API Management Gateway.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Gateway: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.locationData)",message="locationData is a required parameter"
	spec:    #GatewaySpec   @go(Spec)
	status?: #GatewayStatus @go(Status)
}

// GatewayList contains a list of Gateways
#GatewayList: {
	items: [...#Gateway] @go(Items,[]Gateway)
}
