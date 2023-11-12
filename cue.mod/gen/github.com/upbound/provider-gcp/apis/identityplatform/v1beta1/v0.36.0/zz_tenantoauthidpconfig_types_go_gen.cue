// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/identityplatform/v1beta1

package v1beta1

#TenantOAuthIdPConfigInitParameters: {
	// Human friendly display name.
	displayName?: null | string @go(DisplayName,*string)

	// If this config allows users to sign in with the provider.
	enabled?: null | bool @go(Enabled,*bool)

	// For OIDC Idps, the issuer identifier.
	issuer?: null | string @go(Issuer,*string)

	// The name of the OauthIdpConfig. Must start with oidc..
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#TenantOAuthIdPConfigObservation: {
	// Human friendly display name.
	displayName?: null | string @go(DisplayName,*string)

	// If this config allows users to sign in with the provider.
	enabled?: null | bool @go(Enabled,*bool)

	// an identifier for the resource with format projects/{{project}}/tenants/{{tenant}}/oauthIdpConfigs/{{name}}
	id?: null | string @go(ID,*string)

	// For OIDC Idps, the issuer identifier.
	issuer?: null | string @go(Issuer,*string)

	// The name of the OauthIdpConfig. Must start with oidc..
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The name of the tenant where this OIDC IDP configuration resource exists
	tenant?: null | string @go(Tenant,*string)
}

#TenantOAuthIdPConfigParameters: {
	// Human friendly display name.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// If this config allows users to sign in with the provider.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// For OIDC Idps, the issuer identifier.
	// +kubebuilder:validation:Optional
	issuer?: null | string @go(Issuer,*string)

	// The name of the OauthIdpConfig. Must start with oidc..
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The name of the tenant where this OIDC IDP configuration resource exists
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/identityplatform/v1beta1.Tenant
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("name",true)
	// +kubebuilder:validation:Optional
	tenant?: null | string @go(Tenant,*string)
}

// TenantOAuthIdPConfigSpec defines the desired state of TenantOAuthIdPConfig
#TenantOAuthIdPConfigSpec: {
	forProvider: #TenantOAuthIdPConfigParameters @go(ForProvider)

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
	initProvider?: #TenantOAuthIdPConfigInitParameters @go(InitProvider)
}

// TenantOAuthIdPConfigStatus defines the observed state of TenantOAuthIdPConfig.
#TenantOAuthIdPConfigStatus: {
	atProvider?: #TenantOAuthIdPConfigObservation @go(AtProvider)
}

// TenantOAuthIdPConfig is the Schema for the TenantOAuthIdPConfigs API. OIDC IdP configuration for a Identity Toolkit project within a tenant.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#TenantOAuthIdPConfig: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.clientIdSecretRef)",message="clientIdSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || has(self.initProvider.displayName)",message="displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.issuer) || has(self.initProvider.issuer)",message="issuer is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #TenantOAuthIdPConfigSpec   @go(Spec)
	status?: #TenantOAuthIdPConfigStatus @go(Status)
}

// TenantOAuthIdPConfigList contains a list of TenantOAuthIdPConfigs
#TenantOAuthIdPConfigList: {
	items: [...#TenantOAuthIdPConfig] @go(Items,[]TenantOAuthIdPConfig)
}
