// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/iam/v1beta1

package v1beta1

#AccessKeyObservation: {
	// Date and time in RFC3339 format that the access key was created.
	createDate?: null | string @go(CreateDate,*string)

	// Encrypted secret, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources.
	encryptedSecret?: null | string @go(EncryptedSecret,*string)

	// Encrypted SES SMTP password, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources.
	encryptedSesSmtpPasswordV4?: null | string @go(EncryptedSesSMTPPasswordV4,*string)

	// Access key ID.
	id?: null | string @go(ID,*string)

	// Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
	keyFingerprint?: null | string @go(KeyFingerprint,*string)
}

#AccessKeyParameters: {
	// Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists, for use in the encrypted_secret output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the -a option to gpg --export).
	// +kubebuilder:validation:Optional
	pgpKey?: null | string @go(PgpKey,*string)

	// Access key status to apply. Defaults to Active. Valid values are Active and Inactive.
	// +kubebuilder:validation:Optional
	status?: null | string @go(Status,*string)

	// IAM user to associate with this access key.
	// +crossplane:generate:reference:type=User
	// +kubebuilder:validation:Optional
	user?: null | string @go(User,*string)
}

// AccessKeySpec defines the desired state of AccessKey
#AccessKeySpec: {
	forProvider: #AccessKeyParameters @go(ForProvider)
}

// AccessKeyStatus defines the observed state of AccessKey.
#AccessKeyStatus: {
	atProvider?: #AccessKeyObservation @go(AtProvider)
}

// AccessKey is the Schema for the AccessKeys API. Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AccessKey: {
	spec:    #AccessKeySpec   @go(Spec)
	status?: #AccessKeyStatus @go(Status)
}

// AccessKeyList contains a list of AccessKeys
#AccessKeyList: {
	items: [...#AccessKey] @go(Items,[]AccessKey)
}
