// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#SecondaryIPRangeInitParameters: {
	// The range of IP addresses belonging to this subnetwork secondary
	// range. Provide this property when you create the subnetwork.
	// Ranges must be unique and non-overlapping with all primary and
	// secondary IP ranges within a network. Only IPv4 is supported.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The name associated with this subnetwork secondary range, used
	// when adding an alias IP range to a VM instance. The name must
	// be 1-63 characters long, and comply with RFC1035. The name
	// must be unique within the subnetwork.
	rangeName?: null | string @go(RangeName,*string)
}

#SecondaryIPRangeObservation: {
	// The range of IP addresses belonging to this subnetwork secondary
	// range. Provide this property when you create the subnetwork.
	// Ranges must be unique and non-overlapping with all primary and
	// secondary IP ranges within a network. Only IPv4 is supported.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The name associated with this subnetwork secondary range, used
	// when adding an alias IP range to a VM instance. The name must
	// be 1-63 characters long, and comply with RFC1035. The name
	// must be unique within the subnetwork.
	rangeName?: null | string @go(RangeName,*string)
}

#SecondaryIPRangeParameters: {
	// The range of IP addresses belonging to this subnetwork secondary
	// range. Provide this property when you create the subnetwork.
	// Ranges must be unique and non-overlapping with all primary and
	// secondary IP ranges within a network. Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The name associated with this subnetwork secondary range, used
	// when adding an alias IP range to a VM instance. The name must
	// be 1-63 characters long, and comply with RFC1035. The name
	// must be unique within the subnetwork.
	// +kubebuilder:validation:Optional
	rangeName?: null | string @go(RangeName,*string)
}

