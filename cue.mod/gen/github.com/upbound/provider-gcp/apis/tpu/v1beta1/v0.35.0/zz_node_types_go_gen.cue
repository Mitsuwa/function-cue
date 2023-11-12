// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/tpu/v1beta1

package v1beta1

#NetworkEndpointsInitParameters: {
}

#NetworkEndpointsObservation: {
	// (Output)
	// The IP address of this network endpoint.
	ipAddress?: null | string @go(IPAddress,*string)

	// (Output)
	// The port of this network endpoint.
	port?: null | float64 @go(Port,*float64)
}

#NetworkEndpointsParameters: {
}

#NodeInitParameters: {
	// The type of hardware accelerators associated with this node.
	acceleratorType?: null | string @go(AcceleratorType,*string)

	// The CIDR block that the TPU node will use when selecting an IP
	// address. This CIDR block must be a /29 block; the Compute Engine
	// networks API forbids a smaller block, and using a larger block would
	// be wasteful (a node can only consume one IP address).
	// Errors will occur if the CIDR block has already been used for a
	// currently existing TPU node, the CIDR block conflicts with any
	// subnetworks in the user's provided network, or the provided network
	// is peered with another network that is using that CIDR block.
	cidrBlock?: null | string @go(CidrBlock,*string)

	// The user-supplied description of the TPU. Maximum of 512 characters.
	description?: null | string @go(Description,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Sets the scheduling options for this TPU instance.
	// Structure is documented below.
	schedulingConfig?: [...#SchedulingConfigInitParameters] @go(SchedulingConfig,[]SchedulingConfigInitParameters)

	// The version of Tensorflow running in the Node.
	tensorflowVersion?: null | string @go(TensorflowVersion,*string)

	// Whether the VPC peering for the node is set up through Service Networking API.
	// The VPC Peering should be set up before provisioning the node. If this field is set,
	// cidr_block field should not be specified. If the network that you want to peer the
	// TPU Node to is a Shared VPC network, the node must be created with this this field enabled.
	useServiceNetworking?: null | bool @go(UseServiceNetworking,*bool)
}

#NodeObservation: {
	// The type of hardware accelerators associated with this node.
	acceleratorType?: null | string @go(AcceleratorType,*string)

	// The CIDR block that the TPU node will use when selecting an IP
	// address. This CIDR block must be a /29 block; the Compute Engine
	// networks API forbids a smaller block, and using a larger block would
	// be wasteful (a node can only consume one IP address).
	// Errors will occur if the CIDR block has already been used for a
	// currently existing TPU node, the CIDR block conflicts with any
	// subnetworks in the user's provided network, or the provided network
	// is peered with another network that is using that CIDR block.
	cidrBlock?: null | string @go(CidrBlock,*string)

	// The user-supplied description of the TPU. Maximum of 512 characters.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{zone}}/nodes/{{name}}
	id?: null | string @go(ID,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The name of a network to peer the TPU node to. It must be a
	// preexisting Compute Engine network inside of the project on which
	// this API has been activated. If none is provided, "default" will be
	// used.
	network?: null | string @go(Network,*string)

	// The network endpoints where TPU workers can be accessed and sent work.
	// It is recommended that Tensorflow clients of the node first reach out
	// to the first (index 0) entry.
	// Structure is documented below.
	networkEndpoints?: [...#NetworkEndpointsObservation] @go(NetworkEndpoints,[]NetworkEndpointsObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Sets the scheduling options for this TPU instance.
	// Structure is documented below.
	schedulingConfig?: [...#SchedulingConfigObservation] @go(SchedulingConfig,[]SchedulingConfigObservation)

	// The service account used to run the tensor flow services within the
	// node. To share resources, including Google Cloud Storage data, with
	// the Tensorflow job running in the Node, this account must have
	// permissions to that data.
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// The version of Tensorflow running in the Node.
	tensorflowVersion?: null | string @go(TensorflowVersion,*string)

	// Whether the VPC peering for the node is set up through Service Networking API.
	// The VPC Peering should be set up before provisioning the node. If this field is set,
	// cidr_block field should not be specified. If the network that you want to peer the
	// TPU Node to is a Shared VPC network, the node must be created with this this field enabled.
	useServiceNetworking?: null | bool @go(UseServiceNetworking,*bool)

	// The GCP location for the TPU. If it is not provided, the provider zone is used.
	zone?: null | string @go(Zone,*string)
}

#NodeParameters: {
	// The type of hardware accelerators associated with this node.
	// +kubebuilder:validation:Optional
	acceleratorType?: null | string @go(AcceleratorType,*string)

	// The CIDR block that the TPU node will use when selecting an IP
	// address. This CIDR block must be a /29 block; the Compute Engine
	// networks API forbids a smaller block, and using a larger block would
	// be wasteful (a node can only consume one IP address).
	// Errors will occur if the CIDR block has already been used for a
	// currently existing TPU node, the CIDR block conflicts with any
	// subnetworks in the user's provided network, or the provided network
	// is peered with another network that is using that CIDR block.
	// +kubebuilder:validation:Optional
	cidrBlock?: null | string @go(CidrBlock,*string)

	// The user-supplied description of the TPU. Maximum of 512 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Resource labels to represent user provided metadata.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The name of a network to peer the TPU node to. It must be a
	// preexisting Compute Engine network inside of the project on which
	// this API has been activated. If none is provided, "default" will be
	// used.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/servicenetworking/v1beta1.Connection
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("network",false)
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Sets the scheduling options for this TPU instance.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	schedulingConfig?: [...#SchedulingConfigParameters] @go(SchedulingConfig,[]SchedulingConfigParameters)

	// The version of Tensorflow running in the Node.
	// +kubebuilder:validation:Optional
	tensorflowVersion?: null | string @go(TensorflowVersion,*string)

	// Whether the VPC peering for the node is set up through Service Networking API.
	// The VPC Peering should be set up before provisioning the node. If this field is set,
	// cidr_block field should not be specified. If the network that you want to peer the
	// TPU Node to is a Shared VPC network, the node must be created with this this field enabled.
	// +kubebuilder:validation:Optional
	useServiceNetworking?: null | bool @go(UseServiceNetworking,*bool)

	// The GCP location for the TPU. If it is not provided, the provider zone is used.
	// +kubebuilder:validation:Required
	zone?: null | string @go(Zone,*string)
}

#SchedulingConfigInitParameters: {
	// Defines whether the TPU instance is preemptible.
	preemptible?: null | bool @go(Preemptible,*bool)
}

#SchedulingConfigObservation: {
	// Defines whether the TPU instance is preemptible.
	preemptible?: null | bool @go(Preemptible,*bool)
}

#SchedulingConfigParameters: {
	// Defines whether the TPU instance is preemptible.
	// +kubebuilder:validation:Optional
	preemptible?: null | bool @go(Preemptible,*bool)
}

// NodeSpec defines the desired state of Node
#NodeSpec: {
	forProvider: #NodeParameters @go(ForProvider)

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
	initProvider?: #NodeInitParameters @go(InitProvider)
}

// NodeStatus defines the observed state of Node.
#NodeStatus: {
	atProvider?: #NodeObservation @go(AtProvider)
}

// Node is the Schema for the Nodes API. A Cloud TPU instance.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Node: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.acceleratorType) || has(self.initProvider.acceleratorType)",message="acceleratorType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tensorflowVersion) || has(self.initProvider.tensorflowVersion)",message="tensorflowVersion is a required parameter"
	spec:    #NodeSpec   @go(Spec)
	status?: #NodeStatus @go(Status)
}

// NodeList contains a list of Nodes
#NodeList: {
	items: [...#Node] @go(Items,[]Node)
}
