// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/servicelinker/v1beta1

package v1beta1

#AuthenticationInitParameters: {
	// Client ID for userAssignedIdentity or servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate. When type is set to userAssignedIdentity, client_id and subscription_id should be either both specified or both not specified.
	clientId?: null | string @go(ClientID,*string)

	// Username or account name for secret auth. name and secret should be either both specified or both not specified when type is set to secret.
	name?: null | string @go(Name,*string)

	// Principal ID for servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate.
	principalId?: null | string @go(PrincipalID,*string)

	// Subscription ID for userAssignedIdentity. subscription_id and client_id should be either both specified or both not specified.
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The authentication type. Possible values are systemAssignedIdentity, userAssignedIdentity, servicePrincipalSecret, servicePrincipalCertificate, secret. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#AuthenticationObservation: {
	// Client ID for userAssignedIdentity or servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate. When type is set to userAssignedIdentity, client_id and subscription_id should be either both specified or both not specified.
	clientId?: null | string @go(ClientID,*string)

	// Username or account name for secret auth. name and secret should be either both specified or both not specified when type is set to secret.
	name?: null | string @go(Name,*string)

	// Principal ID for servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate.
	principalId?: null | string @go(PrincipalID,*string)

	// Subscription ID for userAssignedIdentity. subscription_id and client_id should be either both specified or both not specified.
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The authentication type. Possible values are systemAssignedIdentity, userAssignedIdentity, servicePrincipalSecret, servicePrincipalCertificate, secret. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#AuthenticationParameters: {
	// Client ID for userAssignedIdentity or servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate. When type is set to userAssignedIdentity, client_id and subscription_id should be either both specified or both not specified.
	// +kubebuilder:validation:Optional
	clientId?: null | string @go(ClientID,*string)

	// Username or account name for secret auth. name and secret should be either both specified or both not specified when type is set to secret.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Principal ID for servicePrincipal auth. Should be specified when type is set to servicePrincipalSecret or servicePrincipalCertificate.
	// +kubebuilder:validation:Optional
	principalId?: null | string @go(PrincipalID,*string)

	// Subscription ID for userAssignedIdentity. subscription_id and client_id should be either both specified or both not specified.
	// +kubebuilder:validation:Optional
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The authentication type. Possible values are systemAssignedIdentity, userAssignedIdentity, servicePrincipalSecret, servicePrincipalCertificate, secret. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#SecretStoreInitParameters: {
	// The key vault id to store secret.
	keyVaultId?: null | string @go(KeyVaultID,*string)
}

#SecretStoreObservation: {
	// The key vault id to store secret.
	keyVaultId?: null | string @go(KeyVaultID,*string)
}

#SecretStoreParameters: {
	// The key vault id to store secret.
	// +kubebuilder:validation:Optional
	keyVaultId?: null | string @go(KeyVaultID,*string)
}

#SpringCloudConnectionInitParameters: {
	// The authentication info. An authentication block as defined below.
	authentication?: [...#AuthenticationInitParameters] @go(Authentication,[]AuthenticationInitParameters)

	// The application client type. Possible values are none, dotnet, java, python, go, php, ruby, django, nodejs and springBoot.
	clientType?: null | string @go(ClientType,*string)

	// The name of the service connection. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// An option to store secret value in secure place. An secret_store block as defined below.
	secretStore?: [...#SecretStoreInitParameters] @go(SecretStore,[]SecretStoreInitParameters)

	// The type of the VNet solution. Possible values are serviceEndpoint, privateLink.
	vnetSolution?: null | string @go(VnetSolution,*string)
}

#SpringCloudConnectionObservation: {
	// The authentication info. An authentication block as defined below.
	authentication?: [...#AuthenticationObservation] @go(Authentication,[]AuthenticationObservation)

	// The application client type. Possible values are none, dotnet, java, python, go, php, ruby, django, nodejs and springBoot.
	clientType?: null | string @go(ClientType,*string)

	// The ID of the service connector.
	id?: null | string @go(ID,*string)

	// The name of the service connection. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// An option to store secret value in secure place. An secret_store block as defined below.
	secretStore?: [...#SecretStoreObservation] @go(SecretStore,[]SecretStoreObservation)

	// The ID of the data source spring cloud. Changing this forces a new resource to be created.
	springCloudId?: null | string @go(SpringCloudID,*string)

	// The ID of the target resource. Changing this forces a new resource to be created. Possible values are Postgres, PostgresFlexible, Mysql, Sql, Redis, RedisEnterprise, CosmosCassandra, CosmosGremlin, CosmosMongo, CosmosSql, CosmosTable, StorageBlob, StorageQueue, StorageFile, StorageTable, AppConfig, EventHub, ServiceBus, SignalR, WebPubSub, ConfluentKafka.
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// The type of the VNet solution. Possible values are serviceEndpoint, privateLink.
	vnetSolution?: null | string @go(VnetSolution,*string)
}

#SpringCloudConnectionParameters: {
	// The authentication info. An authentication block as defined below.
	// +kubebuilder:validation:Optional
	authentication?: [...#AuthenticationParameters] @go(Authentication,[]AuthenticationParameters)

	// The application client type. Possible values are none, dotnet, java, python, go, php, ruby, django, nodejs and springBoot.
	// +kubebuilder:validation:Optional
	clientType?: null | string @go(ClientType,*string)

	// The name of the service connection. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// An option to store secret value in secure place. An secret_store block as defined below.
	// +kubebuilder:validation:Optional
	secretStore?: [...#SecretStoreParameters] @go(SecretStore,[]SecretStoreParameters)

	// The ID of the data source spring cloud. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudJavaDeployment
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudId?: null | string @go(SpringCloudID,*string)

	// The ID of the target resource. Changing this forces a new resource to be created. Possible values are Postgres, PostgresFlexible, Mysql, Sql, Redis, RedisEnterprise, CosmosCassandra, CosmosGremlin, CosmosMongo, CosmosSql, CosmosTable, StorageBlob, StorageQueue, StorageFile, StorageTable, AppConfig, EventHub, ServiceBus, SignalR, WebPubSub, ConfluentKafka.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/cosmosdb/v1beta1.SQLDatabase
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// The type of the VNet solution. Possible values are serviceEndpoint, privateLink.
	// +kubebuilder:validation:Optional
	vnetSolution?: null | string @go(VnetSolution,*string)
}

// SpringCloudConnectionSpec defines the desired state of SpringCloudConnection
#SpringCloudConnectionSpec: {
	forProvider: #SpringCloudConnectionParameters @go(ForProvider)

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
	initProvider?: #SpringCloudConnectionInitParameters @go(InitProvider)
}

// SpringCloudConnectionStatus defines the observed state of SpringCloudConnection.
#SpringCloudConnectionStatus: {
	atProvider?: #SpringCloudConnectionObservation @go(AtProvider)
}

// SpringCloudConnection is the Schema for the SpringCloudConnections API. Manages a service connector for spring cloud app.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudConnection: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.authentication) || has(self.initProvider.authentication)",message="authentication is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #SpringCloudConnectionSpec   @go(Spec)
	status?: #SpringCloudConnectionStatus @go(Status)
}

// SpringCloudConnectionList contains a list of SpringCloudConnections
#SpringCloudConnectionList: {
	items: [...#SpringCloudConnection] @go(Items,[]SpringCloudConnection)
}