#SubnetworkInitParameters_2: {
	// An optional description of this resource. Provide this property when
	// you create the resource. This field can be set only at resource
	// creation time.
	description?: null | string @go(Description,*string)

	// The range of internal addresses that are owned by this subnetwork.
	// Provide this property when you create the subnetwork. For example,
	// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
	// non-overlapping within a network. Only IPv4 is supported.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
	// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
	// cannot enable direct path.
	// Possible values are: EXTERNAL, INTERNAL.
	ipv6AccessType?: null | string @go(IPv6AccessType,*string)

	// Denotes the logging options for the subnetwork flow logs. If logging is enabled
	// logs will be exported to Stackdriver. This field cannot be set if the purpose of this
	// subnetwork is INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY
	// Structure is documented below.
	logConfig?: [...#SubnetworkLogConfigInitParameters] @go(LogConfig,[]SubnetworkLogConfigInitParameters)

	// When enabled, VMs in this subnetwork without external IP addresses can
	// access Google APIs and services by using Private Google Access.
	privateIpGoogleAccess?: null | bool @go(PrivateIPGoogleAccess,*bool)

	// The private IPv6 google access type for the VMs in this subnet.
	privateIpv6GoogleAccess?: null | string @go(PrivateIPv6GoogleAccess,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The purpose of the resource. This field can be either PRIVATE_RFC_1918, INTERNAL_HTTPS_LOAD_BALANCER, REGIONAL_MANAGED_PROXY, GLOBAL_MANAGED_PROXY or PRIVATE_SERVICE_CONNECT.
	// A subnetwork with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing.
	// A subnetwork in a given region with purpose set to REGIONAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the regional Envoy-based load balancers.
	// A subnetwork in a given region with purpose set to GLOBAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
	// A subnetwork with purpose set to PRIVATE_SERVICE_CONNECT reserves the subnet for hosting a Private Service Connect published service.
	// If unspecified, the purpose defaults to PRIVATE_RFC_1918.
	// The enableFlowLogs field isn't supported with the purpose field set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY.
	purpose?: null | string @go(Purpose,*string)

	// The role of subnetwork.
	// The value can be set to ACTIVE or BACKUP.
	// An ACTIVE subnetwork is one that is currently being used.
	// A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining.
	// Subnetwork role must be specified when purpose is set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY.
	// Possible values are: ACTIVE, BACKUP.
	role?: null | string @go(Role,*string)

	// An array of configurations for secondary IP ranges for VM instances
	// contained in this subnetwork. The primary IP of such VM must belong
	// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
	// to either primary or secondary ranges.
	// Note: This field uses attr-as-block mode to avoid
	// breaking users during the 0.12 upgrade. To explicitly send a list
	// of zero objects you must use the following syntax:
	// example=[]
	// For more details about this behavior, see this section.
	// Structure is documented below.
	secondaryIpRange?: [...#SecondaryIPRangeInitParameters] @go(SecondaryIPRange,[]SecondaryIPRangeInitParameters)

	// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
	// If not specified IPV4_ONLY will be used.
	// Possible values are: IPV4_ONLY, IPV4_IPV6.
	stackType?: null | string @go(StackType,*string)
}

#SubnetworkLogConfigInitParameters: {
	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Toggles the aggregation interval for collecting flow logs. Increasing the
	// interval time will reduce the amount of generated flow logs for long
	// lasting connections. Default is an interval of 5 seconds per connection.
	// Default value is INTERVAL_5_SEC.
	// Possible values are: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
	aggregationInterval?: null | string @go(AggregationInterval,*string)

	// Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
	// https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
	// The default value is 'true', which evaluates to include everything.
	filterExpr?: null | string @go(FilterExpr,*string)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// The value of the field must be in [0, 1]. Set the sampling rate of VPC
	// flow logs within the subnetwork where 1.0 means all collected logs are
	// reported and 0.0 means no logs are reported. Default is 0.5 which means
	// half of all collected logs are reported.
	flowSampling?: null | float64 @go(FlowSampling,*float64)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Configures whether metadata fields should be added to the reported VPC
	// flow logs.
	// Default value is INCLUDE_ALL_METADATA.
	// Possible values are: EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA.
	metadata?: null | string @go(Metadata,*string)

	// List of metadata fields that should be added to reported logs.
	// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" is set to CUSTOM_METADATA.
	metadataFields?: [...null | string] @go(MetadataFields,[]*string)
}

#SubnetworkLogConfigObservation: {
	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Toggles the aggregation interval for collecting flow logs. Increasing the
	// interval time will reduce the amount of generated flow logs for long
	// lasting connections. Default is an interval of 5 seconds per connection.
	// Default value is INTERVAL_5_SEC.
	// Possible values are: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
	aggregationInterval?: null | string @go(AggregationInterval,*string)

	// Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
	// https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
	// The default value is 'true', which evaluates to include everything.
	filterExpr?: null | string @go(FilterExpr,*string)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// The value of the field must be in [0, 1]. Set the sampling rate of VPC
	// flow logs within the subnetwork where 1.0 means all collected logs are
	// reported and 0.0 means no logs are reported. Default is 0.5 which means
	// half of all collected logs are reported.
	flowSampling?: null | float64 @go(FlowSampling,*float64)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Configures whether metadata fields should be added to the reported VPC
	// flow logs.
	// Default value is INCLUDE_ALL_METADATA.
	// Possible values are: EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA.
	metadata?: null | string @go(Metadata,*string)

	// List of metadata fields that should be added to reported logs.
	// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" is set to CUSTOM_METADATA.
	metadataFields?: [...null | string] @go(MetadataFields,[]*string)
}

#SubnetworkLogConfigParameters: {
	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Toggles the aggregation interval for collecting flow logs. Increasing the
	// interval time will reduce the amount of generated flow logs for long
	// lasting connections. Default is an interval of 5 seconds per connection.
	// Default value is INTERVAL_5_SEC.
	// Possible values are: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
	// +kubebuilder:validation:Optional
	aggregationInterval?: null | string @go(AggregationInterval,*string)

	// Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
	// https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
	// The default value is 'true', which evaluates to include everything.
	// +kubebuilder:validation:Optional
	filterExpr?: null | string @go(FilterExpr,*string)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// The value of the field must be in [0, 1]. Set the sampling rate of VPC
	// flow logs within the subnetwork where 1.0 means all collected logs are
	// reported and 0.0 means no logs are reported. Default is 0.5 which means
	// half of all collected logs are reported.
	// +kubebuilder:validation:Optional
	flowSampling?: null | float64 @go(FlowSampling,*float64)

	// Can only be specified if VPC flow logging for this subnetwork is enabled.
	// Configures whether metadata fields should be added to the reported VPC
	// flow logs.
	// Default value is INCLUDE_ALL_METADATA.
	// Possible values are: EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA.
	// +kubebuilder:validation:Optional
	metadata?: null | string @go(Metadata,*string)

	// List of metadata fields that should be added to reported logs.
	// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" is set to CUSTOM_METADATA.
	// +kubebuilder:validation:Optional
	metadataFields?: [...null | string] @go(MetadataFields,[]*string)
}

