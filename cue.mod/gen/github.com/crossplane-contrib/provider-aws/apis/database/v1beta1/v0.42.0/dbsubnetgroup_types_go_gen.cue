// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/database/v1beta1

package v1beta1

#DBSubnetGroupStateAvailable: "Complete"

// Subnet represents a aws subnet
#Subnet: {
	// Specifies the identifier of the subnet.
	subnetID: string @go(SubnetID)

	// Specifies the status of the subnet.
	subnetStatus: string @go(SubnetStatus)
}

// DBSubnetGroupParameters define the desired state of an AWS VPC Database
// Subnet Group.
#DBSubnetGroupParameters: {
	// Region is the region you'd like your DBSubnetGroup to be created in.
	// +optional
	region?: null | string @go(Region,*string)

	// The description for the DB subnet group.
	description: string @go(Description)

	// The EC2 Subnet IDs for the DB subnet group.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	subnetIds?: [...string] @go(SubnetIDs,[]string)

	// A list of tags. For more information, see Tagging Amazon RDS Resources (http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
	// in the Amazon RDS User Guide.
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)
}

// A DBSubnetGroupSpec defines the desired state of a DBSubnetGroup.
#DBSubnetGroupSpec: {
	forProvider?: #DBSubnetGroupParameters @go(ForProvider)
}

// DBSubnetGroupObservation is the representation of the current state that is observed
#DBSubnetGroupObservation: {
	// State specifies the current state of this DB subnet group.
	state?: string @go(State)

	// ARN is the Amazon Resource Name (ARN) for this DB subnet group.
	arn?: string @go(ARN)

	// Subnets contains a list of Subnet elements.
	subnets?: [...#Subnet] @go(Subnets,[]Subnet)

	// VPCID provides the VPCID of the DB subnet group.
	vpcId?: string @go(VPCID)
}

// A DBSubnetGroupStatus represents the observed state of a DBSubnetGroup.
#DBSubnetGroupStatus: {
	atProvider?: #DBSubnetGroupObservation @go(AtProvider)
}

// A DBSubnetGroup is a managed resource that represents an AWS VPC Database
// Subnet Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DBSubnetGroup: {
	spec:    #DBSubnetGroupSpec   @go(Spec)
	status?: #DBSubnetGroupStatus @go(Status)
}

// DBSubnetGroupList contains a list of DBSubnetGroups
#DBSubnetGroupList: {
	items: [...#DBSubnetGroup] @go(Items,[]DBSubnetGroup)
}
