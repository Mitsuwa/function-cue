// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceSnowflakeInitParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with Snowflake.
	connectionString?: null | string @go(ConnectionString,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A key_vault_password block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
	keyVaultPassword?: [...#LinkedServiceSnowflakeKeyVaultPasswordInitParameters] @go(KeyVaultPassword,[]LinkedServiceSnowflakeKeyVaultPasswordInitParameters)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceSnowflakeKeyVaultPasswordInitParameters: {
	// Specifies the secret name in Azure Key Vault that stores Snowflake password.
	secretName?: null | string @go(SecretName,*string)
}

#LinkedServiceSnowflakeKeyVaultPasswordObservation: {
	// Specifies the name of an existing Key Vault Data Factory Linked Service.
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies the secret name in Azure Key Vault that stores Snowflake password.
	secretName?: null | string @go(SecretName,*string)
}

#LinkedServiceSnowflakeKeyVaultPasswordParameters: {
	// Specifies the name of an existing Key Vault Data Factory Linked Service.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.LinkedServiceKeyVault
	// +kubebuilder:validation:Optional
	linkedServiceName?: null | string @go(LinkedServiceName,*string)

	// Specifies the secret name in Azure Key Vault that stores Snowflake password.
	// +kubebuilder:validation:Optional
	secretName?: null | string @go(SecretName,*string)
}

#LinkedServiceSnowflakeObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with Snowflake.
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory Snowflake Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A key_vault_password block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
	keyVaultPassword?: [...#LinkedServiceSnowflakeKeyVaultPasswordObservation] @go(KeyVaultPassword,[]LinkedServiceSnowflakeKeyVaultPasswordObservation)

	// A map of parameters to associate with the Data Factory Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceSnowflakeParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with Snowflake.
	// +kubebuilder:validation:Optional
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A key_vault_password block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	keyVaultPassword?: [...#LinkedServiceSnowflakeKeyVaultPasswordParameters] @go(KeyVaultPassword,[]LinkedServiceSnowflakeKeyVaultPasswordParameters)

	// A map of parameters to associate with the Data Factory Linked Service.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// LinkedServiceSnowflakeSpec defines the desired state of LinkedServiceSnowflake
#LinkedServiceSnowflakeSpec: {
	forProvider: #LinkedServiceSnowflakeParameters @go(ForProvider)

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
	initProvider?: #LinkedServiceSnowflakeInitParameters @go(InitProvider)
}

// LinkedServiceSnowflakeStatus defines the observed state of LinkedServiceSnowflake.
#LinkedServiceSnowflakeStatus: {
	atProvider?: #LinkedServiceSnowflakeObservation @go(AtProvider)
}

// LinkedServiceSnowflake is the Schema for the LinkedServiceSnowflakes API. Manages a Linked Service (connection) between Snowflake and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceSnowflake: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.connectionString) || (has(self.initProvider) && has(self.initProvider.connectionString))",message="spec.forProvider.connectionString is a required parameter"
	spec:    #LinkedServiceSnowflakeSpec   @go(Spec)
	status?: #LinkedServiceSnowflakeStatus @go(Status)
}

// LinkedServiceSnowflakeList contains a list of LinkedServiceSnowflakes
#LinkedServiceSnowflakeList: {
	items: [...#LinkedServiceSnowflake] @go(Items,[]LinkedServiceSnowflake)
}
