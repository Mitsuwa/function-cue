// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceSynapseKeyVaultPasswordObservation: {
	// Specifies the name of an existing Key Vault Data Factory Linked Service.
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies the secret name in Azure Key Vault that stores Synapse password.
	secretName?: null | string @go(SecretName,*string)
}

#LinkedServiceSynapseKeyVaultPasswordParameters: {
	// Specifies the name of an existing Key Vault Data Factory Linked Service.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.LinkedServiceKeyVault
	// +kubebuilder:validation:Optional
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies the secret name in Azure Key Vault that stores Synapse password.
	// +kubebuilder:validation:Required
	secretName?: null | string @go(SecretName,*string)
}

#LinkedServiceSynapseObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service Synapse.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service Synapse.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with the Synapse.
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service Synapse.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory Synapse Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service Synapse.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A key_vault_password block as defined below. Use this argument to store Synapse password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
	keyVaultPassword?: [...#LinkedServiceSynapseKeyVaultPasswordObservation] @go(KeyVaultPassword,[]LinkedServiceSynapseKeyVaultPasswordObservation)

	// A map of parameters to associate with the Data Factory Linked Service Synapse.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceSynapseParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service Synapse.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service Synapse.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with the Synapse.
	// +kubebuilder:validation:Optional
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service Synapse.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service Synapse.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A key_vault_password block as defined below. Use this argument to store Synapse password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	keyVaultPassword?: [...#LinkedServiceSynapseKeyVaultPasswordParameters] @go(KeyVaultPassword,[]LinkedServiceSynapseKeyVaultPasswordParameters)

	// A map of parameters to associate with the Data Factory Linked Service Synapse.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// LinkedServiceSynapseSpec defines the desired state of LinkedServiceSynapse
#LinkedServiceSynapseSpec: {
	forProvider: #LinkedServiceSynapseParameters @go(ForProvider)
}

// LinkedServiceSynapseStatus defines the observed state of LinkedServiceSynapse.
#LinkedServiceSynapseStatus: {
	atProvider?: #LinkedServiceSynapseObservation @go(AtProvider)
}

// LinkedServiceSynapse is the Schema for the LinkedServiceSynapses API. Manages a Linked Service (connection) between Synapse and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceSynapse: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.connectionString)",message="connectionString is a required parameter"
	spec:    #LinkedServiceSynapseSpec   @go(Spec)
	status?: #LinkedServiceSynapseStatus @go(Status)
}

// LinkedServiceSynapseList contains a list of LinkedServiceSynapses
#LinkedServiceSynapseList: {
	items: [...#LinkedServiceSynapse] @go(Items,[]LinkedServiceSynapse)
}
