// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/route53/v1beta1

package v1beta1

#VPCAssociationAuthorizationObservation: {
	// The calculated unique identifier for the association.
	id?: null | string @go(ID,*string)

	// The VPC to authorize for association with the private hosted zone.
	vpcId?: null | string @go(VPCID,*string)

	// The VPC's region. Defaults to the region of the AWS provider.
	vpcRegion?: null | string @go(VPCRegion,*string)

	// The ID of the private hosted zone that you want to authorize associating a VPC with.
	zoneId?: null | string @go(ZoneID,*string)
}

#VPCAssociationAuthorizationParameters: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The VPC to authorize for association with the private hosted zone.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.VPC
	// +kubebuilder:validation:Optional
	vpcId?: null | string @go(VPCID,*string)

	// The VPC's region. Defaults to the region of the AWS provider.
	// +kubebuilder:validation:Optional
	vpcRegion?: null | string @go(VPCRegion,*string)

	// The ID of the private hosted zone that you want to authorize associating a VPC with.
	// +crossplane:generate:reference:type=Zone
	// +kubebuilder:validation:Optional
	zoneId?: null | string @go(ZoneID,*string)
}

// VPCAssociationAuthorizationSpec defines the desired state of VPCAssociationAuthorization
#VPCAssociationAuthorizationSpec: {
	forProvider: #VPCAssociationAuthorizationParameters @go(ForProvider)
}

// VPCAssociationAuthorizationStatus defines the observed state of VPCAssociationAuthorization.
#VPCAssociationAuthorizationStatus: {
	atProvider?: #VPCAssociationAuthorizationObservation @go(AtProvider)
}

// VPCAssociationAuthorization is the Schema for the VPCAssociationAuthorizations API. Authorizes a VPC in a different account to be associated with a local Route53 Hosted Zone
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPCAssociationAuthorization: {
	spec:    #VPCAssociationAuthorizationSpec   @go(Spec)
	status?: #VPCAssociationAuthorizationStatus @go(Status)
}

// VPCAssociationAuthorizationList contains a list of VPCAssociationAuthorizations
#VPCAssociationAuthorizationList: {
	items: [...#VPCAssociationAuthorization] @go(Items,[]VPCAssociationAuthorization)
}
