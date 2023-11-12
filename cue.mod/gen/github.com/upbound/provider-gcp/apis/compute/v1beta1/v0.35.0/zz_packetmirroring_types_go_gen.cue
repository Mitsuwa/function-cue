// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#CollectorIlbInitParameters: {
}

#CollectorIlbObservation: {
	// The URL of the forwarding rule.
	url?: null | string @go(URL,*string)
}

#CollectorIlbParameters: {
	// The URL of the forwarding rule.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.ForwardingRule
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#FilterInitParameters: {
	// IP CIDR ranges that apply as a filter on the source (ingress) or
	// destination (egress) IP in the IP header. Only IPv4 is supported.
	cidrRanges?: [...null | string] @go(CidrRanges,[]*string)

	// Direction of traffic to mirror.
	// Default value is BOTH.
	// Possible values are: INGRESS, EGRESS, BOTH.
	direction?: null | string @go(Direction,*string)

	// Possible IP protocols including tcp, udp, icmp and esp
	ipProtocols?: [...null | string] @go(IPProtocols,[]*string)
}

#FilterObservation: {
	// IP CIDR ranges that apply as a filter on the source (ingress) or
	// destination (egress) IP in the IP header. Only IPv4 is supported.
	cidrRanges?: [...null | string] @go(CidrRanges,[]*string)

	// Direction of traffic to mirror.
	// Default value is BOTH.
	// Possible values are: INGRESS, EGRESS, BOTH.
	direction?: null | string @go(Direction,*string)

	// Possible IP protocols including tcp, udp, icmp and esp
	ipProtocols?: [...null | string] @go(IPProtocols,[]*string)
}

#FilterParameters: {
	// IP CIDR ranges that apply as a filter on the source (ingress) or
	// destination (egress) IP in the IP header. Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	cidrRanges?: [...null | string] @go(CidrRanges,[]*string)

	// Direction of traffic to mirror.
	// Default value is BOTH.
	// Possible values are: INGRESS, EGRESS, BOTH.
	// +kubebuilder:validation:Optional
	direction?: null | string @go(Direction,*string)

	// Possible IP protocols including tcp, udp, icmp and esp
	// +kubebuilder:validation:Optional
	ipProtocols?: [...null | string] @go(IPProtocols,[]*string)
}

#InstancesInitParameters: {
}

#InstancesObservation: {
	// The URL of the subnetwork where this rule should be active.
	url?: null | string @go(URL,*string)
}

