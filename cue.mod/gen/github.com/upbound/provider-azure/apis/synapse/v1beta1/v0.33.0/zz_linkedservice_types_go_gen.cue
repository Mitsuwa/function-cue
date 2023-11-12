// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#IntegrationRuntimeObservation: {
	// The integration runtime reference to associate with the Synapse Linked Service.
	name?: null | string @go(Name,*string)

	// A map of parameters to associate with the integration runtime.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#IntegrationRuntimeParameters: {
	// The integration runtime reference to associate with the Synapse Linked Service.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.IntegrationRuntimeAzure
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// A map of parameters to associate with the integration runtime.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceObservation: {
	// A map of additional properties to associate with the Synapse Linked Service.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Synapse Linked Service.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The description for the Synapse Linked Service.
	description?: null | string @go(Description,*string)

	// The ID of the Synapse Linked Service.
	id?: null | string @go(ID,*string)

	// A integration_runtime block as defined below.
	integrationRuntime?: [...#IntegrationRuntimeObservation] @go(IntegrationRuntime,[]IntegrationRuntimeObservation)

	// A map of parameters to associate with the Synapse Linked Service.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The type of data stores that will be connected to Synapse. Valid Values include AmazonMWS, AmazonRdsForOracle, AmazonRdsForSqlServer, AmazonRedshift, AmazonS3, AzureBatch. Changing this forces a new resource to be created.
	// AzureBlobFS, AzureBlobStorage, AzureDataExplorer, AzureDataLakeAnalytics, AzureDataLakeStore, AzureDatabricks, AzureDatabricksDeltaLake, AzureFileStorage, AzureFunction,
	// AzureKeyVault, AzureML, AzureMLService, AzureMariaDB, AzureMySql, AzurePostgreSql, AzureSqlDW, AzureSqlDatabase, AzureSqlMI, AzureSearch, AzureStorage,
	// AzureTableStorage, Cassandra, CommonDataServiceForApps, Concur, CosmosDb, CosmosDbMongoDbApi, Couchbase, CustomDataSource, Db2, Drill,
	// Dynamics, DynamicsAX, DynamicsCrm, Eloqua, FileServer, FtpServer, GoogleAdWords, GoogleBigQuery, GoogleCloudStorage, Greenplum, HBase, HDInsight,
	// HDInsightOnDemand, HttpServer, Hdfs, Hive, Hubspot, Impala, Informix, Jira, LinkedService, Magento, MariaDB, Marketo, MicrosoftAccess, MongoDb,
	// MongoDbAtlas, MongoDbV2, MySql, Netezza, OData, Odbc, Office365, Oracle, OracleServiceCloud, Paypal, Phoenix, PostgreSql, Presto, QuickBooks,
	// Responsys, RestService, SqlServer, Salesforce, SalesforceMarketingCloud, SalesforceServiceCloud, SapBW, SapCloudForCustomer, SapEcc, SapHana, SapOpenHub,
	// SapTable, ServiceNow, Sftp, SharePointOnlineList, Shopify, Snowflake, Spark, Square, Sybase, Teradata, Vertica, Web, Xero, Zoho.
	type?: null | string @go(Type,*string)

	// A JSON object that contains the properties of the Synapse Linked Service.
	typePropertiesJson?: null | string @go(TypePropertiesJSON,*string)
}

#LinkedServiceParameters: {
	// A map of additional properties to associate with the Synapse Linked Service.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Synapse Linked Service.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The description for the Synapse Linked Service.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A integration_runtime block as defined below.
	// +kubebuilder:validation:Optional
	integrationRuntime?: [...#IntegrationRuntimeParameters] @go(IntegrationRuntime,[]IntegrationRuntimeParameters)

	// A map of parameters to associate with the Synapse Linked Service.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The type of data stores that will be connected to Synapse. Valid Values include AmazonMWS, AmazonRdsForOracle, AmazonRdsForSqlServer, AmazonRedshift, AmazonS3, AzureBatch. Changing this forces a new resource to be created.
	// AzureBlobFS, AzureBlobStorage, AzureDataExplorer, AzureDataLakeAnalytics, AzureDataLakeStore, AzureDatabricks, AzureDatabricksDeltaLake, AzureFileStorage, AzureFunction,
	// AzureKeyVault, AzureML, AzureMLService, AzureMariaDB, AzureMySql, AzurePostgreSql, AzureSqlDW, AzureSqlDatabase, AzureSqlMI, AzureSearch, AzureStorage,
	// AzureTableStorage, Cassandra, CommonDataServiceForApps, Concur, CosmosDb, CosmosDbMongoDbApi, Couchbase, CustomDataSource, Db2, Drill,
	// Dynamics, DynamicsAX, DynamicsCrm, Eloqua, FileServer, FtpServer, GoogleAdWords, GoogleBigQuery, GoogleCloudStorage, Greenplum, HBase, HDInsight,
	// HDInsightOnDemand, HttpServer, Hdfs, Hive, Hubspot, Impala, Informix, Jira, LinkedService, Magento, MariaDB, Marketo, MicrosoftAccess, MongoDb,
	// MongoDbAtlas, MongoDbV2, MySql, Netezza, OData, Odbc, Office365, Oracle, OracleServiceCloud, Paypal, Phoenix, PostgreSql, Presto, QuickBooks,
	// Responsys, RestService, SqlServer, Salesforce, SalesforceMarketingCloud, SalesforceServiceCloud, SapBW, SapCloudForCustomer, SapEcc, SapHana, SapOpenHub,
	// SapTable, ServiceNow, Sftp, SharePointOnlineList, Shopify, Snowflake, Spark, Square, Sybase, Teradata, Vertica, Web, Xero, Zoho.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// A JSON object that contains the properties of the Synapse Linked Service.
	// +kubebuilder:validation:Optional
	typePropertiesJson?: null | string @go(TypePropertiesJSON,*string)
}

// LinkedServiceSpec defines the desired state of LinkedService
#LinkedServiceSpec: {
	forProvider: #LinkedServiceParameters @go(ForProvider)
}

// LinkedServiceStatus defines the observed state of LinkedService.
#LinkedServiceStatus: {
	atProvider?: #LinkedServiceObservation @go(AtProvider)
}

// LinkedService is the Schema for the LinkedServices API. Manages a Linked Service (connection) between a resource and Azure Synapse. This is a generic resource that supports all different Linked Service Types.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedService: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.type)",message="type is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.typePropertiesJson)",message="typePropertiesJson is a required parameter"
	spec:    #LinkedServiceSpec   @go(Spec)
	status?: #LinkedServiceStatus @go(Status)
}

// LinkedServiceList contains a list of LinkedServices
#LinkedServiceList: {
	items: [...#LinkedService] @go(Items,[]LinkedService)
}