#SubnetworkObservation_2: {
	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when
	// you create the resource. This field can be set only at resource
	// creation time.
	description?: null | string @go(Description,*string)

	// The range of external IPv6 addresses that are owned by this subnetwork.
	externalIpv6Prefix?: null | string @go(ExternalIPv6Prefix,*string)
	fingerprint?:        null | string @go(Fingerprint,*string)

	// The gateway address for default routes to reach destination addresses
	// outside this subnetwork.
	gatewayAddress?: null | string @go(GatewayAddress,*string)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/subnetworks/{{name}}
	id?: null | string @go(ID,*string)

	// The range of internal addresses that are owned by this subnetwork.
	// Provide this property when you create the subnetwork. For example,
	// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
	// non-overlapping within a network. Only IPv4 is supported.
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
	// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
	// cannot enable direct path.
	// Possible values are: EXTERNAL, INTERNAL.
	ipv6AccessType?: null | string @go(IPv6AccessType,*string)

	// The range of internal IPv6 addresses that are owned by this subnetwork.
	ipv6CidrRange?: null | string @go(IPv6CidrRange,*string)

	// Denotes the logging options for the subnetwork flow logs. If logging is enabled
	// logs will be exported to Stackdriver. This field cannot be set if the purpose of this
	// subnetwork is INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY
	// Structure is documented below.
	logConfig?: [...#SubnetworkLogConfigObservation] @go(LogConfig,[]SubnetworkLogConfigObservation)

	// The network this subnet belongs to.
	// Only networks that are in the distributed mode can have subnetworks.
	network?: null | string @go(Network,*string)

	// When enabled, VMs in this subnetwork without external IP addresses can
	// access Google APIs and services by using Private Google Access.
	privateIpGoogleAccess?: null | bool @go(PrivateIPGoogleAccess,*bool)

	// The private IPv6 google access type for the VMs in this subnet.
	privateIpv6GoogleAccess?: null | string @go(PrivateIPv6GoogleAccess,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The purpose of the resource. This field can be either PRIVATE_RFC_1918, INTERNAL_HTTPS_LOAD_BALANCER, REGIONAL_MANAGED_PROXY, GLOBAL_MANAGED_PROXY or PRIVATE_SERVICE_CONNECT.
	// A subnetwork with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing.
	// A subnetwork in a given region with purpose set to REGIONAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the regional Envoy-based load balancers.
	// A subnetwork in a given region with purpose set to GLOBAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
	// A subnetwork with purpose set to PRIVATE_SERVICE_CONNECT reserves the subnet for hosting a Private Service Connect published service.
	// If unspecified, the purpose defaults to PRIVATE_RFC_1918.
	// The enableFlowLogs field isn't supported with the purpose field set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY.
	purpose?: null | string @go(Purpose,*string)

	// The GCP region for this subnetwork.
	region?: null | string @go(Region,*string)

	// The role of subnetwork.
	// The value can be set to ACTIVE or BACKUP.
	// An ACTIVE subnetwork is one that is currently being used.
	// A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining.
	// Subnetwork role must be specified when purpose is set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY.
	// Possible values are: ACTIVE, BACKUP.
	role?: null | string @go(Role,*string)

	// An array of configurations for secondary IP ranges for VM instances
	// contained in this subnetwork. The primary IP of such VM must belong
	// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
	// to either primary or secondary ranges.
	// Note: This field uses attr-as-block mode to avoid
	// breaking users during the 0.12 upgrade. To explicitly send a list
	// of zero objects you must use the following syntax:
	// example=[]
	// For more details about this behavior, see this section.
	// Structure is documented below.
	secondaryIpRange?: [...#SecondaryIPRangeObservation] @go(SecondaryIPRange,[]SecondaryIPRangeObservation)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
	// If not specified IPV4_ONLY will be used.
	// Possible values are: IPV4_ONLY, IPV4_IPV6.
	stackType?: null | string @go(StackType,*string)
}

#SubnetworkParameters_2: {
	// An optional description of this resource. Provide this property when
	// you create the resource. This field can be set only at resource
	// creation time.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The range of internal addresses that are owned by this subnetwork.
	// Provide this property when you create the subnetwork. For example,
	// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
	// non-overlapping within a network. Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
	// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
	// cannot enable direct path.
	// Possible values are: EXTERNAL, INTERNAL.
	// +kubebuilder:validation:Optional
	ipv6AccessType?: null | string @go(IPv6AccessType,*string)

	// Denotes the logging options for the subnetwork flow logs. If logging is enabled
	// logs will be exported to Stackdriver. This field cannot be set if the purpose of this
	// subnetwork is INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	logConfig?: [...#SubnetworkLogConfigParameters] @go(LogConfig,[]SubnetworkLogConfigParameters)

	// The network this subnet belongs to.
	// Only networks that are in the distributed mode can have subnetworks.
	// +crossplane:generate:reference:type=Network
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// When enabled, VMs in this subnetwork without external IP addresses can
	// access Google APIs and services by using Private Google Access.
	// +kubebuilder:validation:Optional
	privateIpGoogleAccess?: null | bool @go(PrivateIPGoogleAccess,*bool)

	// The private IPv6 google access type for the VMs in this subnet.
	// +kubebuilder:validation:Optional
	privateIpv6GoogleAccess?: null | string @go(PrivateIPv6GoogleAccess,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The purpose of the resource. This field can be either PRIVATE_RFC_1918, INTERNAL_HTTPS_LOAD_BALANCER, REGIONAL_MANAGED_PROXY, GLOBAL_MANAGED_PROXY or PRIVATE_SERVICE_CONNECT.
	// A subnetwork with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing.
	// A subnetwork in a given region with purpose set to REGIONAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the regional Envoy-based load balancers.
	// A subnetwork in a given region with purpose set to GLOBAL_MANAGED_PROXY is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
	// A subnetwork with purpose set to PRIVATE_SERVICE_CONNECT reserves the subnet for hosting a Private Service Connect published service.
	// If unspecified, the purpose defaults to PRIVATE_RFC_1918.
	// The enableFlowLogs field isn't supported with the purpose field set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY.
	// +kubebuilder:validation:Optional
	purpose?: null | string @go(Purpose,*string)

	// The GCP region for this subnetwork.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The role of subnetwork.
	// The value can be set to ACTIVE or BACKUP.
	// An ACTIVE subnetwork is one that is currently being used.
	// A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining.
	// Subnetwork role must be specified when purpose is set to INTERNAL_HTTPS_LOAD_BALANCER or REGIONAL_MANAGED_PROXY.
	// Possible values are: ACTIVE, BACKUP.
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// An array of configurations for secondary IP ranges for VM instances
	// contained in this subnetwork. The primary IP of such VM must belong
	// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
	// to either primary or secondary ranges.
	// Note: This field uses attr-as-block mode to avoid
	// breaking users during the 0.12 upgrade. To explicitly send a list
	// of zero objects you must use the following syntax:
	// example=[]
	// For more details about this behavior, see this section.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	secondaryIpRange?: [...#SecondaryIPRangeParameters] @go(SecondaryIPRange,[]SecondaryIPRangeParameters)

	// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
	// If not specified IPV4_ONLY will be used.
	// Possible values are: IPV4_ONLY, IPV4_IPV6.
	// +kubebuilder:validation:Optional
	stackType?: null | string @go(StackType,*string)
}

// SubnetworkSpec defines the desired state of Subnetwork
#SubnetworkSpec: {
	forProvider: #SubnetworkParameters_2 @go(ForProvider)

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
	initProvider?: #SubnetworkInitParameters_2 @go(InitProvider)
}

// SubnetworkStatus defines the observed state of Subnetwork.
#SubnetworkStatus: {
	atProvider?: #SubnetworkObservation_2 @go(AtProvider)
}

// Subnetwork is the Schema for the Subnetworks API. A VPC network is a virtual version of the traditional physical networks that exist within and between physical data centers.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Subnetwork: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ipCidrRange) || (has(self.initProvider) && has(self.initProvider.ipCidrRange))",message="spec.forProvider.ipCidrRange is a required parameter"
	spec:    #SubnetworkSpec   @go(Spec)
	status?: #SubnetworkStatus @go(Status)
}

// SubnetworkList contains a list of Subnetworks
#SubnetworkList: {
	items: [...#Subnetwork] @go(Items,[]Subnetwork)
}
