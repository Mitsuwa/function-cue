// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ExpressRouteCircuitObservation: {
	// Allow the circuit to interact with classic (RDFE) resources. Defaults to false.
	allowClassicOperations?: null | bool @go(AllowClassicOperations,*bool)

	// The bandwidth in Gbps of the circuit being created on the Express Route Port.
	bandwidthInGbps?: null | float64 @go(BandwidthInGbps,*float64)

	// The bandwidth in Mbps of the circuit being created on the Service Provider.
	bandwidthInMbps?: null | float64 @go(BandwidthInMbps,*float64)

	// The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created.
	expressRoutePortId?: null | string @go(ExpressRoutePortID,*string)

	// The ID of the ExpressRoute circuit.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the peering location and not the Azure resource location. Changing this forces a new resource to be created.
	peeringLocation?: null | string @go(PeeringLocation,*string)

	// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created.
	serviceProviderName?: null | string @go(ServiceProviderName,*string)

	// The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are NotProvisioned, Provisioning, Provisioned, and Deprovisioning.
	serviceProviderProvisioningState?: null | string @go(ServiceProviderProvisioningState,*string)

	// A sku block for the ExpressRoute circuit as documented below.
	sku?: [...#ExpressRouteCircuitSkuObservation] @go(Sku,[]ExpressRouteCircuitSkuObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ExpressRouteCircuitParameters: {
	// Allow the circuit to interact with classic (RDFE) resources. Defaults to false.
	// +kubebuilder:validation:Optional
	allowClassicOperations?: null | bool @go(AllowClassicOperations,*bool)

	// The bandwidth in Gbps of the circuit being created on the Express Route Port.
	// +kubebuilder:validation:Optional
	bandwidthInGbps?: null | float64 @go(BandwidthInGbps,*float64)

	// The bandwidth in Mbps of the circuit being created on the Service Provider.
	// +kubebuilder:validation:Optional
	bandwidthInMbps?: null | float64 @go(BandwidthInMbps,*float64)

	// The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	expressRoutePortId?: null | string @go(ExpressRoutePortID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the peering location and not the Azure resource location. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	peeringLocation?: null | string @go(PeeringLocation,*string)

	// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	serviceProviderName?: null | string @go(ServiceProviderName,*string)

	// A sku block for the ExpressRoute circuit as documented below.
	// +kubebuilder:validation:Optional
	sku?: [...#ExpressRouteCircuitSkuParameters] @go(Sku,[]ExpressRouteCircuitSkuParameters)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ExpressRouteCircuitSkuObservation: {
	// The billing mode for bandwidth. Possible values are MeteredData or UnlimitedData.
	family?: null | string @go(Family,*string)

	// The service tier. Possible values are Basic, Local, Standard or Premium.
	tier?: null | string @go(Tier,*string)
}

#ExpressRouteCircuitSkuParameters: {
	// The billing mode for bandwidth. Possible values are MeteredData or UnlimitedData.
	// +kubebuilder:validation:Required
	family?: null | string @go(Family,*string)

	// The service tier. Possible values are Basic, Local, Standard or Premium.
	// +kubebuilder:validation:Required
	tier?: null | string @go(Tier,*string)
}

// ExpressRouteCircuitSpec defines the desired state of ExpressRouteCircuit
#ExpressRouteCircuitSpec: {
	forProvider: #ExpressRouteCircuitParameters @go(ForProvider)
}

// ExpressRouteCircuitStatus defines the observed state of ExpressRouteCircuit.
#ExpressRouteCircuitStatus: {
	atProvider?: #ExpressRouteCircuitObservation @go(AtProvider)
}

// ExpressRouteCircuit is the Schema for the ExpressRouteCircuits API. Manages an ExpressRoute circuit.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ExpressRouteCircuit: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.sku)",message="sku is a required parameter"
	spec:    #ExpressRouteCircuitSpec   @go(Spec)
	status?: #ExpressRouteCircuitStatus @go(Status)
}

// ExpressRouteCircuitList contains a list of ExpressRouteCircuits
#ExpressRouteCircuitList: {
	items: [...#ExpressRouteCircuit] @go(Items,[]ExpressRouteCircuit)
}
