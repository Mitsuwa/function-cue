// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/elbv2/v1beta1

package v1beta1

#AccessLogsObservation: {
}

#AccessLogsParameters: {
	// The S3 bucket name to store the logs in.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/s3/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// Boolean to enable / disable access_logs. Defaults to false, even when bucket is specified.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The S3 bucket prefix. Logs are stored in the root if not configured.
	// +kubebuilder:validation:Optional
	prefix?: null | string @go(Prefix,*string)
}

#LBObservation: {
	// The ARN of the load balancer (matches id).
	arn?: null | string @go(Arn,*string)

	// The ARN suffix for use with CloudWatch Metrics.
	arnSuffix?: null | string @go(ArnSuffix,*string)

	// The DNS name of the load balancer.
	dnsName?: null | string @go(DNSName,*string)

	// The ARN of the load balancer (matches arn).
	id?: null | string @go(ID,*string)

	// A subnet mapping block as documented below.
	// +kubebuilder:validation:Optional
	subnetMapping?: [...#SubnetMappingObservation] @go(SubnetMapping,[]SubnetMappingObservation)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The ARN of the load balancer (matches arn).
	vpcId?: null | string @go(VPCID,*string)

	// The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record).
	zoneId?: null | string @go(ZoneID,*string)
}

#LBParameters: {
	// An Access Logs block. Access Logs documented below.
	// +kubebuilder:validation:Optional
	accessLogs?: [...#AccessLogsParameters] @go(AccessLogs,[]AccessLogsParameters)

	// The ID of the customer owned ipv4 pool to use for this load balancer.
	// +kubebuilder:validation:Optional
	customerOwnedIpv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest.
	// +kubebuilder:validation:Optional
	desyncMitigationMode?: null | string @go(DesyncMitigationMode,*string)

	// Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type application.
	// +kubebuilder:validation:Optional
	dropInvalidHeaderFields?: null | bool @go(DropInvalidHeaderFields,*bool)

	// If true, cross-zone load balancing of the load balancer will be enabled. For network and gateway type load balancers, this feature is disabled by default (false). For application load balancer this feature is always enabled (true) and cannot be disabled. Defaults to false.
	// +kubebuilder:validation:Optional
	enableCrossZoneLoadBalancing?: null | bool @go(EnableCrossZoneLoadBalancing,*bool)

	// If true, deletion of the load balancer will be disabled via the AWS API. Defaults to false.
	// +kubebuilder:validation:Optional
	enableDeletionProtection?: null | bool @go(EnableDeletionProtection,*bool)

	// Indicates whether HTTP/2 is enabled in application load balancers. Defaults to true.
	// +kubebuilder:validation:Optional
	enableHttp2?: null | bool @go(EnableHttp2,*bool)

	// Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to false.
	// +kubebuilder:validation:Optional
	enableWafFailOpen?: null | bool @go(EnableWafFailOpen,*bool)

	// The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack.
	// +kubebuilder:validation:Optional
	ipAddressType?: null | string @go(IPAddressType,*string)

	// The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60.
	// +kubebuilder:validation:Optional
	idleTimeout?: null | float64 @go(IdleTimeout,*float64)

	// If true, the LB will be internal.
	// +kubebuilder:validation:Optional
	internal?: null | bool @go(Internal,*bool)

	// The type of load balancer to create. Possible values are application, gateway, or network. The default value is application.
	// +kubebuilder:validation:Optional
	loadBalancerType?: null | string @go(LoadBalancerType,*string)

	// The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,
	// must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to false.
	// +kubebuilder:validation:Optional
	preserveHostHeader?: null | bool @go(PreserveHostHeader,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupSelector
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// A subnet mapping block as documented below.
	// +kubebuilder:validation:Optional
	subnetMapping?: [...#SubnetMappingParameters] @go(SubnetMapping,[]SubnetMappingParameters)

	// A list of subnet IDs to attach to the LB. Subnets
	// cannot be updated for Load Balancers of type network. Changing this value
	// for load balancers of type network will force a recreation of the resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetSelector
	// +kubebuilder:validation:Optional
	subnets?: [...null | string] @go(Subnets,[]*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#SubnetMappingObservation: {
	// ID of the Outpost containing the load balancer.
	outpostId?: null | string @go(OutpostID,*string)
}

#SubnetMappingParameters: {
	// The allocation ID of the Elastic IP address for an internet-facing load balancer.
	// +kubebuilder:validation:Optional
	allocationId?: null | string @go(AllocationID,*string)

	// The IPv6 address. You associate IPv6 CIDR blocks with your VPC and choose the subnets where you launch both internet-facing and internal Application Load Balancers or Network Load Balancers.
	// +kubebuilder:validation:Optional
	ipv6Address?: null | string @go(IPv6Address,*string)

	// The private IPv4 address for an internal load balancer.
	// +kubebuilder:validation:Optional
	privateIpv4Address?: null | string @go(PrivateIPv4Address,*string)

	// ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// LBSpec defines the desired state of LB
#LBSpec: {
	forProvider: #LBParameters @go(ForProvider)
}

// LBStatus defines the observed state of LB.
#LBStatus: {
	atProvider?: #LBObservation @go(AtProvider)
}

// LB is the Schema for the LBs API. Provides a Load Balancer resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#LB: {
	spec:    #LBSpec   @go(Spec)
	status?: #LBStatus @go(Status)
}

// LBList contains a list of LBs
#LBList: {
	items: [...#LB] @go(Items,[]LB)
}
