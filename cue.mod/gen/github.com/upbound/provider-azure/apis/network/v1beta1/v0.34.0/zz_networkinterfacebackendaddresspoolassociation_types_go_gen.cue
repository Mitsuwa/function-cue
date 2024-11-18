// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#NetworkInterfaceBackendAddressPoolAssociationObservation: {
	// The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
	backendAddressPoolId?: null | string @go(BackendAddressPoolID,*string)
	id?:                   null | string @go(ID,*string)

	// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)

	// The ID of the Network Interface. Changing this forces a new resource to be created.
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)
}

#NetworkInterfaceBackendAddressPoolAssociationParameters: {
	// The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=LoadBalancerBackendAddressPool
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	backendAddressPoolId?: null | string @go(BackendAddressPoolID,*string)

	// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)

	// The ID of the Network Interface. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=NetworkInterface
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)
}

// NetworkInterfaceBackendAddressPoolAssociationSpec defines the desired state of NetworkInterfaceBackendAddressPoolAssociation
#NetworkInterfaceBackendAddressPoolAssociationSpec: {
	forProvider: #NetworkInterfaceBackendAddressPoolAssociationParameters @go(ForProvider)
}

// NetworkInterfaceBackendAddressPoolAssociationStatus defines the observed state of NetworkInterfaceBackendAddressPoolAssociation.
#NetworkInterfaceBackendAddressPoolAssociationStatus: {
	atProvider?: #NetworkInterfaceBackendAddressPoolAssociationObservation @go(AtProvider)
}

// NetworkInterfaceBackendAddressPoolAssociation is the Schema for the NetworkInterfaceBackendAddressPoolAssociations API. Manages the association between a Network Interface and a Load Balancer's Backend Address Pool.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#NetworkInterfaceBackendAddressPoolAssociation: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ipConfigurationName)",message="ipConfigurationName is a required parameter"
	spec:    #NetworkInterfaceBackendAddressPoolAssociationSpec   @go(Spec)
	status?: #NetworkInterfaceBackendAddressPoolAssociationStatus @go(Status)
}

// NetworkInterfaceBackendAddressPoolAssociationList contains a list of NetworkInterfaceBackendAddressPoolAssociations
#NetworkInterfaceBackendAddressPoolAssociationList: {
	items: [...#NetworkInterfaceBackendAddressPoolAssociation] @go(Items,[]NetworkInterfaceBackendAddressPoolAssociation)
}
