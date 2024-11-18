// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/sourcerepo/v1beta1

package v1beta1

#ConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#ConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Required
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Required
	title?: null | string @go(Title,*string)
}

#RepositoryIAMMemberObservation: {
	condition?: [...#ConditionObservation] @go(Condition,[]ConditionObservation)
	etag?:       null | string @go(Etag,*string)
	id?:         null | string @go(ID,*string)
	member?:     null | string @go(Member,*string)
	project?:    null | string @go(Project,*string)
	repository?: null | string @go(Repository,*string)
	role?:       null | string @go(Role,*string)
}

#RepositoryIAMMemberParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#ConditionParameters] @go(Condition,[]ConditionParameters)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +crossplane:generate:reference:type=Repository
	// +kubebuilder:validation:Optional
	repository?: null | string @go(Repository,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

// RepositoryIAMMemberSpec defines the desired state of RepositoryIAMMember
#RepositoryIAMMemberSpec: {
	forProvider: #RepositoryIAMMemberParameters @go(ForProvider)
}

// RepositoryIAMMemberStatus defines the observed state of RepositoryIAMMember.
#RepositoryIAMMemberStatus: {
	atProvider?: #RepositoryIAMMemberObservation @go(AtProvider)
}

// RepositoryIAMMember is the Schema for the RepositoryIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RepositoryIAMMember: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.member)",message="member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.role)",message="role is a required parameter"
	spec:    #RepositoryIAMMemberSpec   @go(Spec)
	status?: #RepositoryIAMMemberStatus @go(Status)
}

// RepositoryIAMMemberList contains a list of RepositoryIAMMembers
#RepositoryIAMMemberList: {
	items: [...#RepositoryIAMMember] @go(Items,[]RepositoryIAMMember)
}
