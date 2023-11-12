// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#TransitGatewayRouteTableObservation_2: {
	// EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
	arn?: null | string @go(Arn,*string)

	// Boolean whether this is the default association route table for the EC2 Transit Gateway.
	defaultAssociationRouteTable?: null | bool @go(DefaultAssociationRouteTable,*bool)

	// Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
	defaultPropagationRouteTable?: null | bool @go(DefaultPropagationRouteTable,*bool)

	// EC2 Transit Gateway Route Table identifier
	id?: null | string @go(ID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Identifier of EC2 Transit Gateway.
	transitGatewayId?: null | string @go(TransitGatewayID,*string)
}

#TransitGatewayRouteTableParameters_2: {
	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Identifier of EC2 Transit Gateway.
	// +crossplane:generate:reference:type=TransitGateway
	// +kubebuilder:validation:Optional
	transitGatewayId?: null | string @go(TransitGatewayID,*string)
}

// TransitGatewayRouteTableSpec defines the desired state of TransitGatewayRouteTable
#TransitGatewayRouteTableSpec: {
	forProvider: #TransitGatewayRouteTableParameters_2 @go(ForProvider)
}

// TransitGatewayRouteTableStatus defines the observed state of TransitGatewayRouteTable.
#TransitGatewayRouteTableStatus: {
	atProvider?: #TransitGatewayRouteTableObservation_2 @go(AtProvider)
}

// TransitGatewayRouteTable is the Schema for the TransitGatewayRouteTables API. Manages an EC2 Transit Gateway Route Table
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#TransitGatewayRouteTable: {
	spec:    #TransitGatewayRouteTableSpec   @go(Spec)
	status?: #TransitGatewayRouteTableStatus @go(Status)
}

// TransitGatewayRouteTableList contains a list of TransitGatewayRouteTables
#TransitGatewayRouteTableList: {
	items: [...#TransitGatewayRouteTable] @go(Items,[]TransitGatewayRouteTable)
}
