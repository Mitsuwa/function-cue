// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/storage/v1beta1

package v1beta1

#BucketAccessControlObservation: {
	// The name of the bucket.
	bucket?: null | string @go(Bucket,*string)

	// The domain associated with the entity.
	domain?: null | string @go(Domain,*string)

	// The email address associated with the entity.
	email?: null | string @go(Email,*string)

	// The entity holding the permission, in one of the following forms:
	// user-userId
	// user-email
	// group-groupId
	// group-email
	// domain-domain
	// project-team-projectId
	// allUsers
	// allAuthenticatedUsers
	// Examples:
	// The user liz@example.com would be user-liz@example.com.
	// The group example@googlegroups.com would be
	// group-example@googlegroups.com.
	// To refer to all members of the Google Apps for Business domain
	// example.com, the entity would be domain-example.com.
	entity?: null | string @go(Entity,*string)

	// an identifier for the resource with format {{bucket}}/{{entity}}
	id?: null | string @go(ID,*string)

	// The access permission for the entity.
	// Possible values are: OWNER, READER, WRITER.
	role?: null | string @go(Role,*string)
}

#BucketAccessControlParameters: {
	// The name of the bucket.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/storage/v1beta1.Bucket
	// +kubebuilder:validation:Optional
	bucket?: null | string @go(Bucket,*string)

	// The entity holding the permission, in one of the following forms:
	// user-userId
	// user-email
	// group-groupId
	// group-email
	// domain-domain
	// project-team-projectId
	// allUsers
	// allAuthenticatedUsers
	// Examples:
	// The user liz@example.com would be user-liz@example.com.
	// The group example@googlegroups.com would be
	// group-example@googlegroups.com.
	// To refer to all members of the Google Apps for Business domain
	// example.com, the entity would be domain-example.com.
	// +kubebuilder:validation:Optional
	entity?: null | string @go(Entity,*string)

	// The access permission for the entity.
	// Possible values are: OWNER, READER, WRITER.
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)
}

// BucketAccessControlSpec defines the desired state of BucketAccessControl
#BucketAccessControlSpec: {
	forProvider: #BucketAccessControlParameters @go(ForProvider)
}

// BucketAccessControlStatus defines the observed state of BucketAccessControl.
#BucketAccessControlStatus: {
	atProvider?: #BucketAccessControlObservation @go(AtProvider)
}

// BucketAccessControl is the Schema for the BucketAccessControls API. Bucket ACLs can be managed authoritatively using the [
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#BucketAccessControl: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.entity)",message="entity is a required parameter"
	spec:    #BucketAccessControlSpec   @go(Spec)
	status?: #BucketAccessControlStatus @go(Status)
}

// BucketAccessControlList contains a list of BucketAccessControls
#BucketAccessControlList: {
	items: [...#BucketAccessControl] @go(Items,[]BucketAccessControl)
}
