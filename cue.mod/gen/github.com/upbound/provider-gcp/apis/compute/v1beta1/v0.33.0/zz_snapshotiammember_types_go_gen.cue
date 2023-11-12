// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#SnapshotIAMMemberConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#SnapshotIAMMemberConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Required
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Required
	title?: null | string @go(Title,*string)
}

#SnapshotIAMMemberObservation: {
	condition?: [...#SnapshotIAMMemberConditionObservation] @go(Condition,[]SnapshotIAMMemberConditionObservation)
	etag?:    null | string @go(Etag,*string)
	id?:      null | string @go(ID,*string)
	member?:  null | string @go(Member,*string)
	name?:    null | string @go(Name,*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
}

#SnapshotIAMMemberParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#SnapshotIAMMemberConditionParameters] @go(Condition,[]SnapshotIAMMemberConditionParameters)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

// SnapshotIAMMemberSpec defines the desired state of SnapshotIAMMember
#SnapshotIAMMemberSpec: {
	forProvider: #SnapshotIAMMemberParameters @go(ForProvider)
}

// SnapshotIAMMemberStatus defines the observed state of SnapshotIAMMember.
#SnapshotIAMMemberStatus: {
	atProvider?: #SnapshotIAMMemberObservation @go(AtProvider)
}

// SnapshotIAMMember is the Schema for the SnapshotIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#SnapshotIAMMember: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.member)",message="member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.role)",message="role is a required parameter"
	spec:    #SnapshotIAMMemberSpec   @go(Spec)
	status?: #SnapshotIAMMemberStatus @go(Status)
}

// SnapshotIAMMemberList contains a list of SnapshotIAMMembers
#SnapshotIAMMemberList: {
	items: [...#SnapshotIAMMember] @go(Items,[]SnapshotIAMMember)
}
