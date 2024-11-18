// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storage/v1beta1

package v1beta1

#ObjectAccessControlInitParameters: {
	// The entity holding the permission, in one of the following forms:
	entity?: null | string @go(Entity,*string)

	// The access permission for the entity.
	// Possible values are: OWNER, READER.
	role?: null | string @go(Role,*string)
}

#ObjectAccessControlObservation: {
	// The name of the bucket.
	bucket?: null | string @go(Bucket,*string)

	// The domain associated with the entity.
	domain?: null | string @go(Domain,*string)

	// The email address associated with the entity.
	email?: null | string @go(Email,*string)

	// The entity holding the permission, in one of the following forms:
	entity?: null | string @go(Entity,*string)

	// The ID for the entity
	entityId?: null | string @go(EntityID,*string)

	// The content generation of the object, if applied to an object.
	generation?: null | float64 @go(Generation,*float64)

	// an identifier for the resource with format {{bucket}}/{{object}}/{{entity}}
	id?: null | string @go(ID,*string)

	// The name of the object to apply the access control to.
	object?: null | string @go(Object,*string)

	// The project team associated with the entity
	// Structure is documented below.
	projectTeam?: [...#ObjectAccessControlProjectTeamObservation] @go(ProjectTeam,[]ObjectAccessControlProjectTeamObservation)

	// The access permission for the entity.
	// Possible values are: OWNER, READER.
	role?: null | string @go(Role,*string)
}

#ObjectAccessControlParameters: {
	// The name of the bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/storage/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// The entity holding the permission, in one of the following forms:
	// +kubebuilder:validation:Optional
	entity?: null | string @go(Entity,*string)

	// The name of the object to apply the access control to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/storage/v1beta1.BucketObject
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("output_name",true)
	// +kubebuilder:validation:Optional
	object?: null | string @go(Object,*string)

	// The access permission for the entity.
	// Possible values are: OWNER, READER.
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

#ObjectAccessControlProjectTeamInitParameters: {
}

#ObjectAccessControlProjectTeamObservation: {
	// The project team associated with the entity
	projectNumber?: null | string @go(ProjectNumber,*string)

	// The team.
	// Possible values are: editors, owners, viewers.
	team?: null | string @go(Team,*string)
}

#ObjectAccessControlProjectTeamParameters: {
}

// ObjectAccessControlSpec defines the desired state of ObjectAccessControl
#ObjectAccessControlSpec: {
	forProvider: #ObjectAccessControlParameters @go(ForProvider)

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
	initProvider?: #ObjectAccessControlInitParameters @go(InitProvider)
}

// ObjectAccessControlStatus defines the observed state of ObjectAccessControl.
#ObjectAccessControlStatus: {
	atProvider?: #ObjectAccessControlObservation @go(AtProvider)
}

// ObjectAccessControl is the Schema for the ObjectAccessControls API. The ObjectAccessControls resources represent the Access Control Lists (ACLs) for objects within Google Cloud Storage.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ObjectAccessControl: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.entity) || (has(self.initProvider) && has(self.initProvider.entity))",message="spec.forProvider.entity is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.role) || (has(self.initProvider) && has(self.initProvider.role))",message="spec.forProvider.role is a required parameter"
	spec:    #ObjectAccessControlSpec   @go(Spec)
	status?: #ObjectAccessControlStatus @go(Status)
}

// ObjectAccessControlList contains a list of ObjectAccessControls
#ObjectAccessControlList: {
	items: [...#ObjectAccessControl] @go(Items,[]ObjectAccessControl)
}
