// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#TrafficManagerNestedEndpointCustomHeaderInitParameters: {
	// The name of the custom header.
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	value?: null | string @go(Value,*string)
}

#TrafficManagerNestedEndpointCustomHeaderObservation: {
	// The name of the custom header.
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	value?: null | string @go(Value,*string)
}

#TrafficManagerNestedEndpointCustomHeaderParameters: {
	// The name of the custom header.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The value of custom header. Applicable for HTTP and HTTPS protocol.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#TrafficManagerNestedEndpointInitParameters: {
	// One or more custom_header blocks as defined below.
	customHeader?: [...#TrafficManagerNestedEndpointCustomHeaderInitParameters] @go(CustomHeader,[]TrafficManagerNestedEndpointCustomHeaderInitParameters)

	// Is the endpoint enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than 0.
	minimumChildEndpoints?: null | float64 @go(MinimumChildEndpoints,*float64)

	// This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	minimumRequiredChildEndpointsIpv4?: null | float64 @go(MinimumRequiredChildEndpointsIPv4,*float64)

	// This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	minimumRequiredChildEndpointsIpv6?: null | float64 @go(MinimumRequiredChildEndpointsIPv6,*float64)

	// Specifies the priority of this Endpoint, this must be specified for Profiles using the Priority traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
	priority?: null | float64 @go(Priority,*float64)

	// One or more subnet blocks as defined below. Changing this forces a new resource to be created.
	subnet?: [...#TrafficManagerNestedEndpointSubnetInitParameters] @go(Subnet,[]TrafficManagerNestedEndpointSubnetInitParameters)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerNestedEndpointObservation: {
	// One or more custom_header blocks as defined below.
	customHeader?: [...#TrafficManagerNestedEndpointCustomHeaderObservation] @go(CustomHeader,[]TrafficManagerNestedEndpointCustomHeaderObservation)

	// Is the endpoint enabled? Defaults to true.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// The ID of the Nested Endpoint.
	id?: null | string @go(ID,*string)

	// This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than 0.
	minimumChildEndpoints?: null | float64 @go(MinimumChildEndpoints,*float64)

	// This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	minimumRequiredChildEndpointsIpv4?: null | float64 @go(MinimumRequiredChildEndpointsIPv4,*float64)

	// This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	minimumRequiredChildEndpointsIpv6?: null | float64 @go(MinimumRequiredChildEndpointsIPv6,*float64)

	// Specifies the priority of this Endpoint, this must be specified for Profiles using the Priority traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
	profileId?: null | string @go(ProfileID,*string)

	// One or more subnet blocks as defined below. Changing this forces a new resource to be created.
	subnet?: [...#TrafficManagerNestedEndpointSubnetObservation] @go(Subnet,[]TrafficManagerNestedEndpointSubnetObservation)

	// The resource id of an Azure resource to target.
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerNestedEndpointParameters: {
	// One or more custom_header blocks as defined below.
	// +kubebuilder:validation:Optional
	customHeader?: [...#TrafficManagerNestedEndpointCustomHeaderParameters] @go(CustomHeader,[]TrafficManagerNestedEndpointCustomHeaderParameters)

	// Is the endpoint enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the Performance routing method.
	// +kubebuilder:validation:Optional
	endpointLocation?: null | string @go(EndpointLocation,*string)

	// A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. The same location can't be specified in two endpoints. See the Geographic Hierarchies documentation for more information.
	// +kubebuilder:validation:Optional
	geoMappings?: [...null | string] @go(GeoMappings,[]*string)

	// This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than 0.
	// +kubebuilder:validation:Optional
	minimumChildEndpoints?: null | float64 @go(MinimumChildEndpoints,*float64)

	// This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	// +kubebuilder:validation:Optional
	minimumRequiredChildEndpointsIpv4?: null | float64 @go(MinimumRequiredChildEndpointsIPv4,*float64)

	// This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type nestedEndpoints and
	// +kubebuilder:validation:Optional
	minimumRequiredChildEndpointsIpv6?: null | float64 @go(MinimumRequiredChildEndpointsIPv6,*float64)

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
	subnet?: [...#TrafficManagerNestedEndpointSubnetParameters] @go(Subnet,[]TrafficManagerNestedEndpointSubnetParameters)

	// The resource id of an Azure resource to target.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.TrafficManagerProfile
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between 1 and 1000.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

#TrafficManagerNestedEndpointSubnetInitParameters: {
	// The first IP Address in this subnet.
	first?: null | string @go(First,*string)

	// The last IP Address in this subnet.
	last?: null | string @go(Last,*string)

	// The block size (number of leading bits in the subnet mask).
	scope?: null | float64 @go(Scope,*float64)
}

#TrafficManagerNestedEndpointSubnetObservation: {
	// The first IP Address in this subnet.
	first?: null | string @go(First,*string)

	// The last IP Address in this subnet.
	last?: null | string @go(Last,*string)

	// The block size (number of leading bits in the subnet mask).
	scope?: null | float64 @go(Scope,*float64)
}

#TrafficManagerNestedEndpointSubnetParameters: {
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

// TrafficManagerNestedEndpointSpec defines the desired state of TrafficManagerNestedEndpoint
#TrafficManagerNestedEndpointSpec: {
	forProvider: #TrafficManagerNestedEndpointParameters @go(ForProvider)

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
	initProvider?: #TrafficManagerNestedEndpointInitParameters @go(InitProvider)
}

// TrafficManagerNestedEndpointStatus defines the observed state of TrafficManagerNestedEndpoint.
#TrafficManagerNestedEndpointStatus: {
	atProvider?: #TrafficManagerNestedEndpointObservation @go(AtProvider)
}

// TrafficManagerNestedEndpoint is the Schema for the TrafficManagerNestedEndpoints API. Manages a Nested Endpoint within a Traffic Manager Profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#TrafficManagerNestedEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.minimumChildEndpoints) || (has(self.initProvider) && has(self.initProvider.minimumChildEndpoints))",message="spec.forProvider.minimumChildEndpoints is a required parameter"
	spec:    #TrafficManagerNestedEndpointSpec   @go(Spec)
	status?: #TrafficManagerNestedEndpointStatus @go(Status)
}

// TrafficManagerNestedEndpointList contains a list of TrafficManagerNestedEndpoints
#TrafficManagerNestedEndpointList: {
	items: [...#TrafficManagerNestedEndpoint] @go(Items,[]TrafficManagerNestedEndpoint)
}
