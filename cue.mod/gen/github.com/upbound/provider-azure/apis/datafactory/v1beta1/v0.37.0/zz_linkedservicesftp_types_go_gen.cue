// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceSFTPInitParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The type of authentication used to connect to the web table source. Valid options are Anonymous, Basic and ClientCertificate.
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The SFTP server hostname.
	host?: null | string @go(Host,*string)

	// The host key fingerprint of the SFTP server.
	hostKeyFingerprint?: null | string @go(HostKeyFingerprint,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
	port?: null | float64 @go(Port,*float64)

	// Whether to validate host key fingerprint while connecting. If set to false, host_key_fingerprint must also be set.
	skipHostKeyValidation?: null | bool @go(SkipHostKeyValidation,*bool)

	// The username used to log on to the SFTP server.
	username?: null | string @go(Username,*string)
}

#LinkedServiceSFTPObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The type of authentication used to connect to the web table source. Valid options are Anonymous, Basic and ClientCertificate.
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The SFTP server hostname.
	host?: null | string @go(Host,*string)

	// The host key fingerprint of the SFTP server.
	hostKeyFingerprint?: null | string @go(HostKeyFingerprint,*string)

	// The ID of the Data Factory Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
	port?: null | float64 @go(Port,*float64)

	// Whether to validate host key fingerprint while connecting. If set to false, host_key_fingerprint must also be set.
	skipHostKeyValidation?: null | bool @go(SkipHostKeyValidation,*bool)

	// The username used to log on to the SFTP server.
	username?: null | string @go(Username,*string)
}

#LinkedServiceSFTPParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The type of authentication used to connect to the web table source. Valid options are Anonymous, Basic and ClientCertificate.
	// +kubebuilder:validation:Optional
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The SFTP server hostname.
	// +kubebuilder:validation:Optional
	host?: null | string @go(Host,*string)

	// The host key fingerprint of the SFTP server.
	// +kubebuilder:validation:Optional
	hostKeyFingerprint?: null | string @go(HostKeyFingerprint,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Whether to validate host key fingerprint while connecting. If set to false, host_key_fingerprint must also be set.
	// +kubebuilder:validation:Optional
	skipHostKeyValidation?: null | bool @go(SkipHostKeyValidation,*bool)

	// The username used to log on to the SFTP server.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

// LinkedServiceSFTPSpec defines the desired state of LinkedServiceSFTP
#LinkedServiceSFTPSpec: {
	forProvider: #LinkedServiceSFTPParameters @go(ForProvider)

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
	initProvider?: #LinkedServiceSFTPInitParameters @go(InitProvider)
}

// LinkedServiceSFTPStatus defines the observed state of LinkedServiceSFTP.
#LinkedServiceSFTPStatus: {
	atProvider?: #LinkedServiceSFTPObservation @go(AtProvider)
}

// LinkedServiceSFTP is the Schema for the LinkedServiceSFTPs API. Manages a Linked Service (connection) between an SFTP Server and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceSFTP: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.authenticationType) || (has(self.initProvider) && has(self.initProvider.authenticationType))",message="spec.forProvider.authenticationType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.host) || (has(self.initProvider) && has(self.initProvider.host))",message="spec.forProvider.host is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.passwordSecretRef)",message="spec.forProvider.passwordSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.port) || (has(self.initProvider) && has(self.initProvider.port))",message="spec.forProvider.port is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.username) || (has(self.initProvider) && has(self.initProvider.username))",message="spec.forProvider.username is a required parameter"
	spec:    #LinkedServiceSFTPSpec   @go(Spec)
	status?: #LinkedServiceSFTPStatus @go(Status)
}

// LinkedServiceSFTPList contains a list of LinkedServiceSFTPs
#LinkedServiceSFTPList: {
	items: [...#LinkedServiceSFTP] @go(Items,[]LinkedServiceSFTP)
}
