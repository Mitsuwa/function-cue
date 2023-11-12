// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/vpcaccess/v1beta1

package v1beta1

#ConnectorInitParameters: {
	// The range of internal addresses that follows RFC 4632 notation. Example: 10.132.0.0/28.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// Machine type of VM Instance underlying connector. Default is e2-micro
	machineType?: null | string @go(MachineType,*string)

	// Maximum value of instances in autoscaling group underlying the connector.
	maxInstances?: null | float64 @go(MaxInstances,*float64)

	// Maximum throughput of the connector in Mbps, must be greater than min_throughput. Default is 300.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)

	// Minimum value of instances in autoscaling group underlying the connector.
	minInstances?: null | float64 @go(MinInstances,*float64)

	// Minimum throughput of the connector in Mbps. Default and min is 200.
	minThroughput?: null | float64 @go(MinThroughput,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The subnet in which to house the connector
	// Structure is documented below.
	subnet?: [...#SubnetInitParameters] @go(Subnet,[]SubnetInitParameters)
}

#ConnectorObservation: {
	// List of projects using the connector.
	connectedProjects?: [...null | string] @go(ConnectedProjects,[]*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{region}}/connectors/{{name}}
	id?: null | string @go(ID,*string)

	// The range of internal addresses that follows RFC 4632 notation. Example: 10.132.0.0/28.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// Machine type of VM Instance underlying connector. Default is e2-micro
	machineType?: null | string @go(MachineType,*string)

	// Maximum value of instances in autoscaling group underlying the connector.
	maxInstances?: null | float64 @go(MaxInstances,*float64)

	// Maximum throughput of the connector in Mbps, must be greater than min_throughput. Default is 300.
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)

	// Minimum value of instances in autoscaling group underlying the connector.
	minInstances?: null | float64 @go(MinInstances,*float64)

	// Minimum throughput of the connector in Mbps. Default and min is 200.
	minThroughput?: null | float64 @go(MinThroughput,*float64)

	// Name or self_link of the VPC network. Required if ip_cidr_range is set.
	network?: null | string @go(Network,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
	region?: null | string @go(Region,*string)

	// The fully qualified name of this VPC connector
	selfLink?: null | string @go(SelfLink,*string)

	// State of the VPC access connector.
	state?: null | string @go(State,*string)

	// The subnet in which to house the connector
	// Structure is documented below.
	subnet?: [...#SubnetObservation] @go(Subnet,[]SubnetObservation)
}

#ConnectorParameters: {
	// The range of internal addresses that follows RFC 4632 notation. Example: 10.132.0.0/28.
	// +kubebuilder:validation:Optional
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// Machine type of VM Instance underlying connector. Default is e2-micro
	// +kubebuilder:validation:Optional
	machineType?: null | string @go(MachineType,*string)

	// Maximum value of instances in autoscaling group underlying the connector.
	// +kubebuilder:validation:Optional
	maxInstances?: null | float64 @go(MaxInstances,*float64)

	// Maximum throughput of the connector in Mbps, must be greater than min_throughput. Default is 300.
	// +kubebuilder:validation:Optional
	maxThroughput?: null | float64 @go(MaxThroughput,*float64)

	// Minimum value of instances in autoscaling group underlying the connector.
	// +kubebuilder:validation:Optional
	minInstances?: null | float64 @go(MinInstances,*float64)

	// Minimum throughput of the connector in Mbps. Default and min is 200.
	// +kubebuilder:validation:Optional
	minThroughput?: null | float64 @go(MinThroughput,*float64)

	// Name or self_link of the VPC network. Required if ip_cidr_range is set.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Network
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The subnet in which to house the connector
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	subnet?: [...#SubnetParameters] @go(Subnet,[]SubnetParameters)
}

#SubnetInitParameters: {
	// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
	projectId?: null | string @go(ProjectID,*string)
}

#SubnetObservation: {
	// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
	// https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}"
	name?: null | string @go(Name,*string)

	// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
	projectId?: null | string @go(ProjectID,*string)
}

#SubnetParameters: {
	// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
	// https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}"
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Subnetwork
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
	// +kubebuilder:validation:Optional
	projectId?: null | string @go(ProjectID,*string)
}

// ConnectorSpec defines the desired state of Connector
#ConnectorSpec: {
	forProvider: #ConnectorParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ConnectorInitParameters @go(InitProvider)
}

// ConnectorStatus defines the observed state of Connector.
#ConnectorStatus: {
	atProvider?: #ConnectorObservation @go(AtProvider)
}

// Connector is the Schema for the Connectors API. Serverless VPC Access connector resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Connector: {
	spec:    #ConnectorSpec   @go(Spec)
	status?: #ConnectorStatus @go(Status)
}

// ConnectorList contains a list of Connectors
#ConnectorList: {
	items: [...#Connector] @go(Items,[]Connector)
}
