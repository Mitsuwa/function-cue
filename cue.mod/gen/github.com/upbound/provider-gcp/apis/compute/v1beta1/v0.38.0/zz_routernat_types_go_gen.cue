// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#ActionInitParameters: {
	// A list of URLs of the IP resources used for this NAT rule.
	// These IP addresses must be valid static external IP addresses assigned to the project.
	// This field is used for public NAT.
	sourceNatActiveIps?: [...null | string] @go(SourceNATActiveIps,[]*string)

	// A list of URLs of the IP resources to be drained.
	// These IPs must be valid static external IPs that have been assigned to the NAT.
	// These IPs should be used for updating/patching a NAT rule only.
	// This field is used for public NAT.
	sourceNatDrainIps?: [...null | string] @go(SourceNATDrainIps,[]*string)
}

#ActionObservation: {
	// A list of URLs of the IP resources used for this NAT rule.
	// These IP addresses must be valid static external IP addresses assigned to the project.
	// This field is used for public NAT.
	sourceNatActiveIps?: [...null | string] @go(SourceNATActiveIps,[]*string)

	// A list of URLs of the IP resources to be drained.
	// These IPs must be valid static external IPs that have been assigned to the NAT.
	// These IPs should be used for updating/patching a NAT rule only.
	// This field is used for public NAT.
	sourceNatDrainIps?: [...null | string] @go(SourceNATDrainIps,[]*string)
}

#ActionParameters: {
	// A list of URLs of the IP resources used for this NAT rule.
	// These IP addresses must be valid static external IP addresses assigned to the project.
	// This field is used for public NAT.
	// +kubebuilder:validation:Optional
	sourceNatActiveIps?: [...null | string] @go(SourceNATActiveIps,[]*string)

	// A list of URLs of the IP resources to be drained.
	// These IPs must be valid static external IPs that have been assigned to the NAT.
	// These IPs should be used for updating/patching a NAT rule only.
	// This field is used for public NAT.
	// +kubebuilder:validation:Optional
	sourceNatDrainIps?: [...null | string] @go(SourceNATDrainIps,[]*string)
}

