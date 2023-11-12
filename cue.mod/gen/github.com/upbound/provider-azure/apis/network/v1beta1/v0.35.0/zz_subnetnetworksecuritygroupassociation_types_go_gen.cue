// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#SubnetNetworkSecurityGroupAssociationInitParameters: {
}

#SubnetNetworkSecurityGroupAssociationObservation: {
	// The ID of the Subnet.
	id?: null | string @go(ID,*string)

	// The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
	networkSecurityGroupId?: null | string @go(NetworkSecurityGroupID,*string)

	// The ID of the Subnet. Changing this forces a new resource to be created.
	subnetId?: null | string @go(SubnetID,*string)
}

#SubnetNetworkSecurityGroupAssociationParameters: {
	// The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=SecurityGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkSecurityGroupId?: null | string @go(NetworkSecurityGroupID,*string)

	// The ID of the Subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// SubnetNetworkSecurityGroupAssociationSpec defines the desired state of SubnetNetworkSecurityGroupAssociation
#SubnetNetworkSecurityGroupAssociationSpec: {
	forProvider: #SubnetNetworkSecurityGroupAssociationParameters @go(ForProvider)

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
	initProvider?: #SubnetNetworkSecurityGroupAssociationInitParameters @go(InitProvider)
}

// SubnetNetworkSecurityGroupAssociationStatus defines the observed state of SubnetNetworkSecurityGroupAssociation.
#SubnetNetworkSecurityGroupAssociationStatus: {
	atProvider?: #SubnetNetworkSecurityGroupAssociationObservation @go(AtProvider)
}

// SubnetNetworkSecurityGroupAssociation is the Schema for the SubnetNetworkSecurityGroupAssociations API. Associates a
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SubnetNetworkSecurityGroupAssociation: {
	spec:    #SubnetNetworkSecurityGroupAssociationSpec   @go(Spec)
	status?: #SubnetNetworkSecurityGroupAssociationStatus @go(Status)
}

// SubnetNetworkSecurityGroupAssociationList contains a list of SubnetNetworkSecurityGroupAssociations
#SubnetNetworkSecurityGroupAssociationList: {
	items: [...#SubnetNetworkSecurityGroupAssociation] @go(Items,[]SubnetNetworkSecurityGroupAssociation)
}
