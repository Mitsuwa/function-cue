// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#SubnetObservation_2: {
	// The ARN of the subnet.
	arn?: null | string @go(Arn,*string)

	// The ID of the subnet
	id?: null | string @go(ID,*string)

	// The association ID for the IPv6 CIDR block.
	ipv6CidrBlockAssociationId?: null | string @go(IPv6CidrBlockAssociationID,*string)

	// The ID of the AWS account that owns the subnet.
	ownerId?: null | string @go(OwnerID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SubnetParameters_2: {
	// Specify true to indicate
	// that network interfaces created in the specified subnet should be
	// assigned an IPv6 address. Default is false
	// +kubebuilder:validation:Optional
	assignIpv6AddressOnCreation?: null | bool @go(AssignIPv6AddressOnCreation,*bool)

	// AZ for the subnet.
	// +kubebuilder:validation:Optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead.
	// +kubebuilder:validation:Optional
	availabilityZoneId?: null | string @go(AvailabilityZoneID,*string)

	// The IPv4 CIDR block for the subnet.
	// +kubebuilder:validation:Optional
	cidrBlock?: null | string @go(CidrBlock,*string)

	// The customer owned IPv4 address pool. Typically used with the map_customer_owned_ip_on_launch argument. The outpost_arn argument must be specified when configured.
	// +kubebuilder:validation:Optional
	customerOwnedIpv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: false.
	// +kubebuilder:validation:Optional
	enableDns64?: null | bool @go(EnableDns64,*bool)

	// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: false.
	// +kubebuilder:validation:Optional
	enableResourceNameDnsARecordOnLaunch?: null | bool @go(EnableResourceNameDNSARecordOnLaunch,*bool)

	// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: false.
	// +kubebuilder:validation:Optional
	enableResourceNameDnsAaaaRecordOnLaunch?: null | bool @go(EnableResourceNameDNSAaaaRecordOnLaunch,*bool)

	// The IPv6 network range for the subnet,
	// in CIDR notation. The subnet size must use a /64 prefix length.
	// +kubebuilder:validation:Optional
	ipv6CidrBlock?: null | string @go(IPv6CidrBlock,*string)

	// Indicates whether to create an IPv6-only subnet. Default: false.
	// +kubebuilder:validation:Optional
	ipv6Native?: null | bool @go(IPv6Native,*bool)

	// Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The customer_owned_ipv4_pool and outpost_arn arguments must be specified when set to true. Default is false.
	// +kubebuilder:validation:Optional
	mapCustomerOwnedIpOnLaunch?: null | bool @go(MapCustomerOwnedIPOnLaunch,*bool)

	// Specify true to indicate
	// that instances launched into the subnet should be assigned
	// a public IP address. Default is false.
	// +kubebuilder:validation:Optional
	mapPublicIpOnLaunch?: null | bool @go(MapPublicIPOnLaunch,*bool)

	// The Amazon Resource Name (ARN) of the Outpost.
	// +kubebuilder:validation:Optional
	outpostArn?: null | string @go(OutpostArn,*string)

	// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name, resource-name.
	// +kubebuilder:validation:Optional
	privateDnsHostnameTypeOnLaunch?: null | string @go(PrivateDNSHostnameTypeOnLaunch,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The VPC ID.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)
}

// SubnetSpec defines the desired state of Subnet
#SubnetSpec: {
	forProvider: #SubnetParameters_2 @go(ForProvider)
}

// SubnetStatus defines the observed state of Subnet.
#SubnetStatus: {
	atProvider?: #SubnetObservation_2 @go(AtProvider)
}

// Subnet is the Schema for the Subnets API. Provides an VPC subnet resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Subnet: {
	spec:    #SubnetSpec   @go(Spec)
	status?: #SubnetStatus @go(Status)
}

// SubnetList contains a list of Subnets
#SubnetList: {
	items: [...#Subnet] @go(Items,[]Subnet)
}
