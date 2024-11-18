// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/kusto/v1beta1

package v1beta1

#AttachedDatabaseConfigurationInitParameters: {
	// The default principals modification kind. Valid values are: None (default), Replace and Union.
	defaultPrincipalModificationKind?: null | string @go(DefaultPrincipalModificationKind,*string)

	// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// A sharing block as defined below.
	sharing?: [...#SharingInitParameters] @go(Sharing,[]SharingInitParameters)
}

#AttachedDatabaseConfigurationObservation: {
	// The list of databases from the cluster_resource_id which are currently attached to the cluster.
	attachedDatabaseNames?: [...null | string] @go(AttachedDatabaseNames,[]*string)

	// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	clusterName?: null | string @go(ClusterName,*string)

	// The resource id of the cluster where the databases you would like to attach reside. Changing this forces a new resource to be created.
	clusterResourceId?: null | string @go(ClusterResourceID,*string)

	// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
	databaseName?: null | string @go(DatabaseName,*string)

	// The default principals modification kind. Valid values are: None (default), Replace and Union.
	defaultPrincipalModificationKind?: null | string @go(DefaultPrincipalModificationKind,*string)

	// The Kusto Attached Database Configuration ID.
	id?: null | string @go(ID,*string)

	// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A sharing block as defined below.
	sharing?: [...#SharingObservation] @go(Sharing,[]SharingObservation)
}

#AttachedDatabaseConfigurationParameters: {
	// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Cluster
	// +kubebuilder:validation:Optional
	clusterName?: null | string @go(ClusterName,*string)

	// The resource id of the cluster where the databases you would like to attach reside. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Cluster
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	clusterResourceId?: null | string @go(ClusterResourceID,*string)

	// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Database
	// +kubebuilder:validation:Optional
	databaseName?: null | string @go(DatabaseName,*string)

	// The default principals modification kind. Valid values are: None (default), Replace and Union.
	// +kubebuilder:validation:Optional
	defaultPrincipalModificationKind?: null | string @go(DefaultPrincipalModificationKind,*string)

	// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A sharing block as defined below.
	// +kubebuilder:validation:Optional
	sharing?: [...#SharingParameters] @go(Sharing,[]SharingParameters)
}

#SharingInitParameters: {
	// List of external tables exclude from the follower database.
	externalTablesToExclude?: [...null | string] @go(ExternalTablesToExclude,[]*string)

	// List of external tables to include in the follower database.
	externalTablesToInclude?: [...null | string] @go(ExternalTablesToInclude,[]*string)

	// List of materialized views exclude from the follower database.
	materializedViewsToExclude?: [...null | string] @go(MaterializedViewsToExclude,[]*string)

	// List of materialized views to include in the follower database.
	materializedViewsToInclude?: [...null | string] @go(MaterializedViewsToInclude,[]*string)

	// List of tables to exclude from the follower database.
	tablesToExclude?: [...null | string] @go(TablesToExclude,[]*string)

	// List of tables to include in the follower database.
	tablesToInclude?: [...null | string] @go(TablesToInclude,[]*string)
}

#SharingObservation: {
	// List of external tables exclude from the follower database.
	externalTablesToExclude?: [...null | string] @go(ExternalTablesToExclude,[]*string)

	// List of external tables to include in the follower database.
	externalTablesToInclude?: [...null | string] @go(ExternalTablesToInclude,[]*string)

	// List of materialized views exclude from the follower database.
	materializedViewsToExclude?: [...null | string] @go(MaterializedViewsToExclude,[]*string)

	// List of materialized views to include in the follower database.
	materializedViewsToInclude?: [...null | string] @go(MaterializedViewsToInclude,[]*string)

	// List of tables to exclude from the follower database.
	tablesToExclude?: [...null | string] @go(TablesToExclude,[]*string)

	// List of tables to include in the follower database.
	tablesToInclude?: [...null | string] @go(TablesToInclude,[]*string)
}

#SharingParameters: {
	// List of external tables exclude from the follower database.
	// +kubebuilder:validation:Optional
	externalTablesToExclude?: [...null | string] @go(ExternalTablesToExclude,[]*string)

	// List of external tables to include in the follower database.
	// +kubebuilder:validation:Optional
	externalTablesToInclude?: [...null | string] @go(ExternalTablesToInclude,[]*string)

	// List of materialized views exclude from the follower database.
	// +kubebuilder:validation:Optional
	materializedViewsToExclude?: [...null | string] @go(MaterializedViewsToExclude,[]*string)

	// List of materialized views to include in the follower database.
	// +kubebuilder:validation:Optional
	materializedViewsToInclude?: [...null | string] @go(MaterializedViewsToInclude,[]*string)

	// List of tables to exclude from the follower database.
	// +kubebuilder:validation:Optional
	tablesToExclude?: [...null | string] @go(TablesToExclude,[]*string)

	// List of tables to include in the follower database.
	// +kubebuilder:validation:Optional
	tablesToInclude?: [...null | string] @go(TablesToInclude,[]*string)
}

// AttachedDatabaseConfigurationSpec defines the desired state of AttachedDatabaseConfiguration
#AttachedDatabaseConfigurationSpec: {
	forProvider: #AttachedDatabaseConfigurationParameters @go(ForProvider)

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
	initProvider?: #AttachedDatabaseConfigurationInitParameters @go(InitProvider)
}

// AttachedDatabaseConfigurationStatus defines the observed state of AttachedDatabaseConfiguration.
#AttachedDatabaseConfigurationStatus: {
	atProvider?: #AttachedDatabaseConfigurationObservation @go(AtProvider)
}

// AttachedDatabaseConfiguration is the Schema for the AttachedDatabaseConfigurations API. Manages Kusto / Data Explorer Attached Database Configuration
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#AttachedDatabaseConfiguration: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #AttachedDatabaseConfigurationSpec   @go(Spec)
	status?: #AttachedDatabaseConfigurationStatus @go(Status)
}

// AttachedDatabaseConfigurationList contains a list of AttachedDatabaseConfigurations
#AttachedDatabaseConfigurationList: {
	items: [...#AttachedDatabaseConfiguration] @go(Items,[]AttachedDatabaseConfiguration)
}
