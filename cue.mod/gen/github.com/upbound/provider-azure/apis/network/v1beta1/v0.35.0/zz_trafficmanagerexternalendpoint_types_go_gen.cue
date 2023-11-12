// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#TrafficManagerExternalEndpointCustomHeaderInitParameters: {
	// The name of the custom header.
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	value?: null | string @go(Value,*string)
}

#TrafficManagerExternalEndpointCustomHeaderObservation: {
	// The name of the custom header.
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	value?: null | string @go(Value,*string)
}

#TrafficManagerExternalEndpointCustomHeaderParameters: {
	// The name of the custom header.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#TrafficManagerExternalEndpointInitParameters: {
	// One or more custom_header blocks as defined below.
	customHeader?: [...#TrafficManagerExternalEndpointCustomHeaderInitParameters] @go(CustomHeader,[]TrafficManagerExternalEndpointCustomHeaderInitParameters)

	// Is the endpoint enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// Specifies the priority of this Endpoint, this must be specified for Profiles using the Priority traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
	priority?: null | float64 @go(Priority,*float64)

	// One or more subnet blocks as defined below. Changing this forces a new resource to be created.
	subnet?: [...#TrafficManagerExternalEndpointSubnetInitParameters] @go(Subnet,[]TrafficManagerExternalEndpointSubnetInitParameters)

	// The FQDN DNS name of the target.
	target?: null | string @go(Target,*string)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerExternalEndpointObservation: {
	// One or more custom_header blocks as defined below.
	customHeader?: [...#TrafficManagerExternalEndpointCustomHeaderObservation] @go(CustomHeader,[]TrafficManagerExternalEndpointCustomHeaderObservation)

	// Is the endpoint enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// The ID of the External Endpoint.
	id?: null | string @go(ID,*string)

	// Specifies the priority of this Endpoint, this must be specified for Profiles using the Priority traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
	profileId?: null | string @go(ProfileID,*string)

	// One or more subnet blocks as defined below. Changing this forces a new resource to be created.
	subnet?: [...#TrafficManagerExternalEndpointSubnetObservation] @go(Subnet,[]TrafficManagerExternalEndpointSubnetObservation)

	// The FQDN DNS name of the target.
	target?: null | string @go(Target,*string)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerExternalEndpointParameters: {
	// One or more custom_header blocks as defined below.
	// +kubebuilder:validation:Optional
	customHeader?: [...#TrafficManagerExternalEndpointCustomHeaderParameters] @go(CustomHeader,[]TrafficManagerExternalEndpointCustomHeaderParameters)

	// Is the endpoint enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	// +kubebuilder:validation:Optional
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	// +kubebuilder:validation:Optional
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// Specifies the priority of this Endpoint, this must be specified for Profiles using the Priority traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.TrafficManagerProfile
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	profileId?: null | string @go(ProfileID,*string)

	// One or more subnet blocks as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subnet?: [...#TrafficManagerExternalEndpointSubnetParameters] @go(Subnet,[]TrafficManagerExternalEndpointSubnetParameters)

	// The FQDN DNS name of the target.
	// +kubebuilder:validation:Optional
	target?: null | string @go(Target,*string)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerExternalEndpointSubnetInitParameters: {
	// The first IP Address in this subnet.
	first?: null | string @go(First,*string)

	// The last IP Address in this subnet.
	last?: null | string @go(Last,*string)

	// The block size (number of leading bits in the subnet mask).
	scope?: null | float64 @go(Scope,*float64)
}

#TrafficManagerExternalEndpointSubnetObservation: {
	// The first IP Address in this subnet.
	first?: null | string @go(First,*string)

	// The last IP Address in this subnet.
	last?: null | string @go(Last,*string)

	// The block size (number of leading bits in the subnet mask).
	scope?: null | float64 @go(Scope,*float64)
}

#TrafficManagerExternalEndpointSubnetParameters: {
	// The first IP Address in this subnet.
	// +kubebuilder:validation:Optional
	first?: null | string @go(First,*string)

	// The last IP Address in this subnet.
	// +kubebuilder:validation:Optional
	last?: null | string @go(Last,*string)

	// The block size (number of leading bits in the subnet mask).
	// +kubebuilder:validation:Optional
	scope?: null | float64 @go(Scope,*float64)
}

// TrafficManagerExternalEndpointSpec defines the desired state of TrafficManagerExternalEndpoint
#TrafficManagerExternalEndpointSpec: {
	forProvider: #TrafficManagerExternalEndpointParameters @go(ForProvider)

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
	initProvider?: #TrafficManagerExternalEndpointInitParameters @go(InitProvider)
}

// TrafficManagerExternalEndpointStatus defines the observed state of TrafficManagerExternalEndpoint.
#TrafficManagerExternalEndpointStatus: {
	atProvider?: #TrafficManagerExternalEndpointObservation @go(AtProvider)
}

// TrafficManagerExternalEndpoint is the Schema for the TrafficManagerExternalEndpoints API. Manages an External Endpoint within a Traffic Manager Profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#TrafficManagerExternalEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.target) || has(self.initProvider.target)",message="target is a required parameter"
	spec:    #TrafficManagerExternalEndpointSpec   @go(Spec)
	status?: #TrafficManagerExternalEndpointStatus @go(Status)
}

// TrafficManagerExternalEndpointList contains a list of TrafficManagerExternalEndpoints
#TrafficManagerExternalEndpointList: {
	items: [...#TrafficManagerExternalEndpoint] @go(Items,[]TrafficManagerExternalEndpoint)
}
