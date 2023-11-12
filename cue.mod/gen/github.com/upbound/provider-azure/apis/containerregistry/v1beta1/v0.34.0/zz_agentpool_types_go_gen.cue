// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/containerregistry/v1beta1

package v1beta1

#AgentPoolObservation: {
	// Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
	containerRegistryName?: null | string @go(ContainerRegistryName,*string)

	// The ID of the Azure Container Registry Agent Pool.
	id?: null | string @go(ID,*string)

	// VMSS instance count. Defaults to 1.
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Sets the VM your agent pool will run on. Valid values are: S1 (2 vCPUs, 3 GiB RAM), S2 (4 vCPUs, 8 GiB RAM), S3 (8 vCPUs, 16 GiB RAM) or I6 (64 vCPUs, 216 GiB RAM, Isolated). Defaults to S1. Changing this forces a new Azure Container Registry Agent Pool to be created.
	tier?: null | string @go(Tier,*string)

	// The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
	virtualNetworkSubnetId?: null | string @go(VirtualNetworkSubnetID,*string)
}

#AgentPoolParameters: {
	// Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/containerregistry/v1beta1.Registry
	// +kubebuilder:validation:Optional
	containerRegistryName?: null | string @go(ContainerRegistryName,*string)

	// VMSS instance count. Defaults to 1.
	// +kubebuilder:validation:Optional
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Sets the VM your agent pool will run on. Valid values are: S1 (2 vCPUs, 3 GiB RAM), S2 (4 vCPUs, 8 GiB RAM), S3 (8 vCPUs, 16 GiB RAM) or I6 (64 vCPUs, 216 GiB RAM, Isolated). Defaults to S1. Changing this forces a new Azure Container Registry Agent Pool to be created.
	// +kubebuilder:validation:Optional
	tier?: null | string @go(Tier,*string)

	// The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualNetworkSubnetId?: null | string @go(VirtualNetworkSubnetID,*string)
}

// AgentPoolSpec defines the desired state of AgentPool
#AgentPoolSpec: {
	forProvider: #AgentPoolParameters @go(ForProvider)
}

// AgentPoolStatus defines the observed state of AgentPool.
#AgentPoolStatus: {
	atProvider?: #AgentPoolObservation @go(AtProvider)
}

// AgentPool is the Schema for the AgentPools API. Manages an Azure Container Registry Agent Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AgentPool: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #AgentPoolSpec   @go(Spec)
	status?: #AgentPoolStatus @go(Status)
}

// AgentPoolList contains a list of AgentPools
#AgentPoolList: {
	items: [...#AgentPool] @go(Items,[]AgentPool)
}
