// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#SecurityGroupEgressObservation: {
	// List of CIDR blocks.
	cidrBlocks?: [...null | string] @go(CidrBlocks,[]*string)

	// Security group description. Cannot be "". NOTE: This field maps to the AWS GroupDescription attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use tags.
	description?: null | string @go(Description,*string)

	// Start port (or ICMP type number if protocol is icmp or icmpv6).
	fromPort?: null | float64 @go(FromPort,*float64)

	// List of IPv6 CIDR blocks.
	ipv6CidrBlocks?: [...null | string] @go(IPv6CidrBlocks,[]*string)

	// List of Prefix List IDs.
	prefixListIds?: [...null | string] @go(PrefixListIds,[]*string)

	// Protocol. If you select a protocol of -1 (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0.  The supported values are defined in the IpProtocol argument on the IpPermission API reference.12.
	protocol?: null | string @go(Protocol,*string)

	// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Whether the security group itself will be added as a source to this ingress rule.
	self?: null | bool @go(Self,*bool)

	// End range port (or ICMP code if protocol is icmp).
	toPort?: null | float64 @go(ToPort,*float64)
}

#SecurityGroupEgressParameters: {
}

#SecurityGroupIngressObservation: {
	// List of CIDR blocks.
	cidrBlocks?: [...null | string] @go(CidrBlocks,[]*string)

	// Security group description. Cannot be "". NOTE: This field maps to the AWS GroupDescription attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use tags.
	description?: null | string @go(Description,*string)

	// Start port (or ICMP type number if protocol is icmp or icmpv6).
	fromPort?: null | float64 @go(FromPort,*float64)

	// List of IPv6 CIDR blocks.
	ipv6CidrBlocks?: [...null | string] @go(IPv6CidrBlocks,[]*string)

	// List of Prefix List IDs.
	prefixListIds?: [...null | string] @go(PrefixListIds,[]*string)

	// Protocol. If you select a protocol of -1 (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0.  The supported values are defined in the IpProtocol argument on the IpPermission API reference.12.
	protocol?: null | string @go(Protocol,*string)

	// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Whether the security group itself will be added as a source to this ingress rule.
	self?: null | bool @go(Self,*bool)

	// End range port (or ICMP code if protocol is icmp).
	toPort?: null | float64 @go(ToPort,*float64)
}

#SecurityGroupIngressParameters: {
}

#SecurityGroupObservation: {
	// ARN of the security group.
	arn?: null | string @go(Arn,*string)

	// Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
	egress?: [...#SecurityGroupEgressObservation] @go(Egress,[]SecurityGroupEgressObservation)

	// ID of the security group.
	id?: null | string @go(ID,*string)

	// Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
	ingress?: [...#SecurityGroupIngressObservation] @go(Ingress,[]SecurityGroupIngressObservation)

	// Owner ID.
	ownerId?: null | string @go(OwnerID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#SecurityGroupParameters: {
	// Security group description. Cannot be "". NOTE: This field maps to the AWS GroupDescription attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use tags.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Name of the security group.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default false.
	// +kubebuilder:validation:Optional
	revokeRulesOnDelete?: null | bool @go(RevokeRulesOnDelete,*bool)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// VPC ID.
	// Defaults to the region's default VPC.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)
}

// SecurityGroupSpec defines the desired state of SecurityGroup
#SecurityGroupSpec: {
	forProvider: #SecurityGroupParameters @go(ForProvider)
}

// SecurityGroupStatus defines the observed state of SecurityGroup.
#SecurityGroupStatus: {
	atProvider?: #SecurityGroupObservation @go(AtProvider)
}

// SecurityGroup is the Schema for the SecurityGroups API. Provides a security group resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SecurityGroup: {
	spec:    #SecurityGroupSpec   @go(Spec)
	status?: #SecurityGroupStatus @go(Status)
}

// SecurityGroupList contains a list of SecurityGroups
#SecurityGroupList: {
	items: [...#SecurityGroup] @go(Items,[]SecurityGroup)
}
