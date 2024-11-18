// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/oslogin/v1beta1

package v1beta1

#SSHPublicKeyInitParameters: {
	// An expiration time in microseconds since epoch.
	expirationTimeUsec?: null | string @go(ExpirationTimeUsec,*string)

	// The project ID of the Google Cloud Platform project.
	project?: null | string @go(Project,*string)

	// The user email.
	user?: null | string @go(User,*string)
}

#SSHPublicKeyObservation: {
	// An expiration time in microseconds since epoch.
	expirationTimeUsec?: null | string @go(ExpirationTimeUsec,*string)

	// The SHA-256 fingerprint of the SSH public key.
	fingerprint?: null | string @go(Fingerprint,*string)

	// an identifier for the resource with format users/{{user}}/sshPublicKeys/{{fingerprint}}
	id?: null | string @go(ID,*string)

	// The project ID of the Google Cloud Platform project.
	project?: null | string @go(Project,*string)

	// The user email.
	user?: null | string @go(User,*string)
}

#SSHPublicKeyParameters: {
	// An expiration time in microseconds since epoch.
	// +kubebuilder:validation:Optional
	expirationTimeUsec?: null | string @go(ExpirationTimeUsec,*string)

	// The project ID of the Google Cloud Platform project.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The user email.
	// +kubebuilder:validation:Optional
	user?: null | string @go(User,*string)
}

// SSHPublicKeySpec defines the desired state of SSHPublicKey
#SSHPublicKeySpec: {
	forProvider: #SSHPublicKeyParameters @go(ForProvider)

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
	initProvider?: #SSHPublicKeyInitParameters @go(InitProvider)
}

// SSHPublicKeyStatus defines the observed state of SSHPublicKey.
#SSHPublicKeyStatus: {
	atProvider?: #SSHPublicKeyObservation @go(AtProvider)
}

// SSHPublicKey is the Schema for the SSHPublicKeys API. The SSH public key information associated with a Google account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#SSHPublicKey: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.keySecretRef)",message="spec.forProvider.keySecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.user) || (has(self.initProvider) && has(self.initProvider.user))",message="spec.forProvider.user is a required parameter"
	spec:    #SSHPublicKeySpec   @go(Spec)
	status?: #SSHPublicKeyStatus @go(Status)
}

// SSHPublicKeyList contains a list of SSHPublicKeys
#SSHPublicKeyList: {
	items: [...#SSHPublicKey] @go(Items,[]SSHPublicKey)
}
