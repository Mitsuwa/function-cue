// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/notebooks/v1beta1

package v1beta1

#RuntimeIAMMemberConditionInitParameters: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#RuntimeIAMMemberConditionObservation: {
	description?: null | string @go(Description,*string)
	expression?:  null | string @go(Expression,*string)
	title?:       null | string @go(Title,*string)
}

#RuntimeIAMMemberConditionParameters: {
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#RuntimeIAMMemberInitParameters: {
	condition?: [...#RuntimeIAMMemberConditionInitParameters] @go(Condition,[]RuntimeIAMMemberConditionInitParameters)
	location?: null | string @go(Location,*string)
	member?:   null | string @go(Member,*string)
	project?:  null | string @go(Project,*string)
	role?:     null | string @go(Role,*string)
}

#RuntimeIAMMemberObservation: {
	condition?: [...#RuntimeIAMMemberConditionObservation] @go(Condition,[]RuntimeIAMMemberConditionObservation)
	etag?:        null | string @go(Etag,*string)
	id?:          null | string @go(ID,*string)
	location?:    null | string @go(Location,*string)
	member?:      null | string @go(Member,*string)
	project?:     null | string @go(Project,*string)
	role?:        null | string @go(Role,*string)
	runtimeName?: null | string @go(RuntimeName,*string)
}

#RuntimeIAMMemberParameters: {
	// +kubebuilder:validation:Optional
	condition?: [...#RuntimeIAMMemberConditionParameters] @go(Condition,[]RuntimeIAMMemberConditionParameters)

	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// +kubebuilder:validation:Optional
	member?: null | string @go(Member,*string)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// +crossplane:generate:reference:type=Runtime
	// +kubebuilder:validation:Optional
	runtimeName?: null | string @go(RuntimeName,*string)
}

// RuntimeIAMMemberSpec defines the desired state of RuntimeIAMMember
#RuntimeIAMMemberSpec: {
	forProvider: #RuntimeIAMMemberParameters @go(ForProvider)

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
	initProvider?: #RuntimeIAMMemberInitParameters @go(InitProvider)
}

// RuntimeIAMMemberStatus defines the observed state of RuntimeIAMMember.
#RuntimeIAMMemberStatus: {
	atProvider?: #RuntimeIAMMemberObservation @go(AtProvider)
}

// RuntimeIAMMember is the Schema for the RuntimeIAMMembers API. <no value>
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RuntimeIAMMember: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.member) || has(self.initProvider.member)",message="member is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || has(self.initProvider.role)",message="role is a required parameter"
	spec:    #RuntimeIAMMemberSpec   @go(Spec)
	status?: #RuntimeIAMMemberStatus @go(Status)
}

// RuntimeIAMMemberList contains a list of RuntimeIAMMembers
#RuntimeIAMMemberList: {
	items: [...#RuntimeIAMMember] @go(Items,[]RuntimeIAMMember)
}
