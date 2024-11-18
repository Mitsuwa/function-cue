// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/bigquery/v1beta1

package v1beta1

#AccessRoleInitParameters: {
	// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
	iamRoleId?: null | string @go(IAMRoleID,*string)
}

#AccessRoleObservation: {
	// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
	iamRoleId?: null | string @go(IAMRoleID,*string)

	// (Output)
	// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's AWS IAM Role.
	identity?: null | string @go(Identity,*string)
}

#AccessRoleParameters: {
	// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
	// +kubebuilder:validation:Optional
	iamRoleId?: null | string @go(IAMRoleID,*string)
}

#AwsInitParameters: {
	// Authentication using Google owned service account to assume into customer's AWS IAM Role.
	// Structure is documented below.
	accessRole?: [...#AccessRoleInitParameters] @go(AccessRole,[]AccessRoleInitParameters)
}

#AwsObservation: {
	// Authentication using Google owned service account to assume into customer's AWS IAM Role.
	// Structure is documented below.
	accessRole?: [...#AccessRoleObservation] @go(AccessRole,[]AccessRoleObservation)
}

#AwsParameters: {
	// Authentication using Google owned service account to assume into customer's AWS IAM Role.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	accessRole: [...#AccessRoleParameters] @go(AccessRole,[]AccessRoleParameters)
}

#AzureInitParameters: {
	// The id of customer's directory that host the data.
	customerTenantId?: null | string @go(CustomerTenantID,*string)

	// The Azure Application (client) ID where the federated credentials will be hosted.
	federatedApplicationClientId?: null | string @go(FederatedApplicationClientID,*string)
}

#AzureObservation: {
	// (Output)
	// The name of the Azure Active Directory Application.
	application?: null | string @go(Application,*string)

	// (Output)
	// The client id of the Azure Active Directory Application.
	clientId?: null | string @go(ClientID,*string)

	// The id of customer's directory that host the data.
	customerTenantId?: null | string @go(CustomerTenantID,*string)

	// The Azure Application (client) ID where the federated credentials will be hosted.
	federatedApplicationClientId?: null | string @go(FederatedApplicationClientID,*string)

	// (Output)
	// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's Azure Active Directory Application.
	identity?: null | string @go(Identity,*string)

	// (Output)
	// The object id of the Azure Active Directory Application.
	objectId?: null | string @go(ObjectID,*string)

	// (Output)
	// The URL user will be redirected to after granting consent during connection setup.
	redirectUri?: null | string @go(RedirectURI,*string)
}

#AzureParameters: {
	// The id of customer's directory that host the data.
	// +kubebuilder:validation:Optional
	customerTenantId?: null | string @go(CustomerTenantID,*string)

	// The Azure Application (client) ID where the federated credentials will be hosted.
	// +kubebuilder:validation:Optional
	federatedApplicationClientId?: null | string @go(FederatedApplicationClientID,*string)
}

#CloudResourceInitParameters: {
}

#CloudResourceObservation: {
	// (Output)
	// The account ID of the service created for the purpose of this connection.
	serviceAccountId?: null | string @go(ServiceAccountID,*string)
}

#CloudResourceParameters: {
}

#CloudSQLInitParameters: {
	// Cloud SQL properties.
	// Structure is documented below.
	credential?: [...#CredentialInitParameters] @go(Credential,[]CredentialInitParameters)

	// Type of the Cloud SQL database.
	// Possible values are: DATABASE_TYPE_UNSPECIFIED, POSTGRES, MYSQL.
	type?: null | string @go(Type,*string)
}

#CloudSQLObservation: {
	// Cloud SQL properties.
	// Structure is documented below.
	credential?: [...#CredentialObservation] @go(Credential,[]CredentialObservation)

	// Database name.
	database?: null | string @go(Database,*string)

	// Cloud SQL instance ID in the form project:location:instance.
	instanceId?: null | string @go(InstanceID,*string)

	// (Output)
	// When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
	serviceAccountId?: null | string @go(ServiceAccountID,*string)

	// Type of the Cloud SQL database.
	// Possible values are: DATABASE_TYPE_UNSPECIFIED, POSTGRES, MYSQL.
	type?: null | string @go(Type,*string)
}

