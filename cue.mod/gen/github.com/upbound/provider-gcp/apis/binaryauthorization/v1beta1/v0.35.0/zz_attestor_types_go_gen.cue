// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/binaryauthorization/v1beta1

package v1beta1

#AttestationAuthorityNoteInitParameters: {
	// Public keys that verify attestations signed by this attestor. This
	// field may be updated.
	// If this field is non-empty, one of the specified public keys must
	// verify that an attestation was signed by this attestor for the
	// image specified in the admission request.
	// If this field is empty, this attestor always returns that no valid
	// attestations exist.
	// Structure is documented below.
	publicKeys?: [...#PublicKeysInitParameters] @go(PublicKeys,[]PublicKeysInitParameters)
}

#AttestationAuthorityNoteObservation: {
	// (Output)
	// This field will contain the service account email address that
	// this Attestor will use as the principal when querying Container
	// Analysis. Attestor administrators must grant this service account
	// the IAM role needed to read attestations from the noteReference in
	// Container Analysis (containeranalysis.notes.occurrences.viewer).
	// This email address is fixed for the lifetime of the Attestor, but
	// callers should not make any other assumptions about the service
	// account email; future versions may use an email based on a
	// different naming pattern.
	delegationServiceAccountEmail?: null | string @go(DelegationServiceAccountEmail,*string)

	// The resource name of a ATTESTATION_AUTHORITY Note, created by the
	// user. If the Note is in a different project from the Attestor, it
	// should be specified in the format projects/*/notes/* (or the legacy
	// providers/*/notes/*). This field may not be updated.
	// An attestation by this attestor is stored as a Container Analysis
	// ATTESTATION_AUTHORITY Occurrence that names a container image
	// and that links to this Note.
	noteReference?: null | string @go(NoteReference,*string)

	// Public keys that verify attestations signed by this attestor. This
	// field may be updated.
	// If this field is non-empty, one of the specified public keys must
	// verify that an attestation was signed by this attestor for the
	// image specified in the admission request.
	// If this field is empty, this attestor always returns that no valid
	// attestations exist.
	// Structure is documented below.
	publicKeys?: [...#PublicKeysObservation] @go(PublicKeys,[]PublicKeysObservation)
}

#AttestationAuthorityNoteParameters: {
	// The resource name of a ATTESTATION_AUTHORITY Note, created by the
	// user. If the Note is in a different project from the Attestor, it
	// should be specified in the format projects/*/notes/* (or the legacy
	// providers/*/notes/*). This field may not be updated.
	// An attestation by this attestor is stored as a Container Analysis
	// ATTESTATION_AUTHORITY Occurrence that names a container image
	// and that links to this Note.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/containeranalysis/v1beta1.Note
	// +kubebuilder:validation:Optional
	noteReference?: null | string @go(NoteReference,*string)

	// Public keys that verify attestations signed by this attestor. This
	// field may be updated.
	// If this field is non-empty, one of the specified public keys must
	// verify that an attestation was signed by this attestor for the
	// image specified in the admission request.
	// If this field is empty, this attestor always returns that no valid
	// attestations exist.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	publicKeys?: [...#PublicKeysParameters] @go(PublicKeys,[]PublicKeysParameters)
}

#AttestorInitParameters: {
	// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
	// Structure is documented below.
	attestationAuthorityNote?: [...#AttestationAuthorityNoteInitParameters] @go(AttestationAuthorityNote,[]AttestationAuthorityNoteInitParameters)

	// A descriptive comment. This field may be updated. The field may be
	// displayed in chooser dialogs.
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#AttestorObservation: {
	// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
	// Structure is documented below.
	attestationAuthorityNote?: [...#AttestationAuthorityNoteObservation] @go(AttestationAuthorityNote,[]AttestationAuthorityNoteObservation)

	// A descriptive comment. This field may be updated. The field may be
	// displayed in chooser dialogs.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/attestors/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#AttestorParameters: {
	// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	attestationAuthorityNote?: [...#AttestationAuthorityNoteParameters] @go(AttestationAuthorityNote,[]AttestationAuthorityNoteParameters)

	// A descriptive comment. This field may be updated. The field may be
	// displayed in chooser dialogs.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#PkixPublicKeyInitParameters: {
	// A PEM-encoded public key, as described in
	// https://tools.ietf.org/html/rfc7468#section-13
	publicKeyPem?: null | string @go(PublicKeyPem,*string)

	// The signature algorithm used to verify a message against
	// a signature using this key. These signature algorithm must
	// match the structure and any object identifiers encoded in
	// publicKeyPem (i.e. this algorithm must match that of the
	// public key).
	signatureAlgorithm?: null | string @go(SignatureAlgorithm,*string)
}

#PkixPublicKeyObservation: {
	// A PEM-encoded public key, as described in
	// https://tools.ietf.org/html/rfc7468#section-13
	publicKeyPem?: null | string @go(PublicKeyPem,*string)

	// The signature algorithm used to verify a message against
	// a signature using this key. These signature algorithm must
	// match the structure and any object identifiers encoded in
	// publicKeyPem (i.e. this algorithm must match that of the
	// public key).
	signatureAlgorithm?: null | string @go(SignatureAlgorithm,*string)
}

#PkixPublicKeyParameters: {
	// A PEM-encoded public key, as described in
	// https://tools.ietf.org/html/rfc7468#section-13
	// +kubebuilder:validation:Optional
	publicKeyPem?: null | string @go(PublicKeyPem,*string)

	// The signature algorithm used to verify a message against
	// a signature using this key. These signature algorithm must
	// match the structure and any object identifiers encoded in
	// publicKeyPem (i.e. this algorithm must match that of the
	// public key).
	// +kubebuilder:validation:Optional
	signatureAlgorithm?: null | string @go(SignatureAlgorithm,*string)
}

