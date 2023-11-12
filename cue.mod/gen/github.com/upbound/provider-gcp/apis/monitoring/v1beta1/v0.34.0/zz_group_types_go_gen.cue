// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/monitoring/v1beta1

package v1beta1

#GroupObservation: {
	// A user-assigned name for this group, used only for display
	// purposes.
	displayName?: null | string @go(DisplayName,*string)

	// The filter used to determine which monitored resources
	// belong to this group.
	filter?: null | string @go(Filter,*string)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// If true, the members of this group are considered to be a
	// cluster. The system can perform additional analysis on
	// groups that are clusters.
	isCluster?: null | bool @go(IsCluster,*bool)

	// A unique identifier for this group. The format is
	// "projects/{project_id_or_number}/groups/{group_id}".
	name?: null | string @go(Name,*string)

	// The name of the group's parent, if it has one. The format is
	// "projects/{project_id_or_number}/groups/{group_id}". For
	// groups with no parent, parentName is the empty string, "".
	parentName?: null | string @go(ParentName,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#GroupParameters: {
	// A user-assigned name for this group, used only for display
	// purposes.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The filter used to determine which monitored resources
	// belong to this group.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)

	// If true, the members of this group are considered to be a
	// cluster. The system can perform additional analysis on
	// groups that are clusters.
	// +kubebuilder:validation:Optional
	isCluster?: null | bool @go(IsCluster,*bool)

	// The name of the group's parent, if it has one. The format is
	// "projects/{project_id_or_number}/groups/{group_id}". For
	// groups with no parent, parentName is the empty string, "".
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/monitoring/v1beta1.Group
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",true)
	// +kubebuilder:validation:Optional
	parentName?: null | string @go(ParentName,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// GroupSpec defines the desired state of Group
#GroupSpec: {
	forProvider: #GroupParameters @go(ForProvider)
}

// GroupStatus defines the observed state of Group.
#GroupStatus: {
	atProvider?: #GroupObservation @go(AtProvider)
}

// Group is the Schema for the Groups API. The description of a dynamic collection of monitored resources.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Group: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.displayName)",message="displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.filter)",message="filter is a required parameter"
	spec:    #GroupSpec   @go(Spec)
	status?: #GroupStatus @go(Status)
}

// GroupList contains a list of Groups
#GroupList: {
	items: [...#Group] @go(Items,[]Group)
}
