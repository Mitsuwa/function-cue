// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/organizations/v1beta1

package v1beta1

#PolicyObservation: {
	// Amazon Resource Name (ARN) of the policy.
	arn?: null | string @go(Arn,*string)

	// The unique identifier (ID) of the policy.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#PolicyParameters: {
	// The policy content to add to the new policy. For example, if you create a service control policy (SCP), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles. For more information about the SCP syntax, see the Service Control Policy Syntax documentation and for more information on the Tag Policy syntax, see the Tag Policy Syntax documentation.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// A description to assign to the policy.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The friendly name to assign to the policy.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// If set to true, destroy will not delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
	// +kubebuilder:validation:Optional
	skipDestroy?: null | bool @go(SkipDestroy,*bool)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of policy to create. Valid values are AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY (SCP), and TAG_POLICY. Defaults to SERVICE_CONTROL_POLICY.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// PolicySpec defines the desired state of Policy
#PolicySpec: {
	forProvider: #PolicyParameters @go(ForProvider)
}

// PolicyStatus defines the observed state of Policy.
#PolicyStatus: {
	atProvider?: #PolicyObservation @go(AtProvider)
}

// Policy is the Schema for the Policys API. Provides a resource to manage an AWS Organizations policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Policy: {
	spec:    #PolicySpec   @go(Spec)
	status?: #PolicyStatus @go(Status)
}

// PolicyList contains a list of Policys
#PolicyList: {
	items: [...#Policy] @go(Items,[]Policy)
}
