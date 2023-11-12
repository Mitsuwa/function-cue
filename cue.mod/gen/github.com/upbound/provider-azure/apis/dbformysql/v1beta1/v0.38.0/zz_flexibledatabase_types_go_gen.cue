// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbformysql/v1beta1

package v1beta1

#FlexibleDatabaseInitParameters: {
	// Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created.
	charset?: null | string @go(Charset,*string)

	// Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created.
	collation?: null | string @go(Collation,*string)
}

#FlexibleDatabaseObservation: {
	// Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created.
	charset?: null | string @go(Charset,*string)

	// Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created.
	collation?: null | string @go(Collation,*string)

	// The ID of the MySQL Database.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
	serverName?: null | string @go(ServerName,*string)
}

#FlexibleDatabaseParameters: {
	// Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	charset?: null | string @go(Charset,*string)

	// Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	collation?: null | string @go(Collation,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=FlexibleServer
	// +kubebuilder:validation:Optional
	serverName?: null | string @go(ServerName,*string)
}

// FlexibleDatabaseSpec defines the desired state of FlexibleDatabase
#FlexibleDatabaseSpec: {
	forProvider: #FlexibleDatabaseParameters @go(ForProvider)

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
	initProvider?: #FlexibleDatabaseInitParameters @go(InitProvider)
}

// FlexibleDatabaseStatus defines the observed state of FlexibleDatabase.
#FlexibleDatabaseStatus: {
	atProvider?: #FlexibleDatabaseObservation @go(AtProvider)
}

// FlexibleDatabase is the Schema for the FlexibleDatabases API. Manages a MySQL Database within a MySQL Flexible Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FlexibleDatabase: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.charset) || (has(self.initProvider) && has(self.initProvider.charset))",message="spec.forProvider.charset is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.collation) || (has(self.initProvider) && has(self.initProvider.collation))",message="spec.forProvider.collation is a required parameter"
	spec:    #FlexibleDatabaseSpec   @go(Spec)
	status?: #FlexibleDatabaseStatus @go(Status)
}

// FlexibleDatabaseList contains a list of FlexibleDatabases
#FlexibleDatabaseList: {
	items: [...#FlexibleDatabase] @go(Items,[]FlexibleDatabase)
}
