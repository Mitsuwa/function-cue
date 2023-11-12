// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/management/v1beta1

package v1beta1

#ManagementGroupInitParameters: {
	// A friendly name for this Management Group. If not specified, this will be the same as the name.
	displayName?: null | string @go(DisplayName,*string)

	// A list of Subscription GUIDs which should be assigned to the Management Group.
	subscriptionIds?: [...null | string] @go(SubscriptionIds,[]*string)
}

#ManagementGroupObservation: {
	// A friendly name for this Management Group. If not specified, this will be the same as the name.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the Management Group.
	id?: null | string @go(ID,*string)

	// The ID of the Parent Management Group.
	parentManagementGroupId?: null | string @go(ParentManagementGroupID,*string)

	// A list of Subscription GUIDs which should be assigned to the Management Group.
	subscriptionIds?: [...null | string] @go(SubscriptionIds,[]*string)
}

#ManagementGroupParameters: {
	// A friendly name for this Management Group. If not specified, this will be the same as the name.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the Parent Management Group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/management/v1beta1.ManagementGroup
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	parentManagementGroupId?: null | string @go(ParentManagementGroupID,*string)

	// A list of Subscription GUIDs which should be assigned to the Management Group.
	// +kubebuilder:validation:Optional
	subscriptionIds?: [...null | string] @go(SubscriptionIds,[]*string)
}

// ManagementGroupSpec defines the desired state of ManagementGroup
#ManagementGroupSpec: {
	forProvider: #ManagementGroupParameters @go(ForProvider)

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
	initProvider?: #ManagementGroupInitParameters @go(InitProvider)
}

// ManagementGroupStatus defines the observed state of ManagementGroup.
#ManagementGroupStatus: {
	atProvider?: #ManagementGroupObservation @go(AtProvider)
}

// ManagementGroup is the Schema for the ManagementGroups API. Manages a Management Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagementGroup: {
	spec:    #ManagementGroupSpec   @go(Spec)
	status?: #ManagementGroupStatus @go(Status)
}

// ManagementGroupList contains a list of ManagementGroups
#ManagementGroupList: {
	items: [...#ManagementGroup] @go(Items,[]ManagementGroup)
}
