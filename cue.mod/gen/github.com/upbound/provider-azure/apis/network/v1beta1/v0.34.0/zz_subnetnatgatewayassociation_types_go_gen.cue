// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#SubnetNATGatewayAssociationObservation: {
	// The ID of the Subnet.
	id?: null | string @go(ID,*string)

	// The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
	natGatewayId?: null | string @go(NATGatewayID,*string)

	// The ID of the Subnet. Changing this forces a new resource to be created.
	subnetId?: null | string @go(SubnetID,*string)
}

#SubnetNATGatewayAssociationParameters: {
	// The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.NATGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	natGatewayId?: null | string @go(NATGatewayID,*string)

	// The ID of the Subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// SubnetNATGatewayAssociationSpec defines the desired state of SubnetNATGatewayAssociation
#SubnetNATGatewayAssociationSpec: {
	forProvider: #SubnetNATGatewayAssociationParameters @go(ForProvider)
}

// SubnetNATGatewayAssociationStatus defines the observed state of SubnetNATGatewayAssociation.
#SubnetNATGatewayAssociationStatus: {
	atProvider?: #SubnetNATGatewayAssociationObservation @go(AtProvider)
}

// SubnetNATGatewayAssociation is the Schema for the SubnetNATGatewayAssociations API. Associates a
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SubnetNATGatewayAssociation: {
	spec:    #SubnetNATGatewayAssociationSpec   @go(Spec)
	status?: #SubnetNATGatewayAssociationStatus @go(Status)
}

// SubnetNATGatewayAssociationList contains a list of SubnetNATGatewayAssociations
#SubnetNATGatewayAssociationList: {
	items: [...#SubnetNATGatewayAssociation] @go(Items,[]SubnetNATGatewayAssociation)
}
