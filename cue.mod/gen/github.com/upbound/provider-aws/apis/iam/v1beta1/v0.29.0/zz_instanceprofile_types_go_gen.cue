// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iam/v1beta1

package v1beta1

#InstanceProfileObservation: {
	// ARN assigned by AWS to the instance profile.
	arn?: null | string @go(Arn,*string)

	// Creation timestamp of the instance profile.
	createDate?: null | string @go(CreateDate,*string)

	// Instance profile's ID.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Unique ID assigned by AWS.
	uniqueId?: null | string @go(UniqueID,*string)
}

#InstanceProfileParameters: {
	// Path to the instance profile. For more information about paths, see IAM Identifiers in the IAM User Guide. Can be a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
	// +kubebuilder:validation:Optional
	path?: null | string @go(Path,*string)

	// Name of the role to add to the profile.
	// +crossplane:generate:reference:type=Role
	// +kubebuilder:validation:Optional
	role?: null | string @go(Role,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// InstanceProfileSpec defines the desired state of InstanceProfile
#InstanceProfileSpec: {
	forProvider: #InstanceProfileParameters @go(ForProvider)
}

// InstanceProfileStatus defines the observed state of InstanceProfile.
#InstanceProfileStatus: {
	atProvider?: #InstanceProfileObservation @go(AtProvider)
}

// InstanceProfile is the Schema for the InstanceProfiles API. Provides an IAM instance profile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#InstanceProfile: {
	spec:    #InstanceProfileSpec   @go(Spec)
	status?: #InstanceProfileStatus @go(Status)
}

// InstanceProfileList contains a list of InstanceProfiles
#InstanceProfileList: {
	items: [...#InstanceProfile] @go(Items,[]InstanceProfile)
}
