// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/web/v1beta1

package v1beta1

#SourceControlTokenInitParameters: {
	// The Token type. Possible values include Bitbucket, Dropbox, Github, and OneDrive.
	type?: null | string @go(Type,*string)
}

#SourceControlTokenObservation: {
	// The ID of the App Service Source GitHub Token.
	id?: null | string @go(ID,*string)

	// The Token type. Possible values include Bitbucket, Dropbox, Github, and OneDrive.
	type?: null | string @go(Type,*string)
}

#SourceControlTokenParameters: {
	// The Token type. Possible values include Bitbucket, Dropbox, Github, and OneDrive.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// SourceControlTokenSpec defines the desired state of SourceControlToken
#SourceControlTokenSpec: {
	forProvider: #SourceControlTokenParameters @go(ForProvider)

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
	initProvider?: #SourceControlTokenInitParameters @go(InitProvider)
}

// SourceControlTokenStatus defines the observed state of SourceControlToken.
#SourceControlTokenStatus: {
	atProvider?: #SourceControlTokenObservation @go(AtProvider)
}

// SourceControlToken is the Schema for the SourceControlTokens API. Manages an App Service GitHub Token.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SourceControlToken: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.tokenSecretRef)",message="tokenSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.type) || has(self.initProvider.type)",message="type is a required parameter"
	spec:    #SourceControlTokenSpec   @go(Spec)
	status?: #SourceControlTokenStatus @go(Status)
}

// SourceControlTokenList contains a list of SourceControlTokens
#SourceControlTokenList: {
	items: [...#SourceControlToken] @go(Items,[]SourceControlToken)
}