#InstancesParameters: {
	// The URL of the subnetwork where this rule should be active.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Instance
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#MirroredResourcesInitParameters: {
	// All the listed instances will be mirrored.  Specify at most 50.
	// Structure is documented below.
	instances?: [...#InstancesInitParameters] @go(Instances,[]InstancesInitParameters)

	// All instances in one of these subnetworks will be mirrored.
	// Structure is documented below.
	subnetworks?: [...#SubnetworksInitParameters] @go(Subnetworks,[]SubnetworksInitParameters)

	// All instances with these tags will be mirrored.
	tags?: [...null | string] @go(Tags,[]*string)
}

#MirroredResourcesObservation: {
	// All the listed instances will be mirrored.  Specify at most 50.
	// Structure is documented below.
	instances?: [...#InstancesObservation] @go(Instances,[]InstancesObservation)

	// All instances in one of these subnetworks will be mirrored.
	// Structure is documented below.
	subnetworks?: [...#SubnetworksObservation] @go(Subnetworks,[]SubnetworksObservation)

	// All instances with these tags will be mirrored.
	tags?: [...null | string] @go(Tags,[]*string)
}

#MirroredResourcesParameters: {
	// All the listed instances will be mirrored.  Specify at most 50.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	instances?: [...#InstancesParameters] @go(Instances,[]InstancesParameters)

	// All instances in one of these subnetworks will be mirrored.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	subnetworks?: [...#SubnetworksParameters] @go(Subnetworks,[]SubnetworksParameters)

	// All instances with these tags will be mirrored.
	// +kubebuilder:validation:Optional
	tags?: [...null | string] @go(Tags,[]*string)
}

#PacketMirroringInitParameters: {
	// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
	// that will be used as collector for mirrored traffic. The
	// specified forwarding rule must have is_mirroring_collector
	// set to true.
	// Structure is documented below.
	collectorIlb?: [...#CollectorIlbInitParameters] @go(CollectorIlb,[]CollectorIlbInitParameters)

	// A human-readable description of the rule.
	description?: null | string @go(Description,*string)

	// A filter for mirrored traffic.  If unset, all traffic is mirrored.
	// Structure is documented below.
	filter?: [...#FilterInitParameters] @go(Filter,[]FilterInitParameters)

	// A means of specifying which resources to mirror.
	// Structure is documented below.
	mirroredResources?: [...#MirroredResourcesInitParameters] @go(MirroredResources,[]MirroredResourcesInitParameters)

	// Specifies the mirrored VPC network. Only packets in this network
	// will be mirrored. All mirrored VMs should have a NIC in the given
	// network. All mirrored subnetworks should belong to the given network.
	// Structure is documented below.
	network?: [...#PacketMirroringNetworkInitParameters] @go(Network,[]PacketMirroringNetworkInitParameters)

	// Since only one rule can be active at a time, priority is
	// used to break ties in the case of two rules that apply to
	// the same instances.
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#PacketMirroringNetworkInitParameters: {
}

#PacketMirroringNetworkObservation: {
	// The full self_link URL of the network where this rule is active.
	url?: null | string @go(URL,*string)
}

#PacketMirroringNetworkParameters: {
	// The full self_link URL of the network where this rule is active.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Network
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#PacketMirroringObservation: {
	// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
	// that will be used as collector for mirrored traffic. The
	// specified forwarding rule must have is_mirroring_collector
	// set to true.
	// Structure is documented below.
	collectorIlb?: [...#CollectorIlbObservation] @go(CollectorIlb,[]CollectorIlbObservation)

	// A human-readable description of the rule.
	description?: null | string @go(Description,*string)

	// A filter for mirrored traffic.  If unset, all traffic is mirrored.
	// Structure is documented below.
	filter?: [...#FilterObservation] @go(Filter,[]FilterObservation)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/packetMirrorings/{{name}}
	id?: null | string @go(ID,*string)

	// A means of specifying which resources to mirror.
	// Structure is documented below.
	mirroredResources?: [...#MirroredResourcesObservation] @go(MirroredResources,[]MirroredResourcesObservation)

	// Specifies the mirrored VPC network. Only packets in this network
	// will be mirrored. All mirrored VMs should have a NIC in the given
	// network. All mirrored subnetworks should belong to the given network.
	// Structure is documented below.
	network?: [...#PacketMirroringNetworkObservation] @go(Network,[]PacketMirroringNetworkObservation)

	// Since only one rule can be active at a time, priority is
	// used to break ties in the case of two rules that apply to
	// the same instances.
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The Region in which the created address should reside.
	// If it is not provided, the provider region is used.
	region?: null | string @go(Region,*string)
}

#PacketMirroringParameters: {
	// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
	// that will be used as collector for mirrored traffic. The
	// specified forwarding rule must have is_mirroring_collector
	// set to true.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	collectorIlb?: [...#CollectorIlbParameters] @go(CollectorIlb,[]CollectorIlbParameters)

	// A human-readable description of the rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A filter for mirrored traffic.  If unset, all traffic is mirrored.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	filter?: [...#FilterParameters] @go(Filter,[]FilterParameters)

	// A means of specifying which resources to mirror.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	mirroredResources?: [...#MirroredResourcesParameters] @go(MirroredResources,[]MirroredResourcesParameters)

	// Specifies the mirrored VPC network. Only packets in this network
	// will be mirrored. All mirrored VMs should have a NIC in the given
	// network. All mirrored subnetworks should belong to the given network.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	network?: [...#PacketMirroringNetworkParameters] @go(Network,[]PacketMirroringNetworkParameters)

	// Since only one rule can be active at a time, priority is
	// used to break ties in the case of two rules that apply to
	// the same instances.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The Region in which the created address should reside.
	// If it is not provided, the provider region is used.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#SubnetworksInitParameters: {
	// The URL of the subnetwork where this rule should be active.
	url?: null | string @go(URL,*string)
}

#SubnetworksObservation: {
	// The URL of the subnetwork where this rule should be active.
	url?: null | string @go(URL,*string)
}

#SubnetworksParameters: {
	// The URL of the subnetwork where this rule should be active.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

// PacketMirroringSpec defines the desired state of PacketMirroring
#PacketMirroringSpec: {
	forProvider: #PacketMirroringParameters @go(ForProvider)

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
	initProvider?: #PacketMirroringInitParameters @go(InitProvider)
}

// PacketMirroringStatus defines the observed state of PacketMirroring.
#PacketMirroringStatus: {
	atProvider?: #PacketMirroringObservation @go(AtProvider)
}

// PacketMirroring is the Schema for the PacketMirrorings API. Packet Mirroring mirrors traffic to and from particular VM instances.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#PacketMirroring: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.collectorIlb) || has(self.initProvider.collectorIlb)",message="collectorIlb is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.mirroredResources) || has(self.initProvider.mirroredResources)",message="mirroredResources is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.network) || has(self.initProvider.network)",message="network is a required parameter"
	spec:    #PacketMirroringSpec   @go(Spec)
	status?: #PacketMirroringStatus @go(Status)
}

// PacketMirroringList contains a list of PacketMirrorings
#PacketMirroringList: {
	items: [...#PacketMirroring] @go(Items,[]PacketMirroring)
}
