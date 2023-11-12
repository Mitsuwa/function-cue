// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ContainerNetworkInterfaceIPConfigurationInitParameters: {
	// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#ContainerNetworkInterfaceIPConfigurationObservation: {
	// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Reference to the subnet associated with the IP Configuration.
	subnetId?: null | string @go(SubnetID,*string)
}

#ContainerNetworkInterfaceIPConfigurationParameters: {
	// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Reference to the subnet associated with the IP Configuration.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

#ContainerNetworkInterfaceInitParameters: {
	// One or more ip_configuration blocks as documented below.
	ipConfiguration?: [...#ContainerNetworkInterfaceIPConfigurationInitParameters] @go(IPConfiguration,[]ContainerNetworkInterfaceIPConfigurationInitParameters)

	// Specifies the name of the IP Configuration.
	name?: null | string @go(Name,*string)
}

#ContainerNetworkInterfaceObservation: {
	// One or more ip_configuration blocks as documented below.
	ipConfiguration?: [...#ContainerNetworkInterfaceIPConfigurationObservation] @go(IPConfiguration,[]ContainerNetworkInterfaceIPConfigurationObservation)

	// Specifies the name of the IP Configuration.
	name?: null | string @go(Name,*string)
}

#ContainerNetworkInterfaceParameters: {
	// One or more ip_configuration blocks as documented below.
	// +kubebuilder:validation:Optional
	ipConfiguration: [...#ContainerNetworkInterfaceIPConfigurationParameters] @go(IPConfiguration,[]ContainerNetworkInterfaceIPConfigurationParameters)

	// Specifies the name of the IP Configuration.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#ProfileInitParameters: {
	// A container_network_interface block as documented below.
	containerNetworkInterface?: [...#ContainerNetworkInterfaceInitParameters] @go(ContainerNetworkInterface,[]ContainerNetworkInterfaceInitParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ProfileObservation: {
	// A container_network_interface block as documented below.
	containerNetworkInterface?: [...#ContainerNetworkInterfaceObservation] @go(ContainerNetworkInterface,[]ContainerNetworkInterfaceObservation)

	// A list of Container Network Interface IDs.
	containerNetworkInterfaceIds?: [...null | string] @go(ContainerNetworkInterfaceIds,[]*string)

	// The ID of the Network Profile.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ProfileParameters: {
	// A container_network_interface block as documented below.
	// +kubebuilder:validation:Optional
	containerNetworkInterface?: [...#ContainerNetworkInterfaceParameters] @go(ContainerNetworkInterface,[]ContainerNetworkInterfaceParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ProfileSpec defines the desired state of Profile
#ProfileSpec: {
	forProvider: #ProfileParameters @go(ForProvider)

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
	initProvider?: #ProfileInitParameters @go(InitProvider)
}

// ProfileStatus defines the observed state of Profile.
#ProfileStatus: {
	atProvider?: #ProfileObservation @go(AtProvider)
}

// Profile is the Schema for the Profiles API. Manages a Network Profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Profile: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.containerNetworkInterface) || (has(self.initProvider) && has(self.initProvider.containerNetworkInterface))",message="spec.forProvider.containerNetworkInterface is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #ProfileSpec   @go(Spec)
	status?: #ProfileStatus @go(Status)
}

// ProfileList contains a list of Profiles
#ProfileList: {
	items: [...#Profile] @go(Items,[]Profile)
}