#PublicKeysInitParameters: {
	// ASCII-armored representation of a PGP public key, as the
	// entire output by the command
	// gpg --export --armor foo@example.com (either LF or CRLF
	// line endings). When using this field, id should be left
	// blank. The BinAuthz API handlers will calculate the ID
	// and fill it in automatically. BinAuthz computes this ID
	// as the OpenPGP RFC4880 V4 fingerprint, represented as
	// upper-case hex. If id is provided by the caller, it will
	// be overwritten by the API-calculated ID.
	asciiArmoredPgpPublicKey?: null | string @go(ASCIIArmoredPgpPublicKey,*string)

	// A descriptive comment. This field may be updated.
	comment?: null | string @go(Comment,*string)

	// The ID of this public key. Signatures verified by BinAuthz
	// must include the ID of the public key that can be used to
	// verify them, and that ID must match the contents of this
	// field exactly. Additional restrictions on this field can
	// be imposed based on which public key type is encapsulated.
	// See the documentation on publicKey cases below for details.
	id?: null | string @go(ID,*string)

	// A raw PKIX SubjectPublicKeyInfo format public key.
	// NOTE: id may be explicitly provided by the caller when using this
	// type of public key, but it MUST be a valid RFC3986 URI. If id is left
	// blank, a default one will be computed based on the digest of the DER
	// encoding of the public key.
	// Structure is documented below.
	pkixPublicKey?: [...#PkixPublicKeyInitParameters] @go(PkixPublicKey,[]PkixPublicKeyInitParameters)
}

#PublicKeysObservation: {
	// ASCII-armored representation of a PGP public key, as the
	// entire output by the command
	// gpg --export --armor foo@example.com (either LF or CRLF
	// line endings). When using this field, id should be left
	// blank. The BinAuthz API handlers will calculate the ID
	// and fill it in automatically. BinAuthz computes this ID
	// as the OpenPGP RFC4880 V4 fingerprint, represented as
	// upper-case hex. If id is provided by the caller, it will
	// be overwritten by the API-calculated ID.
	asciiArmoredPgpPublicKey?: null | string @go(ASCIIArmoredPgpPublicKey,*string)

	// A descriptive comment. This field may be updated.
	comment?: null | string @go(Comment,*string)

	// The ID of this public key. Signatures verified by BinAuthz
	// must include the ID of the public key that can be used to
	// verify them, and that ID must match the contents of this
	// field exactly. Additional restrictions on this field can
	// be imposed based on which public key type is encapsulated.
	// See the documentation on publicKey cases below for details.
	id?: null | string @go(ID,*string)

	// A raw PKIX SubjectPublicKeyInfo format public key.
	// NOTE: id may be explicitly provided by the caller when using this
	// type of public key, but it MUST be a valid RFC3986 URI. If id is left
	// blank, a default one will be computed based on the digest of the DER
	// encoding of the public key.
	// Structure is documented below.
	pkixPublicKey?: [...#PkixPublicKeyObservation] @go(PkixPublicKey,[]PkixPublicKeyObservation)
}

#PublicKeysParameters: {
	// ASCII-armored representation of a PGP public key, as the
	// entire output by the command
	// gpg --export --armor foo@example.com (either LF or CRLF
	// line endings). When using this field, id should be left
	// blank. The BinAuthz API handlers will calculate the ID
	// and fill it in automatically. BinAuthz computes this ID
	// as the OpenPGP RFC4880 V4 fingerprint, represented as
	// upper-case hex. If id is provided by the caller, it will
	// be overwritten by the API-calculated ID.
	// +kubebuilder:validation:Optional
	asciiArmoredPgpPublicKey?: null | string @go(ASCIIArmoredPgpPublicKey,*string)

	// A descriptive comment. This field may be updated.
	// +kubebuilder:validation:Optional
	comment?: null | string @go(Comment,*string)

	// The ID of this public key. Signatures verified by BinAuthz
	// must include the ID of the public key that can be used to
	// verify them, and that ID must match the contents of this
	// field exactly. Additional restrictions on this field can
	// be imposed based on which public key type is encapsulated.
	// See the documentation on publicKey cases below for details.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// A raw PKIX SubjectPublicKeyInfo format public key.
	// NOTE: id may be explicitly provided by the caller when using this
	// type of public key, but it MUST be a valid RFC3986 URI. If id is left
	// blank, a default one will be computed based on the digest of the DER
	// encoding of the public key.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	pkixPublicKey?: [...#PkixPublicKeyParameters] @go(PkixPublicKey,[]PkixPublicKeyParameters)
}

// AttestorSpec defines the desired state of Attestor
#AttestorSpec: {
	forProvider: #AttestorParameters @go(ForProvider)

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
	initProvider?: #AttestorInitParameters @go(InitProvider)
}

// AttestorStatus defines the observed state of Attestor.
#AttestorStatus: {
	atProvider?: #AttestorObservation @go(AtProvider)
}

// Attestor is the Schema for the Attestors API. An attestor that attests to container image artifacts.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Attestor: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.attestationAuthorityNote) || has(self.initProvider.attestationAuthorityNote)",message="attestationAuthorityNote is a required parameter"
	spec:    #AttestorSpec   @go(Spec)
	status?: #AttestorStatus @go(Status)
}

// AttestorList contains a list of Attestors
#AttestorList: {
	items: [...#Attestor] @go(Items,[]Attestor)
}
