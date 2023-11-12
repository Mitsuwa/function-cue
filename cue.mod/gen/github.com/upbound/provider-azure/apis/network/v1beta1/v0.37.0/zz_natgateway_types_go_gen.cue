// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#NATGatewayInitParameters: {
	// The idle timeout which should be used in minutes. Defaults to 4.
	idleTimeoutInMinutes?: null | float64 @go(IdleTimeoutInMinutes,*float64)

	// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard.
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
	zones?: [...null | string] @go(Zones,[]*string)
}

#NATGatewayObservation: {
	// The ID of the NAT Gateway.
	id?: null | string @go(ID,*string)

	// The idle timeout which should be used in minutes. Defaults to 4.
	idleTimeoutInMinutes?: null | float64 @go(IdleTimeoutInMinutes,*float64)

	// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The resource GUID property of the NAT Gateway.
	resourceGuid?: null | string @go(ResourceGUID,*string)

	// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard.
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
	zones?: [...null | string] @go(Zones,[]*string)
}

#NATGatewayParameters: {
	// The idle timeout which should be used in minutes. Defaults to 4.
	// +kubebuilder:validation:Optional
	idleTimeoutInMinutes?: null | float64 @go(IdleTimeoutInMinutes,*float64)

	// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created.
	// +kubebuilder:validation:Optional
	zones?: [...null | string] @go(Zones,[]*string)
}

// NATGatewaySpec defines the desired state of NATGateway
#NATGatewaySpec: {
	forProvider: #NATGatewayParameters @go(ForProvider)

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
	initProvider?: #NATGatewayInitParameters @go(InitProvider)
}

// NATGatewayStatus defines the observed state of NATGateway.
#NATGatewayStatus: {
	atProvider?: #NATGatewayObservation @go(AtProvider)
}

// NATGateway is the Schema for the NATGateways API. Manages a Azure NAT Gateway.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#NATGateway: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #NATGatewaySpec   @go(Spec)
	status?: #NATGatewayStatus @go(Status)
}

// NATGatewayList contains a list of NATGateways
#NATGatewayList: {
	items: [...#NATGateway] @go(Items,[]NATGateway)
}
