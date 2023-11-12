// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ProjectIAMMemberConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#ProjectIAMMemberConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Required
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Required
	title?: null | string @go(Title,*string)
}

#ProjectIAMMemberObservation: {
	condition?: [...#ProjectIAMMemberConditionObservation] @go(Condition,[]ProjectIAMMemberConditionObservation)
	etag?:    null | string @go(Etag,*string)
	id?:      null | string @go(ID,*string)
	member?:  null | string @go(Member,*string)
	project?: null | string @go(Project,*string)
	role?:    null | string @go(Role,*string)
}

#ProjectIAMMemberParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#ProjectIAMMemberConditionParameters] @go(Condition,[]ProjectIAMMemberConditionParameters)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +crossplane:generate:reference:type=Project
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

// ProjectIAMMemberSpec defines the desired state of ProjectIAMMember
#ProjectIAMMemberSpec: {
	forProvider: #ProjectIAMMemberParameters @go(ForProvider)
}

// ProjectIAMMemberStatus defines the observed state of ProjectIAMMember.
#ProjectIAMMemberStatus: {
	atProvider?: #ProjectIAMMemberObservation @go(AtProvider)
}

// ProjectIAMMember is the Schema for the ProjectIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectIAMMember: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.member)",message="member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.role)",message="role is a required parameter"
	spec:    #ProjectIAMMemberSpec   @go(Spec)
	status?: #ProjectIAMMemberStatus @go(Status)
}

// ProjectIAMMemberList contains a list of ProjectIAMMembers
#ProjectIAMMemberList: {
	items: [...#ProjectIAMMember] @go(Items,[]ProjectIAMMember)
}
