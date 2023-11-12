// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/networkmanager/v1beta1

package v1beta1

#CustomerGatewayAssociationObservation: {
	id?: null | string @go(ID,*string)
}

#CustomerGatewayAssociationParameters: {
	// The Amazon Resource Name (ARN) of the customer gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.CustomerGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	customerGatewayArn?: null | string @go(CustomerGatewayArn,*string)

	// The ID of the device.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.Device
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	deviceId?: null | string @go(DeviceID,*string)

	// The ID of the global network.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.GlobalNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	globalNetworkId?: null | string @go(GlobalNetworkID,*string)

	// The ID of the link.
	// +kubebuilder:validation:Optional
	linkId?: null | string @go(LinkID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// CustomerGatewayAssociationSpec defines the desired state of CustomerGatewayAssociation
#CustomerGatewayAssociationSpec: {
	forProvider: #CustomerGatewayAssociationParameters @go(ForProvider)
}

// CustomerGatewayAssociationStatus defines the observed state of CustomerGatewayAssociation.
#CustomerGatewayAssociationStatus: {
	atProvider?: #CustomerGatewayAssociationObservation @go(AtProvider)
}

// CustomerGatewayAssociation is the Schema for the CustomerGatewayAssociations API. Associates a customer gateway with a device and optionally, with a link.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#CustomerGatewayAssociation: {
	spec:    #CustomerGatewayAssociationSpec   @go(Spec)
	status?: #CustomerGatewayAssociationStatus @go(Status)
}

// CustomerGatewayAssociationList contains a list of CustomerGatewayAssociations
#CustomerGatewayAssociationList: {
	items: [...#CustomerGatewayAssociation] @go(Items,[]CustomerGatewayAssociation)
}
