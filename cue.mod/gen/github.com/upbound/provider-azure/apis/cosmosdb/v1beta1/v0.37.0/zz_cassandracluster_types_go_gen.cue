// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cosmosdb/v1beta1

package v1beta1

#CassandraClusterIdentityInitParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#CassandraClusterIdentityObservation: {
	// The ID of the Cassandra Cluster.
	principalId?: null | string @go(PrincipalID,*string)

	// The ID of the Cassandra Cluster.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is SystemAssigned.
	type?: null | string @go(Type,*string)
}

#CassandraClusterIdentityParameters: {
	// Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is SystemAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#CassandraClusterInitParameters: {
	// The authentication method that is used to authenticate clients. Possible values are None and Cassandra. Defaults to Cassandra.
	authenticationMethod?: null | string @go(AuthenticationMethod,*string)

	// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
	clientCertificatePems?: [...null | string] @go(ClientCertificatePems,[]*string)

	// A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
	externalGossipCertificatePems?: [...null | string] @go(ExternalGossipCertificatePems,[]*string)

	// A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
	externalSeedNodeIpAddresses?: [...null | string] @go(ExternalSeedNodeIPAddresses,[]*string)

	// The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to 24.
	hoursBetweenBackups?: null | float64 @go(HoursBetweenBackups,*float64)

	// An identity block as defined below.
	identity?: [...#CassandraClusterIdentityInitParameters] @go(Identity,[]CassandraClusterIdentityInitParameters)

	// The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
	location?: null | string @go(Location,*string)

	// Is the automatic repair enabled on the Cassandra Cluster? Defaults to true.
	repairEnabled?: null | bool @go(RepairEnabled,*bool)

	// A mapping of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of Cassandra what the Cluster converges to run. Possible values are 3.11 and 4.0. Defaults to 3.11. Changing this forces a new Cassandra Cluster to be created.
	version?: null | string @go(Version,*string)
}

#CassandraClusterObservation: {
	// The authentication method that is used to authenticate clients. Possible values are None and Cassandra. Defaults to Cassandra.
	authenticationMethod?: null | string @go(AuthenticationMethod,*string)

	// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
	clientCertificatePems?: [...null | string] @go(ClientCertificatePems,[]*string)

	// The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
	delegatedManagementSubnetId?: null | string @go(DelegatedManagementSubnetID,*string)

	// A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
	externalGossipCertificatePems?: [...null | string] @go(ExternalGossipCertificatePems,[]*string)

	// A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
	externalSeedNodeIpAddresses?: [...null | string] @go(ExternalSeedNodeIPAddresses,[]*string)

	// The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to 24.
	hoursBetweenBackups?: null | float64 @go(HoursBetweenBackups,*float64)

	// The ID of the Cassandra Cluster.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#CassandraClusterIdentityObservation] @go(Identity,[]CassandraClusterIdentityObservation)

	// The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
	location?: null | string @go(Location,*string)

	// Is the automatic repair enabled on the Cassandra Cluster? Defaults to true.
	repairEnabled?: null | bool @go(RepairEnabled,*bool)

	// The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of Cassandra what the Cluster converges to run. Possible values are 3.11 and 4.0. Defaults to 3.11. Changing this forces a new Cassandra Cluster to be created.
	version?: null | string @go(Version,*string)
}

#CassandraClusterParameters: {
	// The authentication method that is used to authenticate clients. Possible values are None and Cassandra. Defaults to Cassandra.
	// +kubebuilder:validation:Optional
	authenticationMethod?: null | string @go(AuthenticationMethod,*string)

	// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
	// +kubebuilder:validation:Optional
	clientCertificatePems?: [...null | string] @go(ClientCertificatePems,[]*string)

	// The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	delegatedManagementSubnetId?: null | string @go(DelegatedManagementSubnetID,*string)

	// A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
	// +kubebuilder:validation:Optional
	externalGossipCertificatePems?: [...null | string] @go(ExternalGossipCertificatePems,[]*string)

	// A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
	// +kubebuilder:validation:Optional
	externalSeedNodeIpAddresses?: [...null | string] @go(ExternalSeedNodeIPAddresses,[]*string)

	// The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to 24.
	// +kubebuilder:validation:Optional
	hoursBetweenBackups?: null | float64 @go(HoursBetweenBackups,*float64)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#CassandraClusterIdentityParameters] @go(Identity,[]CassandraClusterIdentityParameters)

	// The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Is the automatic repair enabled on the Cassandra Cluster? Defaults to true.
	// +kubebuilder:validation:Optional
	repairEnabled?: null | bool @go(RepairEnabled,*bool)

	// The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags assigned to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The version of Cassandra what the Cluster converges to run. Possible values are 3.11 and 4.0. Defaults to 3.11. Changing this forces a new Cassandra Cluster to be created.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

// CassandraClusterSpec defines the desired state of CassandraCluster
#CassandraClusterSpec: {
	forProvider: #CassandraClusterParameters @go(ForProvider)

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
	initProvider?: #CassandraClusterInitParameters @go(InitProvider)
}

// CassandraClusterStatus defines the observed state of CassandraCluster.
#CassandraClusterStatus: {
	atProvider?: #CassandraClusterObservation @go(AtProvider)
}

// CassandraCluster is the Schema for the CassandraClusters API. Manages a Cassandra Cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#CassandraCluster: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.defaultAdminPasswordSecretRef)",message="spec.forProvider.defaultAdminPasswordSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #CassandraClusterSpec   @go(Spec)
	status?: #CassandraClusterStatus @go(Status)
}

// CassandraClusterList contains a list of CassandraClusters
#CassandraClusterList: {
	items: [...#CassandraCluster] @go(Items,[]CassandraCluster)
}
