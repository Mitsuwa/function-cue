// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/kms/v1beta1

package v1beta1

#ExternalKeyObservation: {
	// The Amazon Resource Name (ARN) of the key.
	arn?: null | string @go(Arn,*string)

	// Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to true increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the Default Key Policy section in the AWS Key Management Service Developer Guide. Defaults to false.
	bypassPolicyLockoutSafetyCheck?: null | bool @go(BypassPolicyLockoutSafetyCheck,*bool)

	// Duration in days after which the key is deleted after destruction of the resource. Must be between 7 and 30 days. Defaults to 30.
	deletionWindowInDays?: null | float64 @go(DeletionWindowInDays,*float64)

	// Description of the key.
	description?: null | string @go(Description,*string)

	// Specifies whether the key is enabled. Keys pending import can only be false. Imported keys default to true unless expired.
	enabled?: null | bool @go(Enabled,*bool)

	// Whether the key material expires. Empty when pending key material import, otherwise KEY_MATERIAL_EXPIRES or KEY_MATERIAL_DOES_NOT_EXPIRE.
	expirationModel?: null | string @go(ExpirationModel,*string)

	// The unique identifier for the key.
	id?: null | string @go(ID,*string)

	// The state of the CMK.
	keyState?: null | string @go(KeyState,*string)

	// The cryptographic operations for which you can use the CMK.
	keyUsage?: null | string @go(KeyUsage,*string)

	// Indicates whether the KMS key is a multi-Region (true) or regional (false) key. Defaults to false.
	multiRegion?: null | bool @go(MultiRegion,*bool)

	// A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
	policy?: null | string @go(Policy,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)
	validTo?: null | string @go(ValidTo,*string)
}

#ExternalKeyParameters: {
	// Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to true increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the Default Key Policy section in the AWS Key Management Service Developer Guide. Defaults to false.
	// +kubebuilder:validation:Optional
	bypassPolicyLockoutSafetyCheck?: null | bool @go(BypassPolicyLockoutSafetyCheck,*bool)

	// Duration in days after which the key is deleted after destruction of the resource. Must be between 7 and 30 days. Defaults to 30.
	// +kubebuilder:validation:Optional
	deletionWindowInDays?: null | float64 @go(DeletionWindowInDays,*float64)

	// Description of the key.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies whether the key is enabled. Keys pending import can only be false. Imported keys default to true unless expired.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// Indicates whether the KMS key is a multi-Region (true) or regional (false) key. Defaults to false.
	// +kubebuilder:validation:Optional
	multiRegion?: null | bool @go(MultiRegion,*bool)

	// A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
	// +kubebuilder:validation:Optional
	policy?: null | string @go(Policy,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)
	// +kubebuilder:validation:Optional
	validTo?: null | string @go(ValidTo,*string)
}

// ExternalKeySpec defines the desired state of ExternalKey
#ExternalKeySpec: {
	forProvider: #ExternalKeyParameters @go(ForProvider)
}

// ExternalKeyStatus defines the observed state of ExternalKey.
#ExternalKeyStatus: {
	atProvider?: #ExternalKeyObservation @go(AtProvider)
}

// ExternalKey is the Schema for the ExternalKeys API. Manages a single-Region or multi-Region primary KMS key that uses external key material.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ExternalKey: {
	spec:    #ExternalKeySpec   @go(Spec)
	status?: #ExternalKeyStatus @go(Status)
}

// ExternalKeyList contains a list of ExternalKeys
#ExternalKeyList: {
	items: [...#ExternalKey] @go(Items,[]ExternalKey)
}
