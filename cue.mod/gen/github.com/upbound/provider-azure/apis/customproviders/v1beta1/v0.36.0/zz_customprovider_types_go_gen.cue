// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/customproviders/v1beta1

package v1beta1

#ActionInitParameters: {
	// Specifies the endpoint of the action.
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the action.
	name?: null | string @go(Name,*string)
}

#ActionObservation: {
	// Specifies the endpoint of the action.
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the action.
	name?: null | string @go(Name,*string)
}

#ActionParameters: {
	// Specifies the endpoint of the action.
	// +kubebuilder:validation:Optional
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the action.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#CustomProviderInitParameters: {
	// Any number of action block as defined below. One of resource_type or action must be specified.
	action?: [...#ActionInitParameters] @go(Action,[]ActionInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Any number of resource_type block as defined below. One of resource_type or action must be specified.
	resourceType?: [...#ResourceTypeInitParameters] @go(ResourceType,[]ResourceTypeInitParameters)

	// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Any number of validation block as defined below.
	validation?: [...#ValidationInitParameters] @go(Validation,[]ValidationInitParameters)
}

#CustomProviderObservation: {
	// Any number of action block as defined below. One of resource_type or action must be specified.
	action?: [...#ActionObservation] @go(Action,[]ActionObservation)

	// The ID of the Custom Provider.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Any number of resource_type block as defined below. One of resource_type or action must be specified.
	resourceType?: [...#ResourceTypeObservation] @go(ResourceType,[]ResourceTypeObservation)

	// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Any number of validation block as defined below.
	validation?: [...#ValidationObservation] @go(Validation,[]ValidationObservation)
}

#CustomProviderParameters: {
	// Any number of action block as defined below. One of resource_type or action must be specified.
	// +kubebuilder:validation:Optional
	action?: [...#ActionParameters] @go(Action,[]ActionParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Any number of resource_type block as defined below. One of resource_type or action must be specified.
	// +kubebuilder:validation:Optional
	resourceType?: [...#ResourceTypeParameters] @go(ResourceType,[]ResourceTypeParameters)

	// A mapping of tags to assign to the resource. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Any number of validation block as defined below.
	// +kubebuilder:validation:Optional
	validation?: [...#ValidationParameters] @go(Validation,[]ValidationParameters)
}

#ResourceTypeInitParameters: {
	// Specifies the endpoint of the route definition.
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the route definition.
	name?: null | string @go(Name,*string)

	// The routing type that is supported for the resource request. Valid values are Proxy and Proxy,Cache. This value defaults to ResourceTypeRoutingProxy.
	routingType?: null | string @go(RoutingType,*string)
}

#ResourceTypeObservation: {
	// Specifies the endpoint of the route definition.
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the route definition.
	name?: null | string @go(Name,*string)

	// The routing type that is supported for the resource request. Valid values are Proxy and Proxy,Cache. This value defaults to ResourceTypeRoutingProxy.
	routingType?: null | string @go(RoutingType,*string)
}

#ResourceTypeParameters: {
	// Specifies the endpoint of the route definition.
	// +kubebuilder:validation:Optional
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies the name of the route definition.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The routing type that is supported for the resource request. Valid values are Proxy and Proxy,Cache. This value defaults to ResourceTypeRoutingProxy.
	// +kubebuilder:validation:Optional
	routingType?: null | string @go(RoutingType,*string)
}

#ValidationInitParameters: {
	// The endpoint where the validation specification is located.
	specification?: null | string @go(Specification,*string)
}

#ValidationObservation: {
	// The endpoint where the validation specification is located.
	specification?: null | string @go(Specification,*string)
}

#ValidationParameters: {
	// The endpoint where the validation specification is located.
	// +kubebuilder:validation:Optional
	specification?: null | string @go(Specification,*string)
}

// CustomProviderSpec defines the desired state of CustomProvider
#CustomProviderSpec: {
	forProvider: #CustomProviderParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #CustomProviderInitParameters @go(InitProvider)
}

// CustomProviderStatus defines the observed state of CustomProvider.
#CustomProviderStatus: {
	atProvider?: #CustomProviderObservation @go(AtProvider)
}

// CustomProvider is the Schema for the CustomProviders API. Manages an Azure Custom Provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#CustomProvider: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #CustomProviderSpec   @go(Spec)
	status?: #CustomProviderStatus @go(Status)
}

// CustomProviderList contains a list of CustomProviders
#CustomProviderList: {
	items: [...#CustomProvider] @go(Items,[]CustomProvider)
}