#CloudSQLParameters: {
	// Cloud SQL properties.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	credential: [...#CredentialParameters] @go(Credential,[]CredentialParameters)

	// Database name.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/sql/v1beta1.Database
	// +kubebuilder:validation:Optional
	database?: null | string @go(Database,*string)

	// Cloud SQL instance ID in the form project:location:instance.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/sql/v1beta1.DatabaseInstance
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("connection_name",true)
	// +kubebuilder:validation:Optional
	instanceId?: null | string @go(InstanceID,*string)

	// Type of the Cloud SQL database.
	// Possible values are: DATABASE_TYPE_UNSPECIFIED, POSTGRES, MYSQL.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#CloudSpannerInitParameters: {
	// Cloud Spanner database in the form `project/instance/database'
	database?: null | string @go(Database,*string)

	// If parallelism should be used when reading from Cloud Spanner
	useParallelism?: null | bool @go(UseParallelism,*bool)

	// If the serverless analytics service should be used to read data from Cloud Spanner. useParallelism must be set when using serverless analytics
	useServerlessAnalytics?: null | bool @go(UseServerlessAnalytics,*bool)
}

#CloudSpannerObservation: {
	// Cloud Spanner database in the form `project/instance/database'
	database?: null | string @go(Database,*string)

	// If parallelism should be used when reading from Cloud Spanner
	useParallelism?: null | bool @go(UseParallelism,*bool)

	// If the serverless analytics service should be used to read data from Cloud Spanner. useParallelism must be set when using serverless analytics
	useServerlessAnalytics?: null | bool @go(UseServerlessAnalytics,*bool)
}

#CloudSpannerParameters: {
	// Cloud Spanner database in the form `project/instance/database'
	// +kubebuilder:validation:Optional
	database?: null | string @go(Database,*string)

	// If parallelism should be used when reading from Cloud Spanner
	// +kubebuilder:validation:Optional
	useParallelism?: null | bool @go(UseParallelism,*bool)

	// If the serverless analytics service should be used to read data from Cloud Spanner. useParallelism must be set when using serverless analytics
	// +kubebuilder:validation:Optional
	useServerlessAnalytics?: null | bool @go(UseServerlessAnalytics,*bool)
}