#RouterNATInitParameters: {
	// A list of URLs of the IP resources to be drained. These IPs must be
	// valid static external IPs that have been assigned to the NAT.
	drainNatIps?: [...null | string] @go(DrainNATIps,[]*string)

	// Enable Dynamic Port Allocation.
	// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
	// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
	// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
	// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
	// Mutually exclusive with enableEndpointIndependentMapping.
	enableDynamicPortAllocation?: null | bool @go(EnableDynamicPortAllocation,*bool)

	// Specifies if endpoint independent mapping is enabled. This is enabled by default. For more information
	// see the official documentation.
	enableEndpointIndependentMapping?: null | bool @go(EnableEndpointIndependentMapping,*bool)

	// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
	icmpIdleTimeoutSec?: null | float64 @go(IcmpIdleTimeoutSec,*float64)

	// Configuration for logging on NAT
	// Structure is documented below.
	logConfig?: [...#RouterNATLogConfigInitParameters] @go(LogConfig,[]RouterNATLogConfigInitParameters)

	// Maximum number of ports allocated to a VM from this NAT.
	// This field can only be set when enableDynamicPortAllocation is enabled.
	maxPortsPerVm?: null | float64 @go(MaxPortsPerVM,*float64)

	// Minimum number of ports allocated to a VM from this NAT.
	minPortsPerVm?: null | float64 @go(MinPortsPerVM,*float64)

	// How external IPs should be allocated for this NAT. Valid values are
	// AUTO_ONLY for only allowing NAT IPs allocated by Google Cloud
	// Platform, or MANUAL_ONLY for only user-allocated NAT IP addresses.
	// Possible values are: MANUAL_ONLY, AUTO_ONLY.
	natIpAllocateOption?: null | string @go(NATIPAllocateOption,*string)

	// Self-links of NAT IPs. Only valid if natIpAllocateOption
	// is set to MANUAL_ONLY.
	natIps?: [...null | string] @go(NATIps,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A list of rules associated with this NAT.
	// Structure is documented below.
	rules?: [...#RulesInitParameters] @go(Rules,[]RulesInitParameters)

	// How NAT should be configured per Subnetwork.
	// If ALL_SUBNETWORKS_ALL_IP_RANGES, all of the
	// IP ranges in every Subnetwork are allowed to Nat.
	// If ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, all of the primary IP
	// ranges in every Subnetwork are allowed to Nat.
	// LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat
	// (specified in the field subnetwork below). Note that if this field
	// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
	// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
	// other RouterNat section in any Router for this network in this region.
	// Possible values are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS.
	sourceSubnetworkIpRangesToNat?: null | string @go(SourceSubnetworkIPRangesToNAT,*string)

	// One or more subnetwork NAT configurations. Only used if
	// source_subnetwork_ip_ranges_to_nat is set to LIST_OF_SUBNETWORKS
	// Structure is documented below.
	subnetwork?: [...#SubnetworkInitParameters] @go(Subnetwork,[]SubnetworkInitParameters)

	// Timeout (in seconds) for TCP established connections.
	// Defaults to 1200s if not set.
	tcpEstablishedIdleTimeoutSec?: null | float64 @go(TCPEstablishedIdleTimeoutSec,*float64)

	// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
	// Defaults to 120s if not set.
	tcpTimeWaitTimeoutSec?: null | float64 @go(TCPTimeWaitTimeoutSec,*float64)

	// Timeout (in seconds) for TCP transitory connections.
	// Defaults to 30s if not set.
	tcpTransitoryIdleTimeoutSec?: null | float64 @go(TCPTransitoryIdleTimeoutSec,*float64)

	// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
	udpIdleTimeoutSec?: null | float64 @go(UDPIdleTimeoutSec,*float64)
}

#RouterNATLogConfigInitParameters: {
	// Indicates whether or not to export logs.
	enable?: null | bool @go(Enable,*bool)

	// Specifies the desired filtering of logs on this NAT.
	// Possible values are: ERRORS_ONLY, TRANSLATIONS_ONLY, ALL.
	filter?: null | string @go(Filter,*string)
}

#RouterNATLogConfigObservation: {
	// Indicates whether or not to export logs.
	enable?: null | bool @go(Enable,*bool)

	// Specifies the desired filtering of logs on this NAT.
	// Possible values are: ERRORS_ONLY, TRANSLATIONS_ONLY, ALL.
	filter?: null | string @go(Filter,*string)
}

#RouterNATLogConfigParameters: {
	// Indicates whether or not to export logs.
	// +kubebuilder:validation:Optional
	enable?: null | bool @go(Enable,*bool)

	// Specifies the desired filtering of logs on this NAT.
	// Possible values are: ERRORS_ONLY, TRANSLATIONS_ONLY, ALL.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)
}

