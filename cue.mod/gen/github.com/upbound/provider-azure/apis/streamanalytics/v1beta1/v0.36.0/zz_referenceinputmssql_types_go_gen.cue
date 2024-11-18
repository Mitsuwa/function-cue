// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#ReferenceInputMSSQLInitParameters: {
	// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when refresh_type is Static.
	deltaSnapshotQuery?: null | string @go(DeltaSnapshotQuery,*string)

	// The query used to retrieve the reference data from the MS SQL database.
	fullSnapshotQuery?: null | string @go(FullSnapshotQuery,*string)

	// The frequency in hh:mm:ss with which the reference data should be retrieved from the MS SQL database e.g. 00:20:00 for every 20 minutes. Must be set when refresh_type is RefreshPeriodicallyWithFull or RefreshPeriodicallyWithDelta.
	refreshIntervalDuration?: null | string @go(RefreshIntervalDuration,*string)

	// Defines whether and how the reference data should be refreshed. Accepted values are Static, RefreshPeriodicallyWithFull and RefreshPeriodicallyWithDelta.
	refreshType?: null | string @go(RefreshType,*string)

	// The name of the table in the Azure SQL database.
	table?: null | string @go(Table,*string)

	// The username to connect to the MS SQL database.
	username?: null | string @go(Username,*string)
}

#ReferenceInputMSSQLObservation: {
	// The MS SQL database name where the reference data exists.
	database?: null | string @go(Database,*string)

	// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when refresh_type is Static.
	deltaSnapshotQuery?: null | string @go(DeltaSnapshotQuery,*string)

	// The query used to retrieve the reference data from the MS SQL database.
	fullSnapshotQuery?: null | string @go(FullSnapshotQuery,*string)

	// The ID of the Stream Analytics.
	id?: null | string @go(ID,*string)

	// The frequency in hh:mm:ss with which the reference data should be retrieved from the MS SQL database e.g. 00:20:00 for every 20 minutes. Must be set when refresh_type is RefreshPeriodicallyWithFull or RefreshPeriodicallyWithDelta.
	refreshIntervalDuration?: null | string @go(RefreshIntervalDuration,*string)

	// Defines whether and how the reference data should be refreshed. Accepted values are Static, RefreshPeriodicallyWithFull and RefreshPeriodicallyWithDelta.
	refreshType?: null | string @go(RefreshType,*string)

	// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The fully qualified domain name of the MS SQL server.
	server?: null | string @go(Server,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The name of the table in the Azure SQL database.
	table?: null | string @go(Table,*string)

	// The username to connect to the MS SQL database.
	username?: null | string @go(Username,*string)
}

#ReferenceInputMSSQLParameters: {
	// The MS SQL database name where the reference data exists.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/sql/v1beta1.MSSQLDatabase
	// +kubebuilder:validation:Optional
	database?: null | string @go(Database,*string)

	// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when refresh_type is Static.
	// +kubebuilder:validation:Optional
	deltaSnapshotQuery?: null | string @go(DeltaSnapshotQuery,*string)

	// The query used to retrieve the reference data from the MS SQL database.
	// +kubebuilder:validation:Optional
	fullSnapshotQuery?: null | string @go(FullSnapshotQuery,*string)

	// The frequency in hh:mm:ss with which the reference data should be retrieved from the MS SQL database e.g. 00:20:00 for every 20 minutes. Must be set when refresh_type is RefreshPeriodicallyWithFull or RefreshPeriodicallyWithDelta.
	// +kubebuilder:validation:Optional
	refreshIntervalDuration?: null | string @go(RefreshIntervalDuration,*string)

	// Defines whether and how the reference data should be refreshed. Accepted values are Static, RefreshPeriodicallyWithFull and RefreshPeriodicallyWithDelta.
	// +kubebuilder:validation:Optional
	refreshType?: null | string @go(RefreshType,*string)

	// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The fully qualified domain name of the MS SQL server.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/sql/v1beta1.MSSQLServer
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("fully_qualified_domain_name",true)
	// +kubebuilder:validation:Optional
	server?: null | string @go(Server,*string)

	// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	streamAnalyticsJobName?: null | string @go(StreamAnalyticsJobName,*string)

	// The name of the table in the Azure SQL database.
	// +kubebuilder:validation:Optional
	table?: null | string @go(Table,*string)

	// The username to connect to the MS SQL database.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

// ReferenceInputMSSQLSpec defines the desired state of ReferenceInputMSSQL
#ReferenceInputMSSQLSpec: {
	forProvider: #ReferenceInputMSSQLParameters @go(ForProvider)

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
	initProvider?: #ReferenceInputMSSQLInitParameters @go(InitProvider)
}

// ReferenceInputMSSQLStatus defines the observed state of ReferenceInputMSSQL.
#ReferenceInputMSSQLStatus: {
	atProvider?: #ReferenceInputMSSQLObservation @go(AtProvider)
}

// ReferenceInputMSSQL is the Schema for the ReferenceInputMSSQLs API. Manages a Stream Analytics Reference Input from MS SQL.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ReferenceInputMSSQL: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.fullSnapshotQuery) || has(self.initProvider.fullSnapshotQuery)",message="fullSnapshotQuery is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.passwordSecretRef)",message="passwordSecretRef is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.refreshType) || has(self.initProvider.refreshType)",message="refreshType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.username) || has(self.initProvider.username)",message="username is a required parameter"
	spec:    #ReferenceInputMSSQLSpec   @go(Spec)
	status?: #ReferenceInputMSSQLStatus @go(Status)
}

// ReferenceInputMSSQLList contains a list of ReferenceInputMSSQLs
#ReferenceInputMSSQLList: {
	items: [...#ReferenceInputMSSQL] @go(Items,[]ReferenceInputMSSQL)
}
