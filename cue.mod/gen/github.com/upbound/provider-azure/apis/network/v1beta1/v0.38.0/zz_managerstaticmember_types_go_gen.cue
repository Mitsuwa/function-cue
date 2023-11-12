// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#ManagerStaticMemberInitParameters: {
}

#ManagerStaticMemberObservation: {
	// The ID of the Network Manager Static Member.
	id?: null | string @go(ID,*string)

	// Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
	networkGroupId?: null | string @go(NetworkGroupID,*string)

	// The region of the Network Manager Static Member.
	region?: null | string @go(Region,*string)

	// Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created.
	targetVirtualNetworkId?: null | string @go(TargetVirtualNetworkID,*string)
}

#ManagerStaticMemberParameters: {
	// Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.ManagerNetworkGroup
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkGroupId?: null | string @go(NetworkGroupID,*string)

	// Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created.
	// +crossplane:generate:reference:type=VirtualNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetVirtualNetworkId?: null | string @go(TargetVirtualNetworkID,*string)
}

// ManagerStaticMemberSpec defines the desired state of ManagerStaticMember
#ManagerStaticMemberSpec: {
	forProvider: #ManagerStaticMemberParameters @go(ForProvider)

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
	initProvider?: #ManagerStaticMemberInitParameters @go(InitProvider)
}

// ManagerStaticMemberStatus defines the observed state of ManagerStaticMember.
#ManagerStaticMemberStatus: {
	atProvider?: #ManagerStaticMemberObservation @go(AtProvider)
}

// ManagerStaticMember is the Schema for the ManagerStaticMembers API. Manages a Network Manager Static Member.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagerStaticMember: {
	spec:    #ManagerStaticMemberSpec   @go(Spec)
	status?: #ManagerStaticMemberStatus @go(Status)
}

// ManagerStaticMemberList contains a list of ManagerStaticMembers
#ManagerStaticMemberList: {
	items: [...#ManagerStaticMember] @go(Items,[]ManagerStaticMember)
}
