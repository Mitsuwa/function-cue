// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storage/v1beta1

package v1beta1

#DefaultObjectAccessControlObservation: {
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

	// an identifier for the resource with format {{bucket}}/{{entity}}
	id?: null | string @go(ID,*string)

	// The name of the object, if applied to an object.
	object?: null | string @go(Object,*string)

	// The project team associated with the entity
	// Structure is documented below.
	projectTeam?: [...#ProjectTeamObservation] @go(ProjectTeam,[]ProjectTeamObservation)

	// The access permission for the entity.
	// Possible values are: OWNER, READER.
	role?: null | string @go(Role,*string)
}

#DefaultObjectAccessControlParameters: {
	// The name of the bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/storage/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// The entity holding the permission, in one of the following forms:
	// +kubebuilder:validation:Optional
	entity?: null | string @go(Entity,*string)

	// The name of the object, if applied to an object.
	// +kubebuilder:validation:Optional
	object?: null | string @go(Object,*string)

	// The access permission for the entity.
	// Possible values are: OWNER, READER.
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

#ProjectTeamObservation: {
	// The project team associated with the entity
	projectNumber?: null | string @go(ProjectNumber,*string)

	// The team.
	// Possible values are: editors, owners, viewers.
	team?: null | string @go(Team,*string)
}

#ProjectTeamParameters: {
}

// DefaultObjectAccessControlSpec defines the desired state of DefaultObjectAccessControl
#DefaultObjectAccessControlSpec: {
	forProvider: #DefaultObjectAccessControlParameters @go(ForProvider)
}

// DefaultObjectAccessControlStatus defines the observed state of DefaultObjectAccessControl.
#DefaultObjectAccessControlStatus: {
	atProvider?: #DefaultObjectAccessControlObservation @go(AtProvider)
}

// DefaultObjectAccessControl is the Schema for the DefaultObjectAccessControls API. The DefaultObjectAccessControls resources represent the Access Control Lists (ACLs) applied to a new object within a Google Cloud Storage bucket when no ACL was provided for that object.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#DefaultObjectAccessControl: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.entity)",message="entity is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.role)",message="role is a required parameter"
	spec:    #DefaultObjectAccessControlSpec   @go(Spec)
	status?: #DefaultObjectAccessControlStatus @go(Status)
}

// DefaultObjectAccessControlList contains a list of DefaultObjectAccessControls
#DefaultObjectAccessControlList: {
	items: [...#DefaultObjectAccessControl] @go(Items,[]DefaultObjectAccessControl)
}
