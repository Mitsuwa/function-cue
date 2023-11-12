// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/kms/v1alpha1

package v1alpha1

import iamv1alpha1 "github.com/crossplane-contrib/provider-gcp/apis/iam/v1alpha1"

// CryptoKeyPolicyParameters defines parameters for a desired KMS CryptoKeyPolicy
// https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys
#CryptoKeyPolicyParameters: {
	// CryptoKey: The RRN of the CryptoKey to which this CryptoKeyPolicy belongs.
	// +optional
	// +immutable
	cryptoKey?: null | string @go(CryptoKey,*string)

	// Policy: An Identity and Access Management (IAM) policy, which
	// specifies access controls for Google Cloud resources.
	policy: iamv1alpha1.#Policy @go(Policy)
}

// CryptoKeyPolicySpec defines the desired state of a
// CryptoKeyPolicy.
#CryptoKeyPolicySpec: {
	forProvider: #CryptoKeyPolicyParameters @go(ForProvider)
}

// CryptoKeyPolicy is a managed resource that represents a Google KMS Crypto Key.
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:resource:scope=Cluster
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#CryptoKeyPolicy: {
	spec: #CryptoKeyPolicySpec @go(Spec)
}

// CryptoKeyPolicyList contains a list of CryptoKeyPolicy types
#CryptoKeyPolicyList: {
	items: [...#CryptoKeyPolicy] @go(Items,[]CryptoKeyPolicy)
}
