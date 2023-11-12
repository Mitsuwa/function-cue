// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#NATGatewayPublicIPAssociationInitParameters: {
}

#NATGatewayPublicIPAssociationObservation: {
	id?: null | string @go(ID,*string)

	// The ID of the NAT Gateway. Changing this forces a new resource to be created.
	natGatewayId?: null | string @go(NATGatewayID,*string)

	// The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)
}

#NATGatewayPublicIPAssociationParameters: {
	// The ID of the NAT Gateway. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=NATGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	natGatewayId?: null | string @go(NATGatewayID,*string)

	// The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=PublicIP
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)
}

// NATGatewayPublicIPAssociationSpec defines the desired state of NATGatewayPublicIPAssociation
#NATGatewayPublicIPAssociationSpec: {
	forProvider: #NATGatewayPublicIPAssociationParameters @go(ForProvider)

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
	initProvider?: #NATGatewayPublicIPAssociationInitParameters @go(InitProvider)
}

// NATGatewayPublicIPAssociationStatus defines the observed state of NATGatewayPublicIPAssociation.
#NATGatewayPublicIPAssociationStatus: {
	atProvider?: #NATGatewayPublicIPAssociationObservation @go(AtProvider)
}

// NATGatewayPublicIPAssociation is the Schema for the NATGatewayPublicIPAssociations API. Manages the association between a NAT Gateway and a Public IP.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#NATGatewayPublicIPAssociation: {
	spec:    #NATGatewayPublicIPAssociationSpec   @go(Spec)
	status?: #NATGatewayPublicIPAssociationStatus @go(Status)
}

// NATGatewayPublicIPAssociationList contains a list of NATGatewayPublicIPAssociations
#NATGatewayPublicIPAssociationList: {
	items: [...#NATGatewayPublicIPAssociation] @go(Items,[]NATGatewayPublicIPAssociation)
}