#RouterNATObservation: {
	// A list of URLs of the IP resources to be drained. These IPs must be
	// valid static external IPs that have been assigned to the NAT.
	drainNatIps?: [...null | string] @go(DrainNATIps,[]*string)

	// Enable Dynamic Port Allocation.
	// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
	// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
	// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
	// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
	// Mutually exclusive with enableEndpointIndependentMapping.
	enableDynamicPortAllocation?: null | bool @go(EnableDynamicPortAllocation,*bool)

	// Specifies if endpoint independent mapping is enabled. This is enabled by default. For more information
	// see the official documentation.
	enableEndpointIndependentMapping?: null | bool @go(EnableEndpointIndependentMapping,*bool)

	// an identifier for the resource with format {{project}}/{{region}}/{{router}}/{{name}}
	id?: null | string @go(ID,*string)

	// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
	icmpIdleTimeoutSec?: null | float64 @go(IcmpIdleTimeoutSec,*float64)

	// Configuration for logging on NAT
	// Structure is documented below.
	logConfig?: [...#RouterNATLogConfigObservation] @go(LogConfig,[]RouterNATLogConfigObservation)

	// Maximum number of ports allocated to a VM from this NAT.
	// This field can only be set when enableDynamicPortAllocation is enabled.
	maxPortsPerVm?: null | float64 @go(MaxPortsPerVM,*float64)

	// Minimum number of ports allocated to a VM from this NAT.
	minPortsPerVm?: null | float64 @go(MinPortsPerVM,*float64)

	// How external IPs should be allocated for this NAT. Valid values are
	// AUTO_ONLY for only allowing NAT IPs allocated by Google Cloud
	// Platform, or MANUAL_ONLY for only user-allocated NAT IP addresses.
	// Possible values are: MANUAL_ONLY, AUTO_ONLY.
	natIpAllocateOption?: null | string @go(NATIPAllocateOption,*string)

	// Self-links of NAT IPs. Only valid if natIpAllocateOption
	// is set to MANUAL_ONLY.
	natIps?: [...null | string] @go(NATIps,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Region where the router and NAT reside.
	region?: null | string @go(Region,*string)

	// The name of the Cloud Router in which this NAT will be configured.
	router?: null | string @go(Router,*string)

	// A list of rules associated with this NAT.
	// Structure is documented below.
	rules?: [...#RulesObservation] @go(Rules,[]RulesObservation)

	// How NAT should be configured per Subnetwork.
	// If ALL_SUBNETWORKS_ALL_IP_RANGES, all of the
	// IP ranges in every Subnetwork are allowed to Nat.
	// If ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, all of the primary IP
	// ranges in every Subnetwork are allowed to Nat.
	// LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat
	// (specified in the field subnetwork below). Note that if this field
	// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
	// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
	// other RouterNat section in any Router for this network in this region.
	// Possible values are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS.
	sourceSubnetworkIpRangesToNat?: null | string @go(SourceSubnetworkIPRangesToNAT,*string)

	// One or more subnetwork NAT configurations. Only used if
	// source_subnetwork_ip_ranges_to_nat is set to LIST_OF_SUBNETWORKS
	// Structure is documented below.
	subnetwork?: [...#SubnetworkObservation] @go(Subnetwork,[]SubnetworkObservation)

	// Timeout (in seconds) for TCP established connections.
	// Defaults to 1200s if not set.
	tcpEstablishedIdleTimeoutSec?: null | float64 @go(TCPEstablishedIdleTimeoutSec,*float64)

	// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
	// Defaults to 120s if not set.
	tcpTimeWaitTimeoutSec?: null | float64 @go(TCPTimeWaitTimeoutSec,*float64)

	// Timeout (in seconds) for TCP transitory connections.
	// Defaults to 30s if not set.
	tcpTransitoryIdleTimeoutSec?: null | float64 @go(TCPTransitoryIdleTimeoutSec,*float64)

	// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
	udpIdleTimeoutSec?: null | float64 @go(UDPIdleTimeoutSec,*float64)
}

#RouterNATParameters: {
	// A list of URLs of the IP resources to be drained. These IPs must be
	// valid static external IPs that have been assigned to the NAT.
	// +kubebuilder:validation:Optional
	drainNatIps?: [...null | string] @go(DrainNATIps,[]*string)

	// Enable Dynamic Port Allocation.
	// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
	// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
	// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
	// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
	// Mutually exclusive with enableEndpointIndependentMapping.
	// +kubebuilder:validation:Optional
	enableDynamicPortAllocation?: null | bool @go(EnableDynamicPortAllocation,*bool)

	// Specifies if endpoint independent mapping is enabled. This is enabled by default. For more information
	// see the official documentation.
	// +kubebuilder:validation:Optional
	enableEndpointIndependentMapping?: null | bool @go(EnableEndpointIndependentMapping,*bool)

	// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
	// +kubebuilder:validation:Optional
	icmpIdleTimeoutSec?: null | float64 @go(IcmpIdleTimeoutSec,*float64)

	// Configuration for logging on NAT
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	logConfig?: [...#RouterNATLogConfigParameters] @go(LogConfig,[]RouterNATLogConfigParameters)

	// Maximum number of ports allocated to a VM from this NAT.
	// This field can only be set when enableDynamicPortAllocation is enabled.
	// +kubebuilder:validation:Optional
	maxPortsPerVm?: null | float64 @go(MaxPortsPerVM,*float64)

	// Minimum number of ports allocated to a VM from this NAT.
	// +kubebuilder:validation:Optional
	minPortsPerVm?: null | float64 @go(MinPortsPerVM,*float64)

	// How external IPs should be allocated for this NAT. Valid values are
	// AUTO_ONLY for only allowing NAT IPs allocated by Google Cloud
	// Platform, or MANUAL_ONLY for only user-allocated NAT IP addresses.
	// Possible values are: MANUAL_ONLY, AUTO_ONLY.
	// +kubebuilder:validation:Optional
	natIpAllocateOption?: null | string @go(NATIPAllocateOption,*string)

	// Self-links of NAT IPs. Only valid if natIpAllocateOption
	// is set to MANUAL_ONLY.
	// +kubebuilder:validation:Optional
	natIps?: [...null | string] @go(NATIps,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Region where the router and NAT reside.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The name of the Cloud Router in which this NAT will be configured.
	// +crossplane:generate:reference:type=Router
	// +kubebuilder:validation:Optional
	router?: null | string @go(Router,*string)

	// A list of rules associated with this NAT.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	rules?: [...#RulesParameters] @go(Rules,[]RulesParameters)

	// How NAT should be configured per Subnetwork.
	// If ALL_SUBNETWORKS_ALL_IP_RANGES, all of the
	// IP ranges in every Subnetwork are allowed to Nat.
	// If ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, all of the primary IP
	// ranges in every Subnetwork are allowed to Nat.
	// LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat
	// (specified in the field subnetwork below). Note that if this field
	// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
	// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
	// other RouterNat section in any Router for this network in this region.
	// Possible values are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS.
	// +kubebuilder:validation:Optional
	sourceSubnetworkIpRangesToNat?: null | string @go(SourceSubnetworkIPRangesToNAT,*string)

	// One or more subnetwork NAT configurations. Only used if
	// source_subnetwork_ip_ranges_to_nat is set to LIST_OF_SUBNETWORKS
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	subnetwork?: [...#SubnetworkParameters] @go(Subnetwork,[]SubnetworkParameters)

	// Timeout (in seconds) for TCP established connections.
	// Defaults to 1200s if not set.
	// +kubebuilder:validation:Optional
	tcpEstablishedIdleTimeoutSec?: null | float64 @go(TCPEstablishedIdleTimeoutSec,*float64)

	// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
	// Defaults to 120s if not set.
	// +kubebuilder:validation:Optional
	tcpTimeWaitTimeoutSec?: null | float64 @go(TCPTimeWaitTimeoutSec,*float64)

	// Timeout (in seconds) for TCP transitory connections.
	// Defaults to 30s if not set.
	// +kubebuilder:validation:Optional
	tcpTransitoryIdleTimeoutSec?: null | float64 @go(TCPTransitoryIdleTimeoutSec,*float64)

	// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
	// +kubebuilder:validation:Optional
	udpIdleTimeoutSec?: null | float64 @go(UDPIdleTimeoutSec,*float64)
}

#RulesInitParameters: {
	// The action to be enforced for traffic that matches this rule.
	// Structure is documented below.
	action?: [...#ActionInitParameters] @go(Action,[]ActionInitParameters)

	// An optional description of this rule.
	description?: null | string @go(Description,*string)

	// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
	// If it evaluates to true, the corresponding action is enforced.
	// The following examples are valid match expressions for public NAT:
	// "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"
	// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
	// The following example is a valid match expression for private NAT:
	// "nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
	match?: null | string @go(Match,*string)

	// An integer uniquely identifying a rule in the list.
	// The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
	ruleNumber?: null | float64 @go(RuleNumber,*float64)
}

#RulesObservation: {
	// The action to be enforced for traffic that matches this rule.
	// Structure is documented below.
	action?: [...#ActionObservation] @go(Action,[]ActionObservation)

	// An optional description of this rule.
	description?: null | string @go(Description,*string)

	// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
	// If it evaluates to true, the corresponding action is enforced.
	// The following examples are valid match expressions for public NAT:
	// "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"
	// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
	// The following example is a valid match expression for private NAT:
	// "nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
	match?: null | string @go(Match,*string)

	// An integer uniquely identifying a rule in the list.
	// The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
	ruleNumber?: null | float64 @go(RuleNumber,*float64)
}

#RulesParameters: {
	// The action to be enforced for traffic that matches this rule.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	action?: [...#ActionParameters] @go(Action,[]ActionParameters)

	// An optional description of this rule.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
	// If it evaluates to true, the corresponding action is enforced.
	// The following examples are valid match expressions for public NAT:
	// "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"
	// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
	// The following example is a valid match expression for private NAT:
	// "nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
	// +kubebuilder:validation:Optional
	match?: null | string @go(Match,*string)

	// An integer uniquely identifying a rule in the list.
	// The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
	// +kubebuilder:validation:Optional
	ruleNumber?: null | float64 @go(RuleNumber,*float64)
}

#SubnetworkInitParameters: {
	// List of the secondary ranges of the subnetwork that are allowed
	// to use NAT. This can be populated only if
	// LIST_OF_SECONDARY_IP_RANGES is one of the values in
	// sourceIpRangesToNat
	secondaryIpRangeNames?: [...null | string] @go(SecondaryIPRangeNames,[]*string)

	// List of options for which source IPs in the subnetwork
	// should have NAT enabled. Supported values include:
	// ALL_IP_RANGES, LIST_OF_SECONDARY_IP_RANGES,
	// PRIMARY_IP_RANGE.
	sourceIpRangesToNat?: [...null | string] @go(SourceIPRangesToNAT,[]*string)
}

#SubnetworkObservation: {
	// Self-link of subnetwork to NAT
	name?: null | string @go(Name,*string)

	// List of the secondary ranges of the subnetwork that are allowed
	// to use NAT. This can be populated only if
	// LIST_OF_SECONDARY_IP_RANGES is one of the values in
	// sourceIpRangesToNat
	secondaryIpRangeNames?: [...null | string] @go(SecondaryIPRangeNames,[]*string)

	// List of options for which source IPs in the subnetwork
	// should have NAT enabled. Supported values include:
	// ALL_IP_RANGES, LIST_OF_SECONDARY_IP_RANGES,
	// PRIMARY_IP_RANGE.
	sourceIpRangesToNat?: [...null | string] @go(SourceIPRangesToNAT,[]*string)
}

#SubnetworkParameters: {
	// Self-link of subnetwork to NAT
	// +crossplane:generate:reference:type=Subnetwork
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// List of the secondary ranges of the subnetwork that are allowed
	// to use NAT. This can be populated only if
	// LIST_OF_SECONDARY_IP_RANGES is one of the values in
	// sourceIpRangesToNat
	// +kubebuilder:validation:Optional
	secondaryIpRangeNames?: [...null | string] @go(SecondaryIPRangeNames,[]*string)

	// List of options for which source IPs in the subnetwork
	// should have NAT enabled. Supported values include:
	// ALL_IP_RANGES, LIST_OF_SECONDARY_IP_RANGES,
	// PRIMARY_IP_RANGE.
	// +kubebuilder:validation:Optional
	sourceIpRangesToNat: [...null | string] @go(SourceIPRangesToNAT,[]*string)
}

// RouterNATSpec defines the desired state of RouterNAT
#RouterNATSpec: {
	forProvider: #RouterNATParameters @go(ForProvider)

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
	initProvider?: #RouterNATInitParameters @go(InitProvider)
}

// RouterNATStatus defines the observed state of RouterNAT.
#RouterNATStatus: {
	atProvider?: #RouterNATObservation @go(AtProvider)
}

// RouterNAT is the Schema for the RouterNATs API. A NAT service created in a router.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RouterNAT: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.natIpAllocateOption) || (has(self.initProvider) && has(self.initProvider.natIpAllocateOption))",message="spec.forProvider.natIpAllocateOption is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sourceSubnetworkIpRangesToNat) || (has(self.initProvider) && has(self.initProvider.sourceSubnetworkIpRangesToNat))",message="spec.forProvider.sourceSubnetworkIpRangesToNat is a required parameter"
	spec:    #RouterNATSpec   @go(Spec)
	status?: #RouterNATStatus @go(Status)
}

// RouterNATList contains a list of RouterNATs
#RouterNATList: {
	items: [...#RouterNAT] @go(Items,[]RouterNAT)
}
