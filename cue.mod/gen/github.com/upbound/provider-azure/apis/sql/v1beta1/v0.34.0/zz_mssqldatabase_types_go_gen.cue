// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/sql/v1beta1

package v1beta1

#ImportObservation: {
	// Specifies the name of the SQL administrator.
	administratorLogin?: null | string @go(AdministratorLogin,*string)

	// Specifies the type of authentication used to access the server. Valid values are SQL or ADPassword.
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// Specifies the type of access key for the storage account. Valid values are StorageAccessKey or SharedAccessKey.
	storageKeyType?: null | string @go(StorageKeyType,*string)

	// Specifies the blob URI of the .bacpac file.
	storageUri?: null | string @go(StorageURI,*string)
}

#ImportParameters: {
	// Specifies the name of the SQL administrator.
	// +kubebuilder:validation:Required
	administratorLogin?: null | string @go(AdministratorLogin,*string)

	// Specifies the type of authentication used to access the server. Valid values are SQL or ADPassword.
	// +kubebuilder:validation:Required
	authenticationType?: null | string @go(AuthenticationType,*string)

	// The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)

	// Specifies the type of access key for the storage account. Valid values are StorageAccessKey or SharedAccessKey.
	// +kubebuilder:validation:Required
	storageKeyType?: null | string @go(StorageKeyType,*string)

	// Specifies the blob URI of the .bacpac file.
	// +kubebuilder:validation:Required
	storageUri?: null | string @go(StorageURI,*string)
}

#LongTermRetentionPolicyObservation: {
	// The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. P1Y, P1M, P4W or P30D.
	monthlyRetention?: null | string @go(MonthlyRetention,*string)

	// The week of year to take the yearly backup. Value has to be between 1 and 52.
	weekOfYear?: null | float64 @go(WeekOfYear,*float64)

	// The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. P1Y, P1M, P1W or P7D.
	weeklyRetention?: null | string @go(WeeklyRetention,*string)

	// The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. P1Y, P12M, P52W or P365D.
	yearlyRetention?: null | string @go(YearlyRetention,*string)
}

#LongTermRetentionPolicyParameters: {
	// The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. P1Y, P1M, P4W or P30D.
	// +kubebuilder:validation:Optional
	monthlyRetention?: null | string @go(MonthlyRetention,*string)

	// The week of year to take the yearly backup. Value has to be between 1 and 52.
	// +kubebuilder:validation:Optional
	weekOfYear?: null | float64 @go(WeekOfYear,*float64)

	// The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. P1Y, P1M, P1W or P7D.
	// +kubebuilder:validation:Optional
	weeklyRetention?: null | string @go(WeeklyRetention,*string)

	// The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. P1Y, P12M, P52W or P365D.
	// +kubebuilder:validation:Optional
	yearlyRetention?: null | string @go(YearlyRetention,*string)
}

