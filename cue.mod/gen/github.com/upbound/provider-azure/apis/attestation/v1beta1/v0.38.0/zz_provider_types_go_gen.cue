// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/attestation/v1beta1

package v1beta1

#PolicyInitParameters: {
	data?:            null | string @go(Data,*string)
	environmentType?: null | string @go(EnvironmentType,*string)
}

#PolicyObservation: {
	data?:            null | string @go(Data,*string)
	environmentType?: null | string @go(EnvironmentType,*string)
}

#PolicyParameters: {
	// +kubebuilder:validation:Optional
	data?: null | string @go(Data,*string)

	// +kubebuilder:validation:Optional
	environmentType?: null | string @go(EnvironmentType,*string)
}

#ProviderInitParameters: {
	// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	openEnclavePolicyBase64?: null | string @go(OpenEnclavePolicyBase64,*string)
	policy?: [...#PolicyInitParameters] @go(Policy,[]PolicyInitParameters)

	// A valid X.509 certificate (Section 4 of RFC4648). Changing this forces a new resource to be created.
	policySigningCertificateData?: null | string @go(PolicySigningCertificateData,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	sgxEnclavePolicyBase64?: null | string @go(SgxEnclavePolicyBase64,*string)

	// A mapping of tags which should be assigned to the Attestation Provider.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	tpmPolicyBase64?: null | string @go(TpmPolicyBase64,*string)
}

#ProviderObservation: {
	// The URI of the Attestation Service.
	attestationUri?: null | string @go(AttestationURI,*string)

	// The ID of the Attestation Provider.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	openEnclavePolicyBase64?: null | string @go(OpenEnclavePolicyBase64,*string)
	policy?: [...#PolicyObservation] @go(Policy,[]PolicyObservation)

	// A valid X.509 certificate (Section 4 of RFC4648). Changing this forces a new resource to be created.
	policySigningCertificateData?: null | string @go(PolicySigningCertificateData,*string)

	// The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	sgxEnclavePolicyBase64?: null | string @go(SgxEnclavePolicyBase64,*string)

	// A mapping of tags which should be assigned to the Attestation Provider.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	tpmPolicyBase64?: null | string @go(TpmPolicyBase64,*string)

	// Trust model used for the Attestation Service.
	trustModel?: null | string @go(TrustModel,*string)
}

#ProviderParameters: {
	// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	// +kubebuilder:validation:Optional
	openEnclavePolicyBase64?: null | string @go(OpenEnclavePolicyBase64,*string)

	// +kubebuilder:validation:Optional
	policy?: [...#PolicyParameters] @go(Policy,[]PolicyParameters)

	// A valid X.509 certificate (Section 4 of RFC4648). Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	policySigningCertificateData?: null | string @go(PolicySigningCertificateData,*string)

	// The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	// +kubebuilder:validation:Optional
	sgxEnclavePolicyBase64?: null | string @go(SgxEnclavePolicyBase64,*string)

	// A mapping of tags which should be assigned to the Attestation Provider.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the TPM Policy.
	// +kubebuilder:validation:Optional
	tpmPolicyBase64?: null | string @go(TpmPolicyBase64,*string)
}

// ProviderSpec defines the desired state of Provider
#ProviderSpec: {
	forProvider: #ProviderParameters @go(ForProvider)

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
	initProvider?: #ProviderInitParameters @go(InitProvider)
}

// ProviderStatus defines the observed state of Provider.
#ProviderStatus: {
	atProvider?: #ProviderObservation @go(AtProvider)
}

// Provider is the Schema for the Providers API. Manages an Attestation Provider.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Provider: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #ProviderSpec   @go(Spec)
	status?: #ProviderStatus @go(Status)
}

// ProviderList contains a list of Providers
#ProviderList: {
	items: [...#Provider] @go(Items,[]Provider)
}
