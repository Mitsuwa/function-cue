// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ServiceAccountObservation: {
	// A text description of the service account.
	// Must be less than or equal to 256 UTF-8 bytes.
	description?: null | string @go(Description,*string)

	// Whether a service account is disabled or not. Defaults to false. This field has no effect during creation.
	// Must be set after creation to disable a service account.
	disabled?: null | bool @go(Disabled,*bool)

	// The display name for the service account.
	// Can be updated without creating a new resource.
	displayName?: null | string @go(DisplayName,*string)

	// The e-mail address of the service account. This value
	// should be referenced from any google_iam_policy data sources
	// that would grant the service account privileges.
	email?: null | string @go(Email,*string)

	// an identifier for the resource with format projects/{{project}}/serviceAccounts/{{email}}
	id?: null | string @go(ID,*string)

	// The Identity of the service account in the form serviceAccount:{email}. This value is often used to refer to the service account in order to grant IAM permissions.
	member?: null | string @go(Member,*string)

	// The fully-qualified name of the service account.
	name?: null | string @go(Name,*string)

	// The ID of the project that the service account will be created in.
	// Defaults to the provider project configuration.
	project?: null | string @go(Project,*string)

	// The unique id of the service account.
	uniqueId?: null | string @go(UniqueID,*string)
}

#ServiceAccountParameters: {
	// A text description of the service account.
	// Must be less than or equal to 256 UTF-8 bytes.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Whether a service account is disabled or not. Defaults to false. This field has no effect during creation.
	// Must be set after creation to disable a service account.
	// +kubebuilder:validation:Optional
	disabled?: null | bool @go(Disabled,*bool)

	// The display name for the service account.
	// Can be updated without creating a new resource.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the project that the service account will be created in.
	// Defaults to the provider project configuration.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// ServiceAccountSpec defines the desired state of ServiceAccount
#ServiceAccountSpec: {
	forProvider: #ServiceAccountParameters @go(ForProvider)
}

// ServiceAccountStatus defines the observed state of ServiceAccount.
#ServiceAccountStatus: {
	atProvider?: #ServiceAccountObservation @go(AtProvider)
}

// ServiceAccount is the Schema for the ServiceAccounts API. Allows management of a Google Cloud Platform service account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ServiceAccount: {
	spec:    #ServiceAccountSpec   @go(Spec)
	status?: #ServiceAccountStatus @go(Status)
}

// ServiceAccountList contains a list of ServiceAccounts
#ServiceAccountList: {
	items: [...#ServiceAccount] @go(Items,[]ServiceAccount)
}