#MSSQLDatabaseObservation: {
	// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled. This property is only settable for General Purpose Serverless databases.
	autoPauseDelayInMinutes?: null | float64 @go(AutoPauseDelayInMinutes,*float64)

	// Specifies the collation of the database. Changing this forces a new resource to be created.
	collation?: null | string @go(Collation,*string)

	// The create mode of the database. Possible values are Copy, Default, OnlineSecondary, PointInTimeRestore, Recovery, Restore, RestoreExternalBackup, RestoreExternalBackupSecondary, RestoreLongTermRetentionBackup and Secondary. Mutually exclusive with import. Changing this forces a new resource to be created.
	createMode?: null | string @go(CreateMode,*string)

	// The ID of the source database from which to create the new database. This should only be used for databases with create_mode values that use another database as reference. Changing this forces a new resource to be created.
	creationSourceDatabaseId?: null | string @go(CreationSourceDatabaseID,*string)

	// Specifies the ID of the elastic pool containing this database.
	elasticPoolId?: null | string @go(ElasticPoolID,*string)

	// A boolean that specifies if the Geo Backup Policy is enabled. Defaults to true.
	geoBackupEnabled?: null | bool @go(GeoBackupEnabled,*bool)

	// The ID of the MS SQL Database.
	id?: null | string @go(ID,*string)

	// A Database Import block as documented below. Mutually exclusive with create_mode.
	import?: [...#ImportObservation] @go(Import,[]ImportObservation)

	// A boolean that specifies if this is a ledger database. Defaults to false. Changing this forces a new resource to be created.
	ledgerEnabled?: null | bool @go(LedgerEnabled,*bool)

	// Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice.
	licenseType?: null | string @go(LicenseType,*string)

	// A long_term_retention_policy block as defined below.
	longTermRetentionPolicy?: [...#LongTermRetentionPolicyObservation] @go(LongTermRetentionPolicy,[]LongTermRetentionPolicyObservation)

	// The name of the Public Maintenance Configuration window to apply to the database. Valid values include SQL_Default, SQL_EastUS_DB_1, SQL_EastUS2_DB_1, SQL_SoutheastAsia_DB_1, SQL_AustraliaEast_DB_1, SQL_NorthEurope_DB_1, SQL_SouthCentralUS_DB_1, SQL_WestUS2_DB_1, SQL_UKSouth_DB_1, SQL_WestEurope_DB_1, SQL_EastUS_DB_2, SQL_EastUS2_DB_2, SQL_WestUS2_DB_2, SQL_SoutheastAsia_DB_2, SQL_AustraliaEast_DB_2, SQL_NorthEurope_DB_2, SQL_SouthCentralUS_DB_2, SQL_UKSouth_DB_2, SQL_WestEurope_DB_2, SQL_AustraliaSoutheast_DB_1, SQL_BrazilSouth_DB_1, SQL_CanadaCentral_DB_1, SQL_CanadaEast_DB_1, SQL_CentralUS_DB_1, SQL_EastAsia_DB_1, SQL_FranceCentral_DB_1, SQL_GermanyWestCentral_DB_1, SQL_CentralIndia_DB_1, SQL_SouthIndia_DB_1, SQL_JapanEast_DB_1, SQL_JapanWest_DB_1, SQL_NorthCentralUS_DB_1, SQL_UKWest_DB_1, SQL_WestUS_DB_1, SQL_AustraliaSoutheast_DB_2, SQL_BrazilSouth_DB_2, SQL_CanadaCentral_DB_2, SQL_CanadaEast_DB_2, SQL_CentralUS_DB_2, SQL_EastAsia_DB_2, SQL_FranceCentral_DB_2, SQL_GermanyWestCentral_DB_2, SQL_CentralIndia_DB_2, SQL_SouthIndia_DB_2, SQL_JapanEast_DB_2, SQL_JapanWest_DB_2, SQL_NorthCentralUS_DB_2, SQL_UKWest_DB_2, SQL_WestUS_DB_2, SQL_WestCentralUS_DB_1, SQL_FranceSouth_DB_1, SQL_WestCentralUS_DB_2, SQL_FranceSouth_DB_2, SQL_SwitzerlandNorth_DB_1, SQL_SwitzerlandNorth_DB_2, SQL_BrazilSoutheast_DB_1, SQL_UAENorth_DB_1, SQL_BrazilSoutheast_DB_2, SQL_UAENorth_DB_2. Defaults to SQL_Default.
	maintenanceConfigurationName?: null | string @go(MaintenanceConfigurationName,*string)

	// The max size of the database in gigabytes.
	maxSizeGb?: null | float64 @go(MaxSizeGb,*float64)

	// Minimal capacity that database will always have allocated, if not paused. This property is only settable for General Purpose Serverless databases.
	minCapacity?: null | float64 @go(MinCapacity,*float64)

	// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
	readReplicaCount?: null | float64 @go(ReadReplicaCount,*float64)

	// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
	readScale?: null | bool @go(ReadScale,*bool)

	// The ID of the database to be recovered. This property is only applicable when the create_mode is Recovery.
	recoverDatabaseId?: null | string @go(RecoverDatabaseID,*string)

	// The ID of the database to be restored. This property is only applicable when the create_mode is Restore.
	restoreDroppedDatabaseId?: null | string @go(RestoreDroppedDatabaseID,*string)

	// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for create_mode= PointInTimeRestore databases.
	restorePointInTime?: null | string @go(RestorePointInTime,*string)

	// Specifies the name of the sample schema to apply when creating this database. Possible value is AdventureWorksLT.
	sampleName?: null | string @go(SampleName,*string)

	// The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
	serverId?: null | string @go(ServerID,*string)

	// A short_term_retention_policy block as defined below.
	shortTermRetentionPolicy?: [...#ShortTermRetentionPolicyObservation] @go(ShortTermRetentionPolicy,[]ShortTermRetentionPolicyObservation)

	// Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100. Changing this from the HyperScale service tier to another service tier will create a new resource.
	skuName?: null | string @go(SkuName,*string)

	// Specifies the storage account type used to store backups for this database. Possible values are Geo, Local and Zone. The default value is Geo.
	storageAccountType?: null | string @go(StorageAccountType,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Threat detection policy configuration. The threat_detection_policy block supports fields documented below.
	threatDetectionPolicy?: [...#ThreatDetectionPolicyObservation] @go(ThreatDetectionPolicy,[]ThreatDetectionPolicyObservation)

	// If set to true, Transparent Data Encryption will be enabled on the database. Defaults to true.
	transparentDataEncryptionEnabled?: null | bool @go(TransparentDataEncryptionEnabled,*bool)

	// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
	zoneRedundant?: null | bool @go(ZoneRedundant,*bool)
}

#MSSQLDatabaseParameters: {
	// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled. This property is only settable for General Purpose Serverless databases.
	// +kubebuilder:validation:Optional
	autoPauseDelayInMinutes?: null | float64 @go(AutoPauseDelayInMinutes,*float64)

	// Specifies the collation of the database. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	collation?: null | string @go(Collation,*string)

	// The create mode of the database. Possible values are Copy, Default, OnlineSecondary, PointInTimeRestore, Recovery, Restore, RestoreExternalBackup, RestoreExternalBackupSecondary, RestoreLongTermRetentionBackup and Secondary. Mutually exclusive with import. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	createMode?: null | string @go(CreateMode,*string)

	// The ID of the source database from which to create the new database. This should only be used for databases with create_mode values that use another database as reference. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	creationSourceDatabaseId?: null | string @go(CreationSourceDatabaseID,*string)

	// Specifies the ID of the elastic pool containing this database.
	// +kubebuilder:validation:Optional
	elasticPoolId?: null | string @go(ElasticPoolID,*string)

	// A boolean that specifies if the Geo Backup Policy is enabled. Defaults to true.
	// +kubebuilder:validation:Optional
	geoBackupEnabled?: null | bool @go(GeoBackupEnabled,*bool)

	// A Database Import block as documented below. Mutually exclusive with create_mode.
	// +kubebuilder:validation:Optional
	import?: [...#ImportParameters] @go(Import,[]ImportParameters)

	// A boolean that specifies if this is a ledger database. Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	ledgerEnabled?: null | bool @go(LedgerEnabled,*bool)

	// Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice.
	// +kubebuilder:validation:Optional
	licenseType?: null | string @go(LicenseType,*string)

	// A long_term_retention_policy block as defined below.
	// +kubebuilder:validation:Optional
	longTermRetentionPolicy?: [...#LongTermRetentionPolicyParameters] @go(LongTermRetentionPolicy,[]LongTermRetentionPolicyParameters)

	// The name of the Public Maintenance Configuration window to apply to the database. Valid values include SQL_Default, SQL_EastUS_DB_1, SQL_EastUS2_DB_1, SQL_SoutheastAsia_DB_1, SQL_AustraliaEast_DB_1, SQL_NorthEurope_DB_1, SQL_SouthCentralUS_DB_1, SQL_WestUS2_DB_1, SQL_UKSouth_DB_1, SQL_WestEurope_DB_1, SQL_EastUS_DB_2, SQL_EastUS2_DB_2, SQL_WestUS2_DB_2, SQL_SoutheastAsia_DB_2, SQL_AustraliaEast_DB_2, SQL_NorthEurope_DB_2, SQL_SouthCentralUS_DB_2, SQL_UKSouth_DB_2, SQL_WestEurope_DB_2, SQL_AustraliaSoutheast_DB_1, SQL_BrazilSouth_DB_1, SQL_CanadaCentral_DB_1, SQL_CanadaEast_DB_1, SQL_CentralUS_DB_1, SQL_EastAsia_DB_1, SQL_FranceCentral_DB_1, SQL_GermanyWestCentral_DB_1, SQL_CentralIndia_DB_1, SQL_SouthIndia_DB_1, SQL_JapanEast_DB_1, SQL_JapanWest_DB_1, SQL_NorthCentralUS_DB_1, SQL_UKWest_DB_1, SQL_WestUS_DB_1, SQL_AustraliaSoutheast_DB_2, SQL_BrazilSouth_DB_2, SQL_CanadaCentral_DB_2, SQL_CanadaEast_DB_2, SQL_CentralUS_DB_2, SQL_EastAsia_DB_2, SQL_FranceCentral_DB_2, SQL_GermanyWestCentral_DB_2, SQL_CentralIndia_DB_2, SQL_SouthIndia_DB_2, SQL_JapanEast_DB_2, SQL_JapanWest_DB_2, SQL_NorthCentralUS_DB_2, SQL_UKWest_DB_2, SQL_WestUS_DB_2, SQL_WestCentralUS_DB_1, SQL_FranceSouth_DB_1, SQL_WestCentralUS_DB_2, SQL_FranceSouth_DB_2, SQL_SwitzerlandNorth_DB_1, SQL_SwitzerlandNorth_DB_2, SQL_BrazilSoutheast_DB_1, SQL_UAENorth_DB_1, SQL_BrazilSoutheast_DB_2, SQL_UAENorth_DB_2. Defaults to SQL_Default.
	// +kubebuilder:validation:Optional
	maintenanceConfigurationName?: null | string @go(MaintenanceConfigurationName,*string)

	// The max size of the database in gigabytes.
	// +kubebuilder:validation:Optional
	maxSizeGb?: null | float64 @go(MaxSizeGb,*float64)

	// Minimal capacity that database will always have allocated, if not paused. This property is only settable for General Purpose Serverless databases.
	// +kubebuilder:validation:Optional
	minCapacity?: null | float64 @go(MinCapacity,*float64)

	// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
	// +kubebuilder:validation:Optional
	readReplicaCount?: null | float64 @go(ReadReplicaCount,*float64)

	// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
	// +kubebuilder:validation:Optional
	readScale?: null | bool @go(ReadScale,*bool)

	// The ID of the database to be recovered. This property is only applicable when the create_mode is Recovery.
	// +kubebuilder:validation:Optional
	recoverDatabaseId?: null | string @go(RecoverDatabaseID,*string)

	// The ID of the database to be restored. This property is only applicable when the create_mode is Restore.
	// +kubebuilder:validation:Optional
	restoreDroppedDatabaseId?: null | string @go(RestoreDroppedDatabaseID,*string)

	// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for create_mode= PointInTimeRestore databases.
	// +kubebuilder:validation:Optional
	restorePointInTime?: null | string @go(RestorePointInTime,*string)

	// Specifies the name of the sample schema to apply when creating this database. Possible value is AdventureWorksLT.
	// +kubebuilder:validation:Optional
	sampleName?: null | string @go(SampleName,*string)

	// The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=MSSQLServer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	serverId?: null | string @go(ServerID,*string)

	// A short_term_retention_policy block as defined below.
	// +kubebuilder:validation:Optional
	shortTermRetentionPolicy?: [...#ShortTermRetentionPolicyParameters] @go(ShortTermRetentionPolicy,[]ShortTermRetentionPolicyParameters)

	// Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100. Changing this from the HyperScale service tier to another service tier will create a new resource.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// Specifies the storage account type used to store backups for this database. Possible values are Geo, Local and Zone. The default value is Geo.
	// +kubebuilder:validation:Optional
	storageAccountType?: null | string @go(StorageAccountType,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Threat detection policy configuration. The threat_detection_policy block supports fields documented below.
	// +kubebuilder:validation:Optional
	threatDetectionPolicy?: [...#ThreatDetectionPolicyParameters] @go(ThreatDetectionPolicy,[]ThreatDetectionPolicyParameters)

	// If set to true, Transparent Data Encryption will be enabled on the database. Defaults to true.
	// +kubebuilder:validation:Optional
	transparentDataEncryptionEnabled?: null | bool @go(TransparentDataEncryptionEnabled,*bool)

	// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
	// +kubebuilder:validation:Optional
	zoneRedundant?: null | bool @go(ZoneRedundant,*bool)
}

#ShortTermRetentionPolicyObservation: {
	// The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be 12 or 24. Defaults to 12 hours.
	backupIntervalInHours?: null | float64 @go(BackupIntervalInHours,*float64)

	// Point In Time Restore configuration. Value has to be between 7 and 35.
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

#ShortTermRetentionPolicyParameters: {
	// The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be 12 or 24. Defaults to 12 hours.
	// +kubebuilder:validation:Optional
	backupIntervalInHours?: null | float64 @go(BackupIntervalInHours,*float64)

	// Point In Time Restore configuration. Value has to be between 7 and 35.
	// +kubebuilder:validation:Required
	retentionDays?: null | float64 @go(RetentionDays,*float64)
}

#ThreatDetectionPolicyObservation: {
	// Specifies a list of alerts which should be disabled. Possible values include Access_Anomaly, Sql_Injection and Sql_Injection_Vulnerability.
	disabledAlerts?: [...null | string] @go(DisabledAlerts,[]*string)

	// Should the account administrators be emailed when this alert is triggered? Possible values are Disabled and Enabled.
	emailAccountAdmins?: null | string @go(EmailAccountAdmins,*string)

	// A list of email addresses which alerts should be sent to.
	emailAddresses?: [...null | string] @go(EmailAddresses,[]*string)

	// Specifies the number of days to keep in the Threat Detection audit logs.
	retentionDays?: null | float64 @go(RetentionDays,*float64)

	// The State of the Policy. Possible values are Enabled, Disabled or New.
	state?: null | string @go(State,*string)

	// Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. Required if state is Enabled.
	storageEndpoint?: null | string @go(StorageEndpoint,*string)
}

#ThreatDetectionPolicyParameters: {
	// Specifies a list of alerts which should be disabled. Possible values include Access_Anomaly, Sql_Injection and Sql_Injection_Vulnerability.
	// +kubebuilder:validation:Optional
	disabledAlerts?: [...null | string] @go(DisabledAlerts,[]*string)

	// Should the account administrators be emailed when this alert is triggered? Possible values are Disabled and Enabled.
	// +kubebuilder:validation:Optional
	emailAccountAdmins?: null | string @go(EmailAccountAdmins,*string)

	// A list of email addresses which alerts should be sent to.
	// +kubebuilder:validation:Optional
	emailAddresses?: [...null | string] @go(EmailAddresses,[]*string)

	// Specifies the number of days to keep in the Threat Detection audit logs.
	// +kubebuilder:validation:Optional
	retentionDays?: null | float64 @go(RetentionDays,*float64)

	// The State of the Policy. Possible values are Enabled, Disabled or New.
	// +kubebuilder:validation:Optional
	state?: null | string @go(State,*string)

	// Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. Required if state is Enabled.
	// +kubebuilder:validation:Optional
	storageEndpoint?: null | string @go(StorageEndpoint,*string)
}

// MSSQLDatabaseSpec defines the desired state of MSSQLDatabase
#MSSQLDatabaseSpec: {
	forProvider: #MSSQLDatabaseParameters @go(ForProvider)
}

// MSSQLDatabaseStatus defines the observed state of MSSQLDatabase.
#MSSQLDatabaseStatus: {
	atProvider?: #MSSQLDatabaseObservation @go(AtProvider)
}

// MSSQLDatabase is the Schema for the MSSQLDatabases API. Manages a MS SQL Database.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MSSQLDatabase: {
	spec:    #MSSQLDatabaseSpec   @go(Spec)
	status?: #MSSQLDatabaseStatus @go(Status)
}

// MSSQLDatabaseList contains a list of MSSQLDatabases
#MSSQLDatabaseList: {
	items: [...#MSSQLDatabase] @go(Items,[]MSSQLDatabase)
}
