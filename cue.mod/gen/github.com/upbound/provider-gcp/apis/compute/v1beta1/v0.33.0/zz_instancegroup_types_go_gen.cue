// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#InstanceGroupObservation: {
	// An optional textual description of the instance
	// group.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}/zones/{{zone}}/instanceGroups/{{name}}
	id?: null | string @go(ID,*string)

	// The list of instances in the group, in self_link format.
	// When adding instances they must all be in the same network and zone as the instance group.
	instances?: [...null | string] @go(Instances,[]*string)

	// The named port configuration. See the section below
	// for details on configuration. Structure is documented below.
	namedPort?: [...#NamedPortObservation] @go(NamedPort,[]NamedPortObservation)

	// The URL of the network the instance group is in. If
	// this is different from the network where the instances are in, the creation
	// fails. Defaults to the network where the instances are in (if neither
	// network nor instances is specified, this field will be blank).
	network?: null | string @go(Network,*string)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// The number of instances in the group.
	size?: null | float64 @go(Size,*float64)

	// The zone that this instance group should be created in.
	zone?: null | string @go(Zone,*string)
}

#InstanceGroupParameters: {
	// An optional textual description of the instance
	// group.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The list of instances in the group, in self_link format.
	// When adding instances they must all be in the same network and zone as the instance group.
	// +kubebuilder:validation:Optional
	instances?: [...null | string] @go(Instances,[]*string)

	// The named port configuration. See the section below
	// for details on configuration. Structure is documented below.
	// +kubebuilder:validation:Optional
	namedPort?: [...#NamedPortParameters] @go(NamedPort,[]NamedPortParameters)

	// The URL of the network the instance group is in. If
	// this is different from the network where the instances are in, the creation
	// fails. Defaults to the network where the instances are in (if neither
	// network nor instances is specified, this field will be blank).
	// +crossplane:generate:reference:type=Network
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.SelfLinkExtractor()
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The zone that this instance group should be created in.
	// +kubebuilder:validation:Required
	zone?: null | string @go(Zone,*string)
}

#NamedPortObservation: {
	// The name which the port will be mapped to.
	name?: null | string @go(Name,*string)

	// The port number to map the name to.
	port?: null | float64 @go(Port,*float64)
}

#NamedPortParameters: {
	// The name which the port will be mapped to.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The port number to map the name to.
	// +kubebuilder:validation:Required
	port?: null | float64 @go(Port,*float64)
}

// InstanceGroupSpec defines the desired state of InstanceGroup
#InstanceGroupSpec: {
	forProvider: #InstanceGroupParameters @go(ForProvider)
}

// InstanceGroupStatus defines the observed state of InstanceGroup.
#InstanceGroupStatus: {
	atProvider?: #InstanceGroupObservation @go(AtProvider)
}

// InstanceGroup is the Schema for the InstanceGroups API. Manages an Instance Group within GCE.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#InstanceGroup: {
	spec:    #InstanceGroupSpec   @go(Spec)
	status?: #InstanceGroupStatus @go(Status)
}

// InstanceGroupList contains a list of InstanceGroups
#InstanceGroupList: {
	items: [...#InstanceGroup] @go(Items,[]InstanceGroup)
}