#ConnectionInitParameters: {
	// Connection properties specific to Amazon Web Services.
	// Structure is documented below.
	aws?: [...#AwsInitParameters] @go(Aws,[]AwsInitParameters)

	// Container for connection properties specific to Azure.
	// Structure is documented below.
	azure?: [...#AzureInitParameters] @go(Azure,[]AzureInitParameters)

	// Container for connection properties for delegation of access to GCP resources.
	// Structure is documented below.
	cloudResource?: [...#CloudResourceInitParameters] @go(CloudResource,[]CloudResourceInitParameters)

	// Connection properties specific to the Cloud SQL.
	// Structure is documented below.
	cloudSql?: [...#CloudSQLInitParameters] @go(CloudSQL,[]CloudSQLInitParameters)

	// Connection properties specific to Cloud Spanner
	// Structure is documented below.
	cloudSpanner?: [...#CloudSpannerInitParameters] @go(CloudSpanner,[]CloudSpannerInitParameters)

	// Optional connection id that should be assigned to the created connection.
	connectionId?: null | string @go(ConnectionID,*string)

	// A descriptive description for the connection
	description?: null | string @go(Description,*string)

	// A descriptive name for the connection
	friendlyName?: null | string @go(FriendlyName,*string)

	// The geographic location where the connection should reside.
	// Cloud SQL instance must be in the same location as the connection
	// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
	// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
	// Spanner Connections same as spanner region
	// AWS allowed regions are aws-us-east-1
	// Azure allowed regions are azure-eastus2
	location?: null | string @go(Location,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#ConnectionObservation: {
	// Connection properties specific to Amazon Web Services.
	// Structure is documented below.
	aws?: [...#AwsObservation] @go(Aws,[]AwsObservation)

	// Container for connection properties specific to Azure.
	// Structure is documented below.
	azure?: [...#AzureObservation] @go(Azure,[]AzureObservation)

	// Container for connection properties for delegation of access to GCP resources.
	// Structure is documented below.
	cloudResource?: [...#CloudResourceObservation] @go(CloudResource,[]CloudResourceObservation)

	// Connection properties specific to the Cloud SQL.
	// Structure is documented below.
	cloudSql?: [...#CloudSQLObservation] @go(CloudSQL,[]CloudSQLObservation)

	// Connection properties specific to Cloud Spanner
	// Structure is documented below.
	cloudSpanner?: [...#CloudSpannerObservation] @go(CloudSpanner,[]CloudSpannerObservation)

	// Optional connection id that should be assigned to the created connection.
	connectionId?: null | string @go(ConnectionID,*string)

	// A descriptive description for the connection
	description?: null | string @go(Description,*string)

	// A descriptive name for the connection
	friendlyName?: null | string @go(FriendlyName,*string)

	// True if the connection has credential assigned.
	hasCredential?: null | bool @go(HasCredential,*bool)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
	id?: null | string @go(ID,*string)

	// The geographic location where the connection should reside.
	// Cloud SQL instance must be in the same location as the connection
	// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
	// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
	// Spanner Connections same as spanner region
	// AWS allowed regions are aws-us-east-1
	// Azure allowed regions are azure-eastus2
	location?: null | string @go(Location,*string)

	// The resource name of the connection in the form of:
	// "projects/{project_id}/locations/{location_id}/connections/{connectionId}"
	name?: null | string @go(Name,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#ConnectionParameters: {
	// Connection properties specific to Amazon Web Services.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	aws?: [...#AwsParameters] @go(Aws,[]AwsParameters)

	// Container for connection properties specific to Azure.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	azure?: [...#AzureParameters] @go(Azure,[]AzureParameters)

	// Container for connection properties for delegation of access to GCP resources.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cloudResource?: [...#CloudResourceParameters] @go(CloudResource,[]CloudResourceParameters)

	// Connection properties specific to the Cloud SQL.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cloudSql?: [...#CloudSQLParameters] @go(CloudSQL,[]CloudSQLParameters)

	// Connection properties specific to Cloud Spanner
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cloudSpanner?: [...#CloudSpannerParameters] @go(CloudSpanner,[]CloudSpannerParameters)

	// Optional connection id that should be assigned to the created connection.
	// +kubebuilder:validation:Optional
	connectionId?: null | string @go(ConnectionID,*string)

	// A descriptive description for the connection
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A descriptive name for the connection
	// +kubebuilder:validation:Optional
	friendlyName?: null | string @go(FriendlyName,*string)

	// The geographic location where the connection should reside.
	// Cloud SQL instance must be in the same location as the connection
	// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
	// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
	// Spanner Connections same as spanner region
	// AWS allowed regions are aws-us-east-1
	// Azure allowed regions are azure-eastus2
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#CredentialInitParameters: {
}

#CredentialObservation: {
	// Username for database.
	username?: null | string @go(Username,*string)
}

#CredentialParameters: {
	// Username for database.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/sql/v1beta1.User
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

// ConnectionSpec defines the desired state of Connection
#ConnectionSpec: {
	forProvider: #ConnectionParameters @go(ForProvider)

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
	initProvider?: #ConnectionInitParameters @go(InitProvider)
}

// ConnectionStatus defines the observed state of Connection.
#ConnectionStatus: {
	atProvider?: #ConnectionObservation @go(AtProvider)
}

// Connection is the Schema for the Connections API. A connection allows BigQuery connections to external data sources.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Connection: {
	spec:    #ConnectionSpec   @go(Spec)
	status?: #ConnectionStatus @go(Status)
}

// ConnectionList contains a list of Connections
#ConnectionList: {
	items: [...#Connection] @go(Items,[]Connection)
}
