// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/backup/v1beta1

package v1beta1

#ConditionObservation: {
	stringEquals?: [...#StringEqualsObservation] @go(StringEquals,[]StringEqualsObservation)
	stringLike?: [...#StringLikeObservation] @go(StringLike,[]StringLikeObservation)
	stringNotEquals?: [...#StringNotEqualsObservation] @go(StringNotEquals,[]StringNotEqualsObservation)
	stringNotLike?: [...#StringNotLikeObservation] @go(StringNotLike,[]StringNotLikeObservation)
}

#ConditionParameters: {
	// +kubebuilder:validation:Optional
	stringEquals?: [...#StringEqualsParameters] @go(StringEquals,[]StringEqualsParameters)

	// +kubebuilder:validation:Optional
	stringLike?: [...#StringLikeParameters] @go(StringLike,[]StringLikeParameters)

	// +kubebuilder:validation:Optional
	stringNotEquals?: [...#StringNotEqualsParameters] @go(StringNotEquals,[]StringNotEqualsParameters)

	// +kubebuilder:validation:Optional
	stringNotLike?: [...#StringNotLikeParameters] @go(StringNotLike,[]StringNotLikeParameters)
}

#SelectionObservation: {
	// A list of conditions that you define to assign resources to your backup plans using tags.
	condition?: [...#ConditionObservation] @go(Condition,[]ConditionObservation)

	// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the AWS Backup Developer Guide for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// Backup Selection identifier
	id?: null | string @go(ID,*string)

	// The display name of a resource selection document.
	name?: null | string @go(Name,*string)

	// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
	notResources?: [...null | string] @go(NotResources,[]*string)

	// The backup plan ID to be associated with the selection of resources.
	planId?: null | string @go(PlanID,*string)

	// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
	resources?: [...null | string] @go(Resources,[]*string)

	// Tag-based conditions used to specify a set of resources to assign to a backup plan.
	selectionTag?: [...#SelectionTagObservation] @go(SelectionTag,[]SelectionTagObservation)
}

#SelectionParameters: {
	// A list of conditions that you define to assign resources to your backup plans using tags.
	// +kubebuilder:validation:Optional
	condition?: [...#ConditionParameters] @go(Condition,[]ConditionParameters)

	// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the AWS Backup Developer Guide for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// The display name of a resource selection document.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
	// +kubebuilder:validation:Optional
	notResources?: [...null | string] @go(NotResources,[]*string)

	// The backup plan ID to be associated with the selection of resources.
	// +crossplane:generate:reference:type=Plan
	// +kubebuilder:validation:Optional
	planId?: null | string @go(PlanID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
	// +kubebuilder:validation:Optional
	resources?: [...null | string] @go(Resources,[]*string)

	// Tag-based conditions used to specify a set of resources to assign to a backup plan.
	// +kubebuilder:validation:Optional
	selectionTag?: [...#SelectionTagParameters] @go(SelectionTag,[]SelectionTagParameters)
}

#SelectionTagObservation: {
	// The key in a key-value pair.
	key?: null | string @go(Key,*string)

	// An operation, such as StringEquals, that is applied to a key-value pair used to filter resources in a selection.
	type?: null | string @go(Type,*string)

	// The value in a key-value pair.
	value?: null | string @go(Value,*string)
}

#SelectionTagParameters: {
	// The key in a key-value pair.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// An operation, such as StringEquals, that is applied to a key-value pair used to filter resources in a selection.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)

	// The value in a key-value pair.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#StringEqualsObservation: {
	// The key in a key-value pair.
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	value?: null | string @go(Value,*string)
}

#StringEqualsParameters: {
	// The key in a key-value pair.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#StringLikeObservation: {
	// The key in a key-value pair.
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	value?: null | string @go(Value,*string)
}

#StringLikeParameters: {
	// The key in a key-value pair.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#StringNotEqualsObservation: {
	// The key in a key-value pair.
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	value?: null | string @go(Value,*string)
}

#StringNotEqualsParameters: {
	// The key in a key-value pair.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

#StringNotLikeObservation: {
	// The key in a key-value pair.
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	value?: null | string @go(Value,*string)
}

#StringNotLikeParameters: {
	// The key in a key-value pair.
	// +kubebuilder:validation:Required
	key?: null | string @go(Key,*string)

	// The value in a key-value pair.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

// SelectionSpec defines the desired state of Selection
#SelectionSpec: {
	forProvider: #SelectionParameters @go(ForProvider)
}

// SelectionStatus defines the observed state of Selection.
#SelectionStatus: {
	atProvider?: #SelectionObservation @go(AtProvider)
}

// Selection is the Schema for the Selections API. Manages selection conditions for AWS Backup plan resources.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Selection: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #SelectionSpec   @go(Spec)
	status?: #SelectionStatus @go(Status)
}

// SelectionList contains a list of Selections
#SelectionList: {
	items: [...#Selection] @go(Items,[]Selection)
}
