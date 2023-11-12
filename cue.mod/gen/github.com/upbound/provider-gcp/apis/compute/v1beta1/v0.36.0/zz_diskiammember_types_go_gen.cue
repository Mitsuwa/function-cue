// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#ConditionInitParameters: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#ConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#ConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#DiskIAMMemberInitParameters: {
	condition?: [...#ConditionInitParameters] @go(Condition,[]ConditionInitParameters)
	member?:  null | string @go(Member,*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
	zone?:    null | string @go(Zone,*string)
}

#DiskIAMMemberObservation: {
	condition?: [...#ConditionObservation] @go(Condition,[]ConditionObservation)
	etag?:    null | string @go(Etag,*string)
	id?:      null | string @go(ID,*string)
	member?:  null | string @go(Member,*string)
	name?:    null | string @go(Name,*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
	zone?:    null | string @go(Zone,*string)
}

#DiskIAMMemberParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#ConditionParameters] @go(Condition,[]ConditionParameters)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +crossplane:generate:reference:type=Disk
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

// DiskIAMMemberSpec defines the desired state of DiskIAMMember
#DiskIAMMemberSpec: {
	forProvider: #DiskIAMMemberParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #DiskIAMMemberInitParameters @go(InitProvider)
}

// DiskIAMMemberStatus defines the observed state of DiskIAMMember.
#DiskIAMMemberStatus: {
	atProvider?: #DiskIAMMemberObservation @go(AtProvider)
}

// DiskIAMMember is the Schema for the DiskIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#DiskIAMMember: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.member) || has(self.initProvider.member)",message="member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || has(self.initProvider.role)",message="role is a required parameter"
	spec:    #DiskIAMMemberSpec   @go(Spec)
	status?: #DiskIAMMemberStatus @go(Status)
}

// DiskIAMMemberList contains a list of DiskIAMMembers
#DiskIAMMemberList: {
	items: [...#DiskIAMMember] @go(Items,[]DiskIAMMember)
}
