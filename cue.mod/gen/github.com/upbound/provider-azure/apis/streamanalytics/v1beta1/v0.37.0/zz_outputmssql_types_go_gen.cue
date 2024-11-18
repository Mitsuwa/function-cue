// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputMSSQLInitParameters: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
	database?: null | string @go(Database,*string)

	// The max batch count to write to the SQL Database. Defaults to 10000. Possible values are between 1 and 1073741824.
	maxBatchCount?: null | float64 @go(MaxBatchCount,*float64)

	// The max writer count for the SQL Database. Defaults to 1. Possible values are 0 which bases the writer count on the query partition and 1 which corresponds to a single writer.
	maxWriterCount?: null | float64 @go(MaxWriterCount,*float64)

	// The name of the Stream Output. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if authentication_mode is ConnectionString.
	user?: null | string @go(User,*string)
}

#OutputMSSQLObservation: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
	database?: null | string @go(Database,*string)

	// The ID of the Stream Analytics Output Microsoft SQL Server Database.
	id?: null | string @go(ID,*string)

	// The max batch count to write to the SQL Database. Defaults to 10000. Possible values are between 1 and 1073741824.
	maxBatchCount?: null | float64 @go(MaxBatchCount,*float64)

	// The max writer count for the SQL Database. Defaults to 1. Possible values are 0 which bases the writer count on the query partition and 1 which corresponds to a single writer.
	maxWriterCount?: null | float64 @go(MaxWriterCount,*float64)

	// The name of the Stream Output. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SQL server url. Changing this forces a new resource to be created.
	server?: null | string @go(Server,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// Table in the database that the output points to. Changing this forces a new resource to be created.
	table?: null | string @go(Table,*string)

	// Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if authentication_mode is ConnectionString.
	user?: null | string @go(User,*string)
}

#OutputMSSQLParameters: {
	// The authentication mode for the Stream Output. Possible values are Msi and ConnectionString. Defaults to ConnectionString.
	// +kubebuilder:validation:Optional
	authenticationMode?: null | string @go(AuthenticationMode,*string)

	// The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	database?: null | string @go(Database,*string)

	// The max batch count to write to the SQL Database. Defaults to 10000. Possible values are between 1 and 1073741824.
	// +kubebuilder:validation:Optional
	maxBatchCount?: null | float64 @go(MaxBatchCount,*float64)

	// The max writer count for the SQL Database. Defaults to 1. Possible values are 0 which bases the writer count on the query partition and 1 which corresponds to a single writer.
	// +kubebuilder:validation:Optional
	maxWriterCount?: null | float64 @go(MaxWriterCount,*float64)

	// The name of the Stream Output. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The SQL server url. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/sql/v1beta1.MSSQLServer
	// +kubebuilder:validation:Optional
	server?: null | string @go(Server,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Job
	// +kubebuilder:validation:Optional
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// Table in the database that the output points to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Table
	// +kubebuilder:validation:Optional
	table?: null | string @go(Table,*string)

	// Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if authentication_mode is ConnectionString.
	// +kubebuilder:validation:Optional
	user?: null | string @go(User,*string)
}

// OutputMSSQLSpec defines the desired state of OutputMSSQL
#OutputMSSQLSpec: {
	forProvider: #OutputMSSQLParameters @go(ForProvider)

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
	initProvider?: #OutputMSSQLInitParameters @go(InitProvider)
}

// OutputMSSQLStatus defines the observed state of OutputMSSQL.
#OutputMSSQLStatus: {
	atProvider?: #OutputMSSQLObservation @go(AtProvider)
}

// OutputMSSQL is the Schema for the OutputMSSQLs API. Manages a Stream Analytics Output to Microsoft SQL Server Database.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputMSSQL: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.database) || (has(self.initProvider) && has(self.initProvider.database))",message="spec.forProvider.database is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #OutputMSSQLSpec   @go(Spec)
	status?: #OutputMSSQLStatus @go(Status)
}

// OutputMSSQLList contains a list of OutputMSSQLs
#OutputMSSQLList: {
	items: [...#OutputMSSQL] @go(Items,[]OutputMSSQL)
}
