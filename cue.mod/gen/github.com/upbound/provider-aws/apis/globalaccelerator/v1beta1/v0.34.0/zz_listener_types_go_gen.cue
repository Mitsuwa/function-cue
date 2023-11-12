// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/globalaccelerator/v1beta1

package v1beta1

#ListenerObservation: {
	// The Amazon Resource Name (ARN) of your accelerator.
	acceleratorArn?: null | string @go(AcceleratorArn,*string)

	// Direct all requests from a user to the same endpoint. Valid values are NONE, SOURCE_IP. Default: NONE. If NONE, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If SOURCE_IP, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
	clientAffinity?: null | string @go(ClientAffinity,*string)

	// The Amazon Resource Name (ARN) of the listener.
	id?: null | string @go(ID,*string)

	// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
	portRange?: [...#PortRangeObservation] @go(PortRange,[]PortRangeObservation)

	// The protocol for the connections from clients to the accelerator. Valid values are TCP, UDP.
	protocol?: null | string @go(Protocol,*string)
}

#ListenerParameters: {
	// The Amazon Resource Name (ARN) of your accelerator.
	// +crossplane:generate:reference:type=Accelerator
	// +kubebuilder:validation:Optional
	acceleratorArn?: null | string @go(AcceleratorArn,*string)

	// Direct all requests from a user to the same endpoint. Valid values are NONE, SOURCE_IP. Default: NONE. If NONE, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If SOURCE_IP, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
	// +kubebuilder:validation:Optional
	clientAffinity?: null | string @go(ClientAffinity,*string)

	// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
	// +kubebuilder:validation:Optional
	portRange?: [...#PortRangeParameters] @go(PortRange,[]PortRangeParameters)

	// The protocol for the connections from clients to the accelerator. Valid values are TCP, UDP.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#PortRangeObservation: {
	// The first port in the range of ports, inclusive.
	fromPort?: null | float64 @go(FromPort,*float64)

	// The last port in the range of ports, inclusive.
	toPort?: null | float64 @go(ToPort,*float64)
}

#PortRangeParameters: {
	// The first port in the range of ports, inclusive.
	// +kubebuilder:validation:Optional
	fromPort?: null | float64 @go(FromPort,*float64)

	// The last port in the range of ports, inclusive.
	// +kubebuilder:validation:Optional
	toPort?: null | float64 @go(ToPort,*float64)
}

// ListenerSpec defines the desired state of Listener
#ListenerSpec: {
	forProvider: #ListenerParameters @go(ForProvider)
}

// ListenerStatus defines the observed state of Listener.
#ListenerStatus: {
	atProvider?: #ListenerObservation @go(AtProvider)
}

// Listener is the Schema for the Listeners API. Provides a Global Accelerator listener.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Listener: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.portRange)",message="portRange is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.protocol)",message="protocol is a required parameter"
	spec:    #ListenerSpec   @go(Spec)
	status?: #ListenerStatus @go(Status)
}

// ListenerList contains a list of Listeners
#ListenerList: {
	items: [...#Listener] @go(Items,[]Listener)
}
