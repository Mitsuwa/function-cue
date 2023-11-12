// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/kms/v1beta1

package v1beta1

#SecretCiphertextObservation: {
	// Contains the result of encrypting the provided plaintext, encoded in base64.
	ciphertext?: null | string @go(Ciphertext,*string)

	// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
	// Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'
	cryptoKey?: null | string @go(CryptoKey,*string)

	// an identifier for the resource with format {{crypto_key}}/{{ciphertext}}
	id?: null | string @go(ID,*string)

	// The plaintext to be encrypted.
	// Note: This property is sensitive and will not be displayed in the plan.
	plaintext?: null | string @go(Plaintext,*string)
}

#SecretCiphertextParameters: {
	// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
	// Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/kms/v1beta1.CryptoKey
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	cryptoKey?: null | string @go(CryptoKey,*string)

	// The plaintext to be encrypted.
	// Note: This property is sensitive and will not be displayed in the plan.
	// +kubebuilder:validation:Optional
	plaintext?: null | string @go(Plaintext,*string)
}

// SecretCiphertextSpec defines the desired state of SecretCiphertext
#SecretCiphertextSpec: {
	forProvider: #SecretCiphertextParameters @go(ForProvider)
}

// SecretCiphertextStatus defines the observed state of SecretCiphertext.
#SecretCiphertextStatus: {
	atProvider?: #SecretCiphertextObservation @go(AtProvider)
}

// SecretCiphertext is the Schema for the SecretCiphertexts API. Encrypts secret data with Google Cloud KMS and provides access to the ciphertext.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#SecretCiphertext: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.plaintext)",message="plaintext is a required parameter"
	spec:    #SecretCiphertextSpec   @go(Spec)
	status?: #SecretCiphertextStatus @go(Status)
}

// SecretCiphertextList contains a list of SecretCiphertexts
#SecretCiphertextList: {
	items: [...#SecretCiphertext] @go(Items,[]SecretCiphertext)
}
