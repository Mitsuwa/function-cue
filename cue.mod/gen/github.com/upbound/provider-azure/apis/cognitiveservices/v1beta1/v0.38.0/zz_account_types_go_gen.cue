// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/cognitiveservices/v1beta1

package v1beta1

#AccountInitParameters: {
	// If kind is TextAnalytics this specifies the ID of the Search service.
	customQuestionAnsweringSearchServiceId?: null | string @go(CustomQuestionAnsweringSearchServiceID,*string)

	// The subdomain name used for token-based authentication. Changing this forces a new resource to be created.
	customSubdomainName?: null | string @go(CustomSubdomainName,*string)

	// A customer_managed_key block as documented below.
	customerManagedKey?: [...#CustomerManagedKeyInitParameters] @go(CustomerManagedKey,[]CustomerManagedKeyInitParameters)

	// Whether to enable the dynamic throttling for this Cognitive Service Account.
	dynamicThrottlingEnabled?: null | bool @go(DynamicThrottlingEnabled,*bool)

	// List of FQDNs allowed for the Cognitive Account.
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// An identity block as defined below.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Specifies the type of Cognitive Service Account that should be created. Possible values are Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation and WebLM. Changing this forces a new resource to be created.
	kind?: null | string @go(Kind,*string)

	// Whether local authentication methods is enabled for the Cognitive Account. Defaults to true.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The Azure AD Client ID (Application ID). This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorAadClientId?: null | string @go(MetricsAdvisorAADClientID,*string)

	// The Azure AD Tenant ID. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorAadTenantId?: null | string @go(MetricsAdvisorAADTenantID,*string)

	// The super user of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorSuperUserName?: null | string @go(MetricsAdvisorSuperUserName,*string)

	// The website name of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorWebsiteName?: null | string @go(MetricsAdvisorWebsiteName,*string)

	// A network_acls block as defined below.
	networkAcls?: [...#NetworkAclsInitParameters] @go(NetworkAcls,[]NetworkAclsInitParameters)

	// Whether outbound network access is restricted for the Cognitive Account. Defaults to false.
	outboundNetworkAccessRestricted?: null | bool @go(OutboundNetworkAccessRestricted,*bool)

	// Whether public network access is allowed for the Cognitive Account. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// A URL to link a QnAMaker cognitive account to a QnA runtime.
	qnaRuntimeEndpoint?: null | string @go(QnaRuntimeEndpoint,*string)

	// Specifies the SKU Name for this Cognitive Service Account. Possible values are F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0 and DC0.
	skuName?: null | string @go(SkuName,*string)

	// A storage block as defined below.
	storage?: [...#StorageInitParameters] @go(Storage,[]StorageInitParameters)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AccountObservation: {
	// If kind is TextAnalytics this specifies the ID of the Search service.
	customQuestionAnsweringSearchServiceId?: null | string @go(CustomQuestionAnsweringSearchServiceID,*string)

	// The subdomain name used for token-based authentication. Changing this forces a new resource to be created.
	customSubdomainName?: null | string @go(CustomSubdomainName,*string)

	// A customer_managed_key block as documented below.
	customerManagedKey?: [...#CustomerManagedKeyObservation] @go(CustomerManagedKey,[]CustomerManagedKeyObservation)

	// Whether to enable the dynamic throttling for this Cognitive Service Account.
	dynamicThrottlingEnabled?: null | bool @go(DynamicThrottlingEnabled,*bool)

	// The endpoint used to connect to the Cognitive Service Account.
	endpoint?: null | string @go(Endpoint,*string)

	// List of FQDNs allowed for the Cognitive Account.
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// The ID of the Cognitive Service Account.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the type of Cognitive Service Account that should be created. Possible values are Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation and WebLM. Changing this forces a new resource to be created.
	kind?: null | string @go(Kind,*string)

	// Whether local authentication methods is enabled for the Cognitive Account. Defaults to true.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The Azure AD Client ID (Application ID). This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorAadClientId?: null | string @go(MetricsAdvisorAADClientID,*string)

	// The Azure AD Tenant ID. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorAadTenantId?: null | string @go(MetricsAdvisorAADTenantID,*string)

	// The super user of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorSuperUserName?: null | string @go(MetricsAdvisorSuperUserName,*string)

	// The website name of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	metricsAdvisorWebsiteName?: null | string @go(MetricsAdvisorWebsiteName,*string)

	// A network_acls block as defined below.
	networkAcls?: [...#NetworkAclsObservation] @go(NetworkAcls,[]NetworkAclsObservation)

	// Whether outbound network access is restricted for the Cognitive Account. Defaults to false.
	outboundNetworkAccessRestricted?: null | bool @go(OutboundNetworkAccessRestricted,*bool)

	// Whether public network access is allowed for the Cognitive Account. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// A URL to link a QnAMaker cognitive account to a QnA runtime.
	qnaRuntimeEndpoint?: null | string @go(QnaRuntimeEndpoint,*string)

	// The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the SKU Name for this Cognitive Service Account. Possible values are F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0 and DC0.
	skuName?: null | string @go(SkuName,*string)

	// A storage block as defined below.
	storage?: [...#StorageObservation] @go(Storage,[]StorageObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#AccountParameters: {
	// If kind is TextAnalytics this specifies the ID of the Search service.
	// +kubebuilder:validation:Optional
	customQuestionAnsweringSearchServiceId?: null | string @go(CustomQuestionAnsweringSearchServiceID,*string)

	// The subdomain name used for token-based authentication. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	customSubdomainName?: null | string @go(CustomSubdomainName,*string)

	// A customer_managed_key block as documented below.
	// +kubebuilder:validation:Optional
	customerManagedKey?: [...#CustomerManagedKeyParameters] @go(CustomerManagedKey,[]CustomerManagedKeyParameters)

	// Whether to enable the dynamic throttling for this Cognitive Service Account.
	// +kubebuilder:validation:Optional
	dynamicThrottlingEnabled?: null | bool @go(DynamicThrottlingEnabled,*bool)

	// List of FQDNs allowed for the Cognitive Account.
	// +kubebuilder:validation:Optional
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the type of Cognitive Service Account that should be created. Possible values are Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation and WebLM. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	kind?: null | string @go(Kind,*string)

	// Whether local authentication methods is enabled for the Cognitive Account. Defaults to true.
	// +kubebuilder:validation:Optional
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The Azure AD Client ID (Application ID). This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	metricsAdvisorAadClientId?: null | string @go(MetricsAdvisorAADClientID,*string)

	// The Azure AD Tenant ID. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	metricsAdvisorAadTenantId?: null | string @go(MetricsAdvisorAADTenantID,*string)

	// The super user of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	metricsAdvisorSuperUserName?: null | string @go(MetricsAdvisorSuperUserName,*string)

	// The website name of Metrics Advisor. This attribute is only set when kind is MetricsAdvisor. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	metricsAdvisorWebsiteName?: null | string @go(MetricsAdvisorWebsiteName,*string)

	// A network_acls block as defined below.
	// +kubebuilder:validation:Optional
	networkAcls?: [...#NetworkAclsParameters] @go(NetworkAcls,[]NetworkAclsParameters)

	// Whether outbound network access is restricted for the Cognitive Account. Defaults to false.
	// +kubebuilder:validation:Optional
	outboundNetworkAccessRestricted?: null | bool @go(OutboundNetworkAccessRestricted,*bool)

	// Whether public network access is allowed for the Cognitive Account. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// A URL to link a QnAMaker cognitive account to a QnA runtime.
	// +kubebuilder:validation:Optional
	qnaRuntimeEndpoint?: null | string @go(QnaRuntimeEndpoint,*string)

	// The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the SKU Name for this Cognitive Service Account. Possible values are F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0 and DC0.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// A storage block as defined below.
	// +kubebuilder:validation:Optional
	storage?: [...#StorageParameters] @go(Storage,[]StorageParameters)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#CustomerManagedKeyInitParameters: {
	// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#CustomerManagedKeyObservation: {
	// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#CustomerManagedKeyParameters: {
	// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
	// +kubebuilder:validation:Optional
	identityClientId?: null | string @go(IdentityClientID,*string)

	// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
	// +kubebuilder:validation:Optional
	keyVaultKeyId?: null | string @go(KeyVaultKeyID,*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cognitive Account.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Cognitive Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cognitive Account.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID associated with this Managed Service Identity.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID associated with this Managed Service Identity.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Cognitive Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cognitive Account.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Cognitive Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#NetworkAclsInitParameters: {
	// The Default Action to use when no rules match from ip_rules / virtual_network_rules. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
	ipRules?: [...null | string] @go(IPRules,[]*string)

	// A virtual_network_rules block as defined below.
	virtualNetworkRules?: [...#VirtualNetworkRulesInitParameters] @go(VirtualNetworkRules,[]VirtualNetworkRulesInitParameters)
}

#NetworkAclsObservation: {
	// The Default Action to use when no rules match from ip_rules / virtual_network_rules. Possible values are Allow and Deny.
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
	ipRules?: [...null | string] @go(IPRules,[]*string)

	// A virtual_network_rules block as defined below.
	virtualNetworkRules?: [...#VirtualNetworkRulesObservation] @go(VirtualNetworkRules,[]VirtualNetworkRulesObservation)
}

#NetworkAclsParameters: {
	// The Default Action to use when no rules match from ip_rules / virtual_network_rules. Possible values are Allow and Deny.
	// +kubebuilder:validation:Optional
	defaultAction?: null | string @go(DefaultAction,*string)

	// One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
	// +kubebuilder:validation:Optional
	ipRules?: [...null | string] @go(IPRules,[]*string)

	// A virtual_network_rules block as defined below.
	// +kubebuilder:validation:Optional
	virtualNetworkRules?: [...#VirtualNetworkRulesParameters] @go(VirtualNetworkRules,[]VirtualNetworkRulesParameters)
}

#StorageInitParameters: {
	// The client ID of the managed identity associated with the storage resource.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// Full resource id of a Microsoft.Storage resource.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#StorageObservation: {
	// The client ID of the managed identity associated with the storage resource.
	identityClientId?: null | string @go(IdentityClientID,*string)

	// Full resource id of a Microsoft.Storage resource.
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#StorageParameters: {
	// The client ID of the managed identity associated with the storage resource.
	// +kubebuilder:validation:Optional
	identityClientId?: null | string @go(IdentityClientID,*string)

	// Full resource id of a Microsoft.Storage resource.
	// +kubebuilder:validation:Optional
	storageAccountId?: null | string @go(StorageAccountID,*string)
}

#VirtualNetworkRulesInitParameters: {
	// Whether ignore missing vnet service endpoint or not. Default to false.
	ignoreMissingVnetServiceEndpoint?: null | bool @go(IgnoreMissingVnetServiceEndpoint,*bool)
}

#VirtualNetworkRulesObservation: {
	// Whether ignore missing vnet service endpoint or not. Default to false.
	ignoreMissingVnetServiceEndpoint?: null | bool @go(IgnoreMissingVnetServiceEndpoint,*bool)

	// The ID of the subnet which should be able to access this Cognitive Account.
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualNetworkRulesParameters: {
	// Whether ignore missing vnet service endpoint or not. Default to false.
	// +kubebuilder:validation:Optional
	ignoreMissingVnetServiceEndpoint?: null | bool @go(IgnoreMissingVnetServiceEndpoint,*bool)

	// The ID of the subnet which should be able to access this Cognitive Account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

// AccountSpec defines the desired state of Account
#AccountSpec: {
	forProvider: #AccountParameters @go(ForProvider)

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
	initProvider?: #AccountInitParameters @go(InitProvider)
}

// AccountStatus defines the observed state of Account.
#AccountStatus: {
	atProvider?: #AccountObservation @go(AtProvider)
}

// Account is the Schema for the Accounts API. Manages a Cognitive Services Account.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Account: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.kind) || (has(self.initProvider) && has(self.initProvider.kind))",message="spec.forProvider.kind is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.skuName) || (has(self.initProvider) && has(self.initProvider.skuName))",message="spec.forProvider.skuName is a required parameter"
	spec:    #AccountSpec   @go(Spec)
	status?: #AccountStatus @go(Status)
}

// AccountList contains a list of Accounts
#AccountList: {
	items: [...#Account] @go(Items,[]Account)
}
