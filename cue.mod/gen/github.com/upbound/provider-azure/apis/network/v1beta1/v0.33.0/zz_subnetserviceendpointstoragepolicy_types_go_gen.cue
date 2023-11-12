// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DefinitionObservation: {
	// The description of this Subnet Service Endpoint Storage Policy Definition.
	description?: null | string @go(Description,*string)

	// The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
	name?: null | string @go(Name,*string)

	// Specifies a list of resources that this Subnet Service Endpoint Storage Policy Definition applies to.
	serviceResources?: [...null | string] @go(ServiceResources,[]*string)
}

#DefinitionParameters: {
	// The description of this Subnet Service Endpoint Storage Policy Definition.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Specifies a list of resources that this Subnet Service Endpoint Storage Policy Definition applies to.
	// +kubebuilder:validation:Required
	serviceResources: [...null | string] @go(ServiceResources,[]*string)
}

#SubnetServiceEndpointStoragePolicyObservation: {
	// A definition block as defined below
	definition?: [...#DefinitionObservation] @go(Definition,[]DefinitionObservation)

	// The ID of the Subnet Service Endpoint Storage Policy.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SubnetServiceEndpointStoragePolicyParameters: {
	// A definition block as defined below
	// +kubebuilder:validation:Optional
	definition?: [...#DefinitionParameters] @go(Definition,[]DefinitionParameters)

	// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SubnetServiceEndpointStoragePolicySpec defines the desired state of SubnetServiceEndpointStoragePolicy
#SubnetServiceEndpointStoragePolicySpec: {
	forProvider: #SubnetServiceEndpointStoragePolicyParameters @go(ForProvider)
}

// SubnetServiceEndpointStoragePolicyStatus defines the observed state of SubnetServiceEndpointStoragePolicy.
#SubnetServiceEndpointStoragePolicyStatus: {
	atProvider?: #SubnetServiceEndpointStoragePolicyObservation @go(AtProvider)
}

// SubnetServiceEndpointStoragePolicy is the Schema for the SubnetServiceEndpointStoragePolicys API. Manages a Subnet Service Endpoint Storage Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SubnetServiceEndpointStoragePolicy: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #SubnetServiceEndpointStoragePolicySpec   @go(Spec)
	status?: #SubnetServiceEndpointStoragePolicyStatus @go(Status)
}

// SubnetServiceEndpointStoragePolicyList contains a list of SubnetServiceEndpointStoragePolicys
#SubnetServiceEndpointStoragePolicyList: {
	items: [...#SubnetServiceEndpointStoragePolicy] @go(Items,[]SubnetServiceEndpointStoragePolicy)
}
