// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-azure/apis/database/v1beta1

package v1beta1

import apisv1alpha3 "github.com/crossplane-contrib/provider-azure/apis/v1alpha3"

#StateDisabled: "Disabled"
#StateDropping: "Dropping"
#StateReady:    "Ready"

#PostgreSQLServerPort: "5432"

// A MySQLServer is a managed resource that represents an Azure MySQL Database
// Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="VERSION",type="string",JSONPath=".spec.forProvider.version"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MySQLServer: {
	spec:    #SQLServerSpec   @go(Spec)
	status?: #SQLServerStatus @go(Status)
}

// MySQLServerList contains a list of MySQLServer.
#MySQLServerList: {
	items: [...#MySQLServer] @go(Items,[]MySQLServer)
}

// A PostgreSQLServer is a managed resource that represents an Azure PostgreSQL
// Database Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="VERSION",type="string",JSONPath=".spec.forProvider.version"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PostgreSQLServer: {
	spec:    #SQLServerSpec   @go(Spec)
	status?: #SQLServerStatus @go(Status)
}

// PostgreSQLServerList contains a list of PostgreSQLServer.
#PostgreSQLServerList: {
	items: [...#PostgreSQLServer] @go(Items,[]PostgreSQLServer)
}

// SKU billing information related properties of a server.
#SKU: {
	// Tier - The tier of the particular SKU.
	// Possible values include: 'Basic', 'GeneralPurpose', 'MemoryOptimized'
	// +kubebuilder:validation:Enum=Basic;GeneralPurpose;MemoryOptimized
	tier: string @go(Tier)

	// Capacity - The scale up/out capacity, representing server's compute units.
	capacity: int @go(Capacity)

	// Size - The size code, to be interpreted by resource as appropriate.
	// +optional
	size?: null | string @go(Size,*string)

	// Family - The family of hardware.
	family: string @go(Family)
}

// StorageProfile storage Profile properties of a server
#StorageProfile: {
	// BackupRetentionDays - Backup retention days for the server.
	// +optional
	backupRetentionDays?: null | int @go(BackupRetentionDays,*int)

	// GeoRedundantBackup - Enable Geo-redundant or not for server backup.
	// Possible values include: 'Enabled', 'Disabled'
	// +kubebuilder:validation:Enum=Enabled;Disabled
	// +optional
	geoRedundantBackup?: null | string @go(GeoRedundantBackup,*string)

	// StorageMB - Max storage allowed for a server.
	storageMB: int @go(StorageMB)

	// StorageAutogrow - Enable Storage Auto Grow.
	// Possible values include: 'Enabled', 'Disabled'
	// +kubebuilder:validation:Enum=Enabled;Disabled
	// +optional
	storageAutogrow?: null | string @go(StorageAutogrow,*string)
}

// SQLServerParameters define the desired state of an Azure SQL Database, either
// PostgreSQL or MySQL.
#SQLServerParameters: {
	// ResourceGroupName specifies the name of the resource group that should
	// contain this SQLServer.
	// +immutable
	resourceGroupName?: string @go(ResourceGroupName)

	// SKU is the billing information related properties of the server.
	sku: #SKU @go(SKU)

	// Location specifies the location of this SQLServer.
	// +immutable
	location: string @go(Location)

	// AdministratorLogin - The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
	// +immutable
	administratorLogin: string @go(AdministratorLogin)

	// MinimalTLSVersion - control TLS connection policy
	minimalTlsVersion?: string @go(MinimalTLSVersion)

	// PublicNetworkAccess - Whether or not public network access is allowed for
	// this server. Value is optional but if passed in,
	// must be 'Enabled' or 'Disabled'.
	// +kubebuilder:validation:Enum=Enabled;Disabled
	// +optional
	publicNetworkAccess?: null | string @go(PublicNetworkAccess,*string)

	// CreateMode - Possible values include: 'CreateModeDefault', 'CreateModePointInTimeRestore', 'CreateModeGeoRestore', 'CreateModeReplica'
	// +optional
	createMode?: null | #CreateMode @go(CreateMode,*CreateMode)

	// SourceServerID - The server to restore from when restoring or creating replicas
	// +optional
	sourceServerID?: null | string @go(SourceServerID,*string)

	// Tags - Application-specific metadata in the form of key-value pairs.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)

	// Version - Server version.
	version: string @go(Version)

	// SSLEnforcement - Enable ssl enforcement or not when connect to server. Possible values include: 'Enabled', 'Disabled'
	// +kubebuilder:validation:Enum=Enabled;Disabled
	sslEnforcement: string @go(SSLEnforcement)

	// StorageProfile - Storage profile of a server.
	storageProfile: #StorageProfile @go(StorageProfile)
}

// CreateMode controls the creation behaviour
// Keep synced with "github.com/Azure/azure-sdk-for-go/services/postgresql/mgmt/2017-12-01/postgresql".CreateMode
// +kubebuilder:validation:Enum=Default;GeoRestore;PointInTimeRestore;Replica
#CreateMode: string // #enumCreateMode

#enumCreateMode:
	#CreateModeDefault |
	#CreateModeReplica |
	#CreateModeGeoRestore |
	#CreateModePointInTimeRestore

#CreateModeDefault:            #CreateMode & "Default"
#CreateModeReplica:            #CreateMode & "Replica"
#CreateModeGeoRestore:         #CreateMode & "GeoRestore"
#CreateModePointInTimeRestore: #CreateMode & "PointInTimeRestore"

// A SQLServerSpec defines the desired state of a SQLServer.
#SQLServerSpec: {
	forProvider: #SQLServerParameters @go(ForProvider)
}

// SQLServerObservation represents the current state of Azure SQL resource.
#SQLServerObservation: {
	// ID - Resource ID
	id?: string @go(ID)

	// Name - Resource name.
	name?: string @go(Name)

	// Type - Resource type.
	type?: string @go(Type)

	// UserVisibleState - A state of a server that is visible to user.
	userVisibleState?: string @go(UserVisibleState)

	// FullyQualifiedDomainName - The fully qualified domain name of a server.
	fullyQualifiedDomainName?: string @go(FullyQualifiedDomainName)

	// MasterServerID - The master server id of a replica server.
	masterServerId?: string @go(MasterServerID)

	// LastOperation represents the state of the last operation started by the
	// controller.
	lastOperation?: apisv1alpha3.#AsyncOperation @go(LastOperation)
}

// A SQLServerStatus represents the observed state of a SQLServer.
#SQLServerStatus: {
	atProvider?: #SQLServerObservation @go(AtProvider)
}
