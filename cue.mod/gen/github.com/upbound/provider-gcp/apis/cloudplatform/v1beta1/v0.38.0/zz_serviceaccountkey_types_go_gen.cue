// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ServiceAccountKeyInitParameters: {
	// Arbitrary map of values that, when changed, will trigger a new key to be generated.
	keepers?: {[string]: string} @go(Keepers,map[string]string)

	// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
	// Valid values are listed at
	// ServiceAccountPrivateKeyType
	// (only used on create)
	keyAlgorithm?: null | string @go(KeyAlgorithm,*string)

	// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
	privateKeyType?: null | string @go(PrivateKeyType,*string)

	// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with public_key_type and private_key_type.
	publicKeyData?: null | string @go(PublicKeyData,*string)

	// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
	publicKeyType?: null | string @go(PublicKeyType,*string)
}

#ServiceAccountKeyObservation: {
	// an identifier for the resource with format projects/{{project}}/serviceAccounts/{{account}}/keys/{{key}}
	id?: null | string @go(ID,*string)

	// Arbitrary map of values that, when changed, will trigger a new key to be generated.
	keepers?: {[string]: string} @go(Keepers,map[string]string)

	// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
	// Valid values are listed at
	// ServiceAccountPrivateKeyType
	// (only used on create)
	keyAlgorithm?: null | string @go(KeyAlgorithm,*string)

	// The name used for this key pair
	name?: null | string @go(Name,*string)

	// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
	privateKeyType?: null | string @go(PrivateKeyType,*string)

	// The public key, base64 encoded
	publicKey?: null | string @go(PublicKey,*string)

	// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with public_key_type and private_key_type.
	publicKeyData?: null | string @go(PublicKeyData,*string)

	// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
	publicKeyType?: null | string @go(PublicKeyType,*string)

	// The Service account id of the Key. This can be a string in the format
	// {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}. If the {ACCOUNT}-only syntax is used, either
	// the full email address of the service account or its name can be specified as a value, in which case the project will
	// automatically be inferred from the account. Otherwise, if the projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}
	// syntax is used, the {ACCOUNT} specified can be the full email address of the service account or the service account's
	// unique id. Substituting - as a wildcard for the {PROJECT_ID} will infer the project from the account.
	serviceAccountId?: null | string @go(ServiceAccountID,*string)

	// The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
	validAfter?: null | string @go(ValidAfter,*string)

	// The key can be used before this timestamp.
	// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
	validBefore?: null | string @go(ValidBefore,*string)
}

#ServiceAccountKeyParameters: {
	// Arbitrary map of values that, when changed, will trigger a new key to be generated.
	// +kubebuilder:validation:Optional
	keepers?: {[string]: string} @go(Keepers,map[string]string)

	// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
	// Valid values are listed at
	// ServiceAccountPrivateKeyType
	// (only used on create)
	// +kubebuilder:validation:Optional
	keyAlgorithm?: null | string @go(KeyAlgorithm,*string)

	// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
	// +kubebuilder:validation:Optional
	privateKeyType?: null | string @go(PrivateKeyType,*string)

	// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with public_key_type and private_key_type.
	// +kubebuilder:validation:Optional
	publicKeyData?: null | string @go(PublicKeyData,*string)

	// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
	// +kubebuilder:validation:Optional
	publicKeyType?: null | string @go(PublicKeyType,*string)

	// The Service account id of the Key. This can be a string in the format
	// {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}. If the {ACCOUNT}-only syntax is used, either
	// the full email address of the service account or its name can be specified as a value, in which case the project will
	// automatically be inferred from the account. Otherwise, if the projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}
	// syntax is used, the {ACCOUNT} specified can be the full email address of the service account or the service account's
	// unique id. Substituting - as a wildcard for the {PROJECT_ID} will infer the project from the account.
	// +crossplane:generate:reference:type=ServiceAccount
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractResourceID()
	// +kubebuilder:validation:Optional
	serviceAccountId?: null | string @go(ServiceAccountID,*string)
}

// ServiceAccountKeySpec defines the desired state of ServiceAccountKey
#ServiceAccountKeySpec: {
	forProvider: #ServiceAccountKeyParameters @go(ForProvider)

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
	initProvider?: #ServiceAccountKeyInitParameters @go(InitProvider)
}

// ServiceAccountKeyStatus defines the observed state of ServiceAccountKey.
#ServiceAccountKeyStatus: {
	atProvider?: #ServiceAccountKeyObservation @go(AtProvider)
}

// ServiceAccountKey is the Schema for the ServiceAccountKeys API. Allows management of a Google Cloud Platform service account Key
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ServiceAccountKey: {
	spec:    #ServiceAccountKeySpec   @go(Spec)
	status?: #ServiceAccountKeyStatus @go(Status)
}

// ServiceAccountKeyList contains a list of ServiceAccountKeys
#ServiceAccountKeyList: {
	items: [...#ServiceAccountKey] @go(Items,[]ServiceAccountKey)
}
