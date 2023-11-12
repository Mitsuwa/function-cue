// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iam/v1beta1

package v1beta1

#ServiceLinkedRoleObservation: {
	// The Amazon Resource Name (ARN) specifying the role.
	arn?: null | string @go(Arn,*string)

	// The creation date of the IAM role.
	createDate?: null | string @go(CreateDate,*string)

	// The Amazon Resource Name (ARN) of the role.
	id?: null | string @go(ID,*string)

	// The name of the role.
	name?: null | string @go(Name,*string)

	// The path of the role.
	path?: null | string @go(Path,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The stable and unique string identifying the role.
	uniqueId?: null | string @go(UniqueID,*string)
}

#ServiceLinkedRoleParameters: {
	// The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: elasticbeanstalk.amazonaws.com. To find the full list of services that support service-linked roles, check the docs.
	// +kubebuilder:validation:Required
	awsServiceName?: null | string @go(AwsServiceName,*string)

	// Additional string appended to the role name. Not all AWS services support custom suffixes.
	// +kubebuilder:validation:Optional
	customSuffix?: null | string @go(CustomSuffix,*string)

	// The description of the role.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ServiceLinkedRoleSpec defines the desired state of ServiceLinkedRole
#ServiceLinkedRoleSpec: {
	forProvider: #ServiceLinkedRoleParameters @go(ForProvider)
}

// ServiceLinkedRoleStatus defines the observed state of ServiceLinkedRole.
#ServiceLinkedRoleStatus: {
	atProvider?: #ServiceLinkedRoleObservation @go(AtProvider)
}

// ServiceLinkedRole is the Schema for the ServiceLinkedRoles API. Provides an IAM service-linked role.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ServiceLinkedRole: {
	spec:    #ServiceLinkedRoleSpec   @go(Spec)
	status?: #ServiceLinkedRoleStatus @go(Status)
}

// ServiceLinkedRoleList contains a list of ServiceLinkedRoles
#ServiceLinkedRoleList: {
	items: [...#ServiceLinkedRole] @go(Items,[]ServiceLinkedRole)
}
