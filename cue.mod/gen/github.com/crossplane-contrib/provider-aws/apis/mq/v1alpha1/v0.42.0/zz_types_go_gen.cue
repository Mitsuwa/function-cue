// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/mq/v1alpha1

package v1alpha1

// +kubebuilder:skipversion
#ActionRequired: {
	actionRequiredCode?: null | string @go(ActionRequiredCode,*string)
	actionRequiredInfo?: null | string @go(ActionRequiredInfo,*string)
}

// +kubebuilder:skipversion
#AvailabilityZone: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#BrokerEngineType: {
	// The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
	engineType?: null | string @go(EngineType,*string)
}

// +kubebuilder:skipversion
#BrokerInstance: {
	consoleURL?: null | string @go(ConsoleURL,*string)
	endpoints?: [...null | string] @go(Endpoints,[]*string)
	ipAddress?: null | string @go(IPAddress,*string)
}

// +kubebuilder:skipversion
#BrokerInstanceOption: {
	// The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
	engineType?:       null | string @go(EngineType,*string)
	hostInstanceType?: null | string @go(HostInstanceType,*string)

	// The broker's storage type.
	//
	// EFS is not supported for RabbitMQ engine type.
	storageType?: null | string @go(StorageType,*string)
	supportedEngineVersions?: [...null | string] @go(SupportedEngineVersions,[]*string)
}

// +kubebuilder:skipversion
#BrokerSummary: {
	brokerARN?:  null | string @go(BrokerARN,*string)
	brokerID?:   null | string @go(BrokerID,*string)
	brokerName?: null | string @go(BrokerName,*string)

	// The broker's status.
	brokerState?: null | string @go(BrokerState,*string)

	// The broker's deployment mode.
	deploymentMode?: null | string @go(DeploymentMode,*string)

	// The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
	engineType?:       null | string @go(EngineType,*string)
	hostInstanceType?: null | string @go(HostInstanceType,*string)
}

// +kubebuilder:skipversion
#Configuration: {
	arn?: null | string @go(ARN,*string)

	// Optional. The authentication strategy used to secure the broker. The default
	// is SIMPLE.
	authenticationStrategy?: null | string @go(AuthenticationStrategy,*string)
	description?:            null | string @go(Description,*string)

	// The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
	engineType?:    null | string @go(EngineType,*string)
	engineVersion?: null | string @go(EngineVersion,*string)
	id?:            null | string @go(ID,*string)
	name?:          null | string @go(Name,*string)
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// +kubebuilder:skipversion
#ConfigurationID: {
	id?:       null | string @go(ID,*string)
	revision?: null | int64  @go(Revision,*int64)
}

// +kubebuilder:skipversion
#ConfigurationRevision: {
	description?: null | string @go(Description,*string)
	revision?:    null | int64  @go(Revision,*int64)
}

// +kubebuilder:skipversion
#Configurations: {
	// A list of information about the configuration.
	//
	// Does not apply to RabbitMQ brokers.
	current?: null | #ConfigurationID @go(Current,*ConfigurationID)
	history?: [...null | #ConfigurationID] @go(History,[]*ConfigurationID)

	// A list of information about the configuration.
	//
	// Does not apply to RabbitMQ brokers.
	pending?: null | #ConfigurationID @go(Pending,*ConfigurationID)
}

// +kubebuilder:skipversion
#EncryptionOptions: {
	kmsKeyID?:       null | string @go(KMSKeyID,*string)
	useAWSOwnedKey?: null | bool   @go(UseAWSOwnedKey,*bool)
}

// +kubebuilder:skipversion
#EngineVersion: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#LDAPServerMetadataInput: {
	hosts?: [...null | string] @go(Hosts,[]*string)
	roleBase?:               null | string @go(RoleBase,*string)
	roleName?:               null | string @go(RoleName,*string)
	roleSearchMatching?:     null | string @go(RoleSearchMatching,*string)
	roleSearchSubtree?:      null | bool   @go(RoleSearchSubtree,*bool)
	serviceAccountPassword?: null | string @go(ServiceAccountPassword,*string)
	serviceAccountUsername?: null | string @go(ServiceAccountUsername,*string)
	userBase?:               null | string @go(UserBase,*string)
	userRoleName?:           null | string @go(UserRoleName,*string)
	userSearchMatching?:     null | string @go(UserSearchMatching,*string)
	userSearchSubtree?:      null | bool   @go(UserSearchSubtree,*bool)
}

// +kubebuilder:skipversion
#LDAPServerMetadataOutput: {
	hosts?: [...null | string] @go(Hosts,[]*string)
	roleBase?:               null | string @go(RoleBase,*string)
	roleName?:               null | string @go(RoleName,*string)
	roleSearchMatching?:     null | string @go(RoleSearchMatching,*string)
	roleSearchSubtree?:      null | bool   @go(RoleSearchSubtree,*bool)
	serviceAccountUsername?: null | string @go(ServiceAccountUsername,*string)
	userBase?:               null | string @go(UserBase,*string)
	userRoleName?:           null | string @go(UserRoleName,*string)
	userSearchMatching?:     null | string @go(UserSearchMatching,*string)
	userSearchSubtree?:      null | bool   @go(UserSearchSubtree,*bool)
}

// +kubebuilder:skipversion
#Logs: {
	audit?:   null | bool @go(Audit,*bool)
	general?: null | bool @go(General,*bool)
}

// +kubebuilder:skipversion
#LogsSummary: {
	audit?:           null | bool   @go(Audit,*bool)
	auditLogGroup?:   null | string @go(AuditLogGroup,*string)
	general?:         null | bool   @go(General,*bool)
	generalLogGroup?: null | string @go(GeneralLogGroup,*string)

	// The list of information about logs to be enabled for the specified broker.
	pending?: null | #PendingLogs @go(Pending,*PendingLogs)
}

// +kubebuilder:skipversion
#PendingLogs: {
	audit?:   null | bool @go(Audit,*bool)
	general?: null | bool @go(General,*bool)
}

// +kubebuilder:skipversion
#SanitizationWarning: {
	attributeName?: null | string @go(AttributeName,*string)
	elementName?:   null | string @go(ElementName,*string)
}

// +kubebuilder:skipversion
#UserPendingChanges: {
	consoleAccess?: null | bool @go(ConsoleAccess,*bool)
	groups?: [...null | string] @go(Groups,[]*string)

	// The type of change pending for the ActiveMQ user.
	pendingChange?: null | string @go(PendingChange,*string)
}

// +kubebuilder:skipversion
#UserSummary: {
	// The type of change pending for the ActiveMQ user.
	pendingChange?: null | string @go(PendingChange,*string)
	username?:      null | string @go(Username,*string)
}

// +kubebuilder:skipversion
#User_SDK: {
	consoleAccess?: null | bool @go(ConsoleAccess,*bool)
	groups?: [...null | string] @go(Groups,[]*string)
	password?: null | string @go(Password,*string)
	username?: null | string @go(Username,*string)
}

// +kubebuilder:skipversion
#WeeklyStartTime: {
	dayOfWeek?: null | string @go(DayOfWeek,*string)
	timeOfDay?: null | string @go(TimeOfDay,*string)
	timeZone?:  null | string @go(TimeZone,*string)
}
