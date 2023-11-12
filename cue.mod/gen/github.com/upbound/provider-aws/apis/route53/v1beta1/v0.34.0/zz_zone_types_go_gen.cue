// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/route53/v1beta1

package v1beta1

#VPCObservation: {
	// ID of the VPC to associate.
	vpcId?: null | string @go(VPCID,*string)

	// Region of the VPC to associate. Defaults to AWS provider region.
	vpcRegion?: null | string @go(VPCRegion,*string)
}

#VPCParameters: {
	// ID of the VPC to associate.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)

	// Region of the VPC to associate. Defaults to AWS provider region.
	// +kubebuilder:validation:Optional
	vpcRegion?: null | string @go(VPCRegion,*string)
}

#ZoneObservation: {
	// The Amazon Resource Name (ARN) of the Hosted Zone.
	arn?: null | string @go(Arn,*string)

	// A comment for the hosted zone.
	comment?: null | string @go(Comment,*string)

	// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with vpc as delegation sets can only be used for public zones.
	delegationSetId?: null | string @go(DelegationSetID,*string)
	forceDestroy?:    null | bool   @go(ForceDestroy,*bool)
	id?:              null | string @go(ID,*string)

	// This is the name of the hosted zone.
	name?: null | string @go(Name,*string)

	// A list of name servers in associated (or default) delegation set.
	// Find more about delegation sets in AWS docs.
	nameServers?: [...null | string] @go(NameServers,[]*string)

	// The Route 53 name server that created the SOA record.
	primaryNameServer?: null | string @go(PrimaryNameServer,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the delegation_set_id argument in this resource and any aws_route53_zone_association resource specifying the same zone ID. Detailed below.
	vpc?: [...#VPCObservation] @go(VPC,[]VPCObservation)

	// The Hosted Zone ID. This can be referenced by zone records.
	zoneId?: null | string @go(ZoneID,*string)
}

#ZoneParameters: {
	// A comment for the hosted zone.
	// +kubebuilder:validation:Optional
	comment?: null | string @go(Comment,*string)

	// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with vpc as delegation sets can only be used for public zones.
	// +crossplane:generate:reference:type=DelegationSet
	// +kubebuilder:validation:Optional
	delegationSetId?: null | string @go(DelegationSetID,*string)

	// +kubebuilder:validation:Optional
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// This is the name of the hosted zone.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the delegation_set_id argument in this resource and any aws_route53_zone_association resource specifying the same zone ID. Detailed below.
	// +kubebuilder:validation:Optional
	vpc?: [...#VPCParameters] @go(VPC,[]VPCParameters)
}

// ZoneSpec defines the desired state of Zone
#ZoneSpec: {
	forProvider: #ZoneParameters @go(ForProvider)
}

// ZoneStatus defines the observed state of Zone.
#ZoneStatus: {
	atProvider?: #ZoneObservation @go(AtProvider)
}

// Zone is the Schema for the Zones API. Manages a Route53 Hosted Zone
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Zone: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #ZoneSpec   @go(Spec)
	status?: #ZoneStatus @go(Status)
}

// ZoneList contains a list of Zones
#ZoneList: {
	items: [...#Zone] @go(Items,[]Zone)
}
