// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ExpressRouteGatewayInitParameters: {
	// Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to false.
	allowNonVirtualWanTraffic?: null | bool @go(AllowNonVirtualWanTraffic,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
	scaleUnits?: null | float64 @go(ScaleUnits,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ExpressRouteGatewayObservation: {
	// Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to false.
	allowNonVirtualWanTraffic?: null | bool @go(AllowNonVirtualWanTraffic,*bool)

	// The ID of the ExpressRoute gateway.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
	scaleUnits?: null | float64 @go(ScaleUnits,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created.
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

#ExpressRouteGatewayParameters: {
	// Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to false.
	// +kubebuilder:validation:Optional
	allowNonVirtualWanTraffic?: null | bool @go(AllowNonVirtualWanTraffic,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
	// +kubebuilder:validation:Optional
	scaleUnits?: null | float64 @go(ScaleUnits,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=VirtualHub
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

// ExpressRouteGatewaySpec defines the desired state of ExpressRouteGateway
#ExpressRouteGatewaySpec: {
	forProvider: #ExpressRouteGatewayParameters @go(ForProvider)

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
	initProvider?: #ExpressRouteGatewayInitParameters @go(InitProvider)
}

// ExpressRouteGatewayStatus defines the observed state of ExpressRouteGateway.
#ExpressRouteGatewayStatus: {
	atProvider?: #ExpressRouteGatewayObservation @go(AtProvider)
}

// ExpressRouteGateway is the Schema for the ExpressRouteGateways API. Manages an ExpressRoute gateway.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ExpressRouteGateway: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.scaleUnits) || (has(self.initProvider) && has(self.initProvider.scaleUnits))",message="spec.forProvider.scaleUnits is a required parameter"
	spec:    #ExpressRouteGatewaySpec   @go(Spec)
	status?: #ExpressRouteGatewayStatus @go(Status)
}

// ExpressRouteGatewayList contains a list of ExpressRouteGateways
#ExpressRouteGatewayList: {
	items: [...#ExpressRouteGateway] @go(Items,[]ExpressRouteGateway)
}
