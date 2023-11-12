// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storage/v1beta1

package v1beta1

#BucketIAMMemberConditionInitParameters: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#BucketIAMMemberConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#BucketIAMMemberConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#BucketIAMMemberInitParameters: {
	condition?: [...#BucketIAMMemberConditionInitParameters] @go(Condition,[]BucketIAMMemberConditionInitParameters)
	member?: null | string @go(Member,*string)
	role?:   null | string @go(Role,*string)
}

#BucketIAMMemberObservation: {
	bucket?: null | string @go(Bucket,*string)
	condition?: [...#BucketIAMMemberConditionObservation] @go(Condition,[]BucketIAMMemberConditionObservation)
	etag?:   null | string @go(Etag,*string)
	id?:     null | string @go(ID,*string)
	member?: null | string @go(Member,*string)
	role?:   null | string @go(Role,*string)
}

#BucketIAMMemberParameters: {
	// +crossplane:generate:reference:type=Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// +kubebuilder:validation:Optional
	condition?: [...#BucketIAMMemberConditionParameters] @go(Condition,[]BucketIAMMemberConditionParameters)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

// BucketIAMMemberSpec defines the desired state of BucketIAMMember
#BucketIAMMemberSpec: {
	forProvider: #BucketIAMMemberParameters @go(ForProvider)

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
	initProvider?: #BucketIAMMemberInitParameters @go(InitProvider)
}

// BucketIAMMemberStatus defines the observed state of BucketIAMMember.
#BucketIAMMemberStatus: {
	atProvider?: #BucketIAMMemberObservation @go(AtProvider)
}

// BucketIAMMember is the Schema for the BucketIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#BucketIAMMember: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.member) || (has(self.initProvider) && has(self.initProvider.member))",message="spec.forProvider.member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || (has(self.initProvider) && has(self.initProvider.role))",message="spec.forProvider.role is a required parameter"
	spec:    #BucketIAMMemberSpec   @go(Spec)
	status?: #BucketIAMMemberStatus @go(Status)
}

// BucketIAMMemberList contains a list of BucketIAMMembers
#BucketIAMMemberList: {
	items: [...#BucketIAMMember] @go(Items,[]BucketIAMMember)
}
