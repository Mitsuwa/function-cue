// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#NetworkEndpointInitParameters: {
	// IPv4 address of network endpoint. The IP address must belong
	// to a VM in GCE (either the primary IP or as part of an aliased IP
	// range).
	ipAddress?: null | string @go(IPAddress,*string)

	// Port number of network endpoint.
	// Note port is required unless the Network Endpoint Group is created
	// with the type of GCE_VM_IP
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Zone where the containing network endpoint group is located.
	zone?: null | string @go(Zone,*string)
}

#NetworkEndpointObservation: {
	// an identifier for the resource with format {{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
	id?: null | string @go(ID,*string)

	// IPv4 address of network endpoint. The IP address must belong
	// to a VM in GCE (either the primary IP or as part of an aliased IP
	// range).
	ipAddress?: null | string @go(IPAddress,*string)

	// The name for a specific VM instance that the IP address belongs to.
	// This is required for network endpoints of type GCE_VM_IP_PORT.
	// The instance must be in the same zone of network endpoint group.
	instance?: null | string @go(Instance,*string)

	// The network endpoint group this endpoint is part of.
	networkEndpointGroup?: null | string @go(NetworkEndpointGroup,*string)

	// Port number of network endpoint.
	// Note port is required unless the Network Endpoint Group is created
	// with the type of GCE_VM_IP
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Zone where the containing network endpoint group is located.
	zone?: null | string @go(Zone,*string)
}

#NetworkEndpointParameters: {
	// IPv4 address of network endpoint. The IP address must belong
	// to a VM in GCE (either the primary IP or as part of an aliased IP
	// range).
	// +kubebuilder:validation:Optional
	ipAddress?: null | string @go(IPAddress,*string)

	// The name for a specific VM instance that the IP address belongs to.
	// This is required for network endpoints of type GCE_VM_IP_PORT.
	// The instance must be in the same zone of network endpoint group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Instance
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// The network endpoint group this endpoint is part of.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.NetworkEndpointGroup
	// +kubebuilder:validation:Optional
	networkEndpointGroup?: null | string @go(NetworkEndpointGroup,*string)

	// Port number of network endpoint.
	// Note port is required unless the Network Endpoint Group is created
	// with the type of GCE_VM_IP
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Zone where the containing network endpoint group is located.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

// NetworkEndpointSpec defines the desired state of NetworkEndpoint
#NetworkEndpointSpec: {
	forProvider: #NetworkEndpointParameters @go(ForProvider)

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
	initProvider?: #NetworkEndpointInitParameters @go(InitProvider)
}

// NetworkEndpointStatus defines the observed state of NetworkEndpoint.
#NetworkEndpointStatus: {
	atProvider?: #NetworkEndpointObservation @go(AtProvider)
}

// NetworkEndpoint is the Schema for the NetworkEndpoints API. A Network endpoint represents a IP address and port combination that is part of a specific network endpoint group (NEG).
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#NetworkEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ipAddress) || has(self.initProvider.ipAddress)",message="ipAddress is a required parameter"
	spec:    #NetworkEndpointSpec   @go(Spec)
	status?: #NetworkEndpointStatus @go(Status)
}

// NetworkEndpointList contains a list of NetworkEndpoints
#NetworkEndpointList: {
	items: [...#NetworkEndpoint] @go(Items,[]NetworkEndpoint)
}
