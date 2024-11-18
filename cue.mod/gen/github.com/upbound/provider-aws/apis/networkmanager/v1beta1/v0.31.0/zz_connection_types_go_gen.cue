// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/networkmanager/v1beta1

package v1beta1

#ConnectionObservation: {
	// The Amazon Resource Name (ARN) of the connection.
	arn?: null | string @go(Arn,*string)
	id?:  null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ConnectionParameters: {
	// The ID of the second device in the connection.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.Device
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	connectedDeviceId?: null | string @go(ConnectedDeviceID,*string)

	// The ID of the link for the second device.
	// +kubebuilder:validation:Optional
	connectedLinkId?: null | string @go(ConnectedLinkID,*string)

	// A description of the connection.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the first device in the connection.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.Device
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	deviceId?: null | string @go(DeviceID,*string)

	// The ID of the global network.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/networkmanager/v1beta1.GlobalNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	globalNetworkId?: null | string @go(GlobalNetworkID,*string)

	// The ID of the link for the first device.
	// +kubebuilder:validation:Optional
	linkId?: null | string @go(LinkID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ConnectionSpec defines the desired state of Connection
#ConnectionSpec: {
	forProvider: #ConnectionParameters @go(ForProvider)
}

// ConnectionStatus defines the observed state of Connection.
#ConnectionStatus: {
	atProvider?: #ConnectionObservation @go(AtProvider)
}

// Connection is the Schema for the Connections API. Creates a connection between two devices.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Connection: {
	spec:    #ConnectionSpec   @go(Spec)
	status?: #ConnectionStatus @go(Status)
}

// ConnectionList contains a list of Connections
#ConnectionList: {
	items: [...#Connection] @go(Items,[]Connection)
}
