// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/directconnect/v1beta1

package v1beta1

#HostedPrivateVirtualInterfaceAccepterObservation: {
	// The ARN of the virtual interface.
	arn?: null | string @go(Arn,*string)

	// The ID of the Direct Connect gateway to which to connect the virtual interface.
	dxGatewayId?: null | string @go(DxGatewayID,*string)

	// The ID of the virtual interface.
	id?: null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The ID of the virtual private gateway to which to connect the virtual interface.
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)

	// The ID of the Direct Connect virtual interface to accept.
	virtualInterfaceId?: null | string @go(VirtualInterfaceID,*string)
}

#HostedPrivateVirtualInterfaceAccepterParameters: {
	// The ID of the Direct Connect gateway to which to connect the virtual interface.
	// +kubebuilder:validation:Optional
	dxGatewayId?: null | string @go(DxGatewayID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the virtual private gateway to which to connect the virtual interface.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPNGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)

	// The ID of the Direct Connect virtual interface to accept.
	// +crossplane:generate:reference:type=HostedPrivateVirtualInterface
	// +kubebuilder:validation:Optional
	virtualInterfaceId?: null | string @go(VirtualInterfaceID,*string)
}

// HostedPrivateVirtualInterfaceAccepterSpec defines the desired state of HostedPrivateVirtualInterfaceAccepter
#HostedPrivateVirtualInterfaceAccepterSpec: {
	forProvider: #HostedPrivateVirtualInterfaceAccepterParameters @go(ForProvider)
}

// HostedPrivateVirtualInterfaceAccepterStatus defines the observed state of HostedPrivateVirtualInterfaceAccepter.
#HostedPrivateVirtualInterfaceAccepterStatus: {
	atProvider?: #HostedPrivateVirtualInterfaceAccepterObservation @go(AtProvider)
}

// HostedPrivateVirtualInterfaceAccepter is the Schema for the HostedPrivateVirtualInterfaceAccepters API. Provides a resource to manage the accepter's side of a Direct Connect hosted private virtual interface.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#HostedPrivateVirtualInterfaceAccepter: {
	spec:    #HostedPrivateVirtualInterfaceAccepterSpec   @go(Spec)
	status?: #HostedPrivateVirtualInterfaceAccepterStatus @go(Status)
}

// HostedPrivateVirtualInterfaceAccepterList contains a list of HostedPrivateVirtualInterfaceAccepters
#HostedPrivateVirtualInterfaceAccepterList: {
	items: [...#HostedPrivateVirtualInterfaceAccepter] @go(Items,[]HostedPrivateVirtualInterfaceAccepter)
}
