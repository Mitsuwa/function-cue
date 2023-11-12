// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DNSInitParameters: {
	// Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to false.
	proxyEnabled?: null | bool @go(ProxyEnabled,*bool)

	// A list of custom DNS servers' IP addresses.
	servers?: [...null | string] @go(Servers,[]*string)
}

#DNSObservation: {
	// Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to false.
	proxyEnabled?: null | bool @go(ProxyEnabled,*bool)

	// A list of custom DNS servers' IP addresses.
	servers?: [...null | string] @go(Servers,[]*string)
}

#DNSParameters: {
	// Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to false.
	// +kubebuilder:validation:Optional
	proxyEnabled?: null | bool @go(ProxyEnabled,*bool)

	// A list of custom DNS servers' IP addresses.
	// +kubebuilder:validation:Optional
	servers?: [...null | string] @go(Servers,[]*string)
}

#ExplicitProxyInitParameters: {
	// Whether the pac file port and url need to be provided.
	enablePacFile?: null | bool @go(EnablePacFile,*bool)

	// Whether the explicit proxy is enabled for this Firewall Policy.
	enabled?: null | bool @go(Enabled,*bool)

	// The port number for explicit http protocol.
	httpPort?: null | float64 @go(HTTPPort,*float64)

	// The port number for explicit proxy https protocol.
	httpsPort?: null | float64 @go(HTTPSPort,*float64)

	// Specifies a SAS URL for PAC file.
	pacFile?: null | string @go(PacFile,*string)

	// Specifies a port number for firewall to serve PAC file.
	pacFilePort?: null | float64 @go(PacFilePort,*float64)
}

#ExplicitProxyObservation: {
	// Whether the pac file port and url need to be provided.
	enablePacFile?: null | bool @go(EnablePacFile,*bool)

	// Whether the explicit proxy is enabled for this Firewall Policy.
	enabled?: null | bool @go(Enabled,*bool)

	// The port number for explicit http protocol.
	httpPort?: null | float64 @go(HTTPPort,*float64)

	// The port number for explicit proxy https protocol.
	httpsPort?: null | float64 @go(HTTPSPort,*float64)

	// Specifies a SAS URL for PAC file.
	pacFile?: null | string @go(PacFile,*string)

	// Specifies a port number for firewall to serve PAC file.
	pacFilePort?: null | float64 @go(PacFilePort,*float64)
}

#ExplicitProxyParameters: {
	// Whether the pac file port and url need to be provided.
	// +kubebuilder:validation:Optional
	enablePacFile?: null | bool @go(EnablePacFile,*bool)

	// Whether the explicit proxy is enabled for this Firewall Policy.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// The port number for explicit http protocol.
	// +kubebuilder:validation:Optional
	httpPort?: null | float64 @go(HTTPPort,*float64)

	// The port number for explicit proxy https protocol.
	// +kubebuilder:validation:Optional
	httpsPort?: null | float64 @go(HTTPSPort,*float64)

	// Specifies a SAS URL for PAC file.
	// +kubebuilder:validation:Optional
	pacFile?: null | string @go(PacFile,*string)

	// Specifies a port number for firewall to serve PAC file.
	// +kubebuilder:validation:Optional
	pacFilePort?: null | float64 @go(PacFilePort,*float64)
}

#FirewallPolicyIdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is UserAssigned.
	type?: null | string @go(Type,*string)
}

#FirewallPolicyIdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is UserAssigned.
	type?: null | string @go(Type,*string)
}

#FirewallPolicyIdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy.
	// +kubebuilder:validation:Optional
	identityIds: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is UserAssigned.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#FirewallPolicyInitParameters: {
	// Whether enable auto learn private ip range.
	autoLearnPrivateRangesEnabled?: null | bool @go(AutoLearnPrivateRangesEnabled,*bool)

	// The ID of the base Firewall Policy.
	basePolicyId?: null | string @go(BasePolicyID,*string)

	// A dns block as defined below.
	dns?: [...#DNSInitParameters] @go(DNS,[]DNSInitParameters)

	// A explicit_proxy block as defined below.
	explicitProxy?: [...#ExplicitProxyInitParameters] @go(ExplicitProxy,[]ExplicitProxyInitParameters)

	// An identity block as defined below.
	identity?: [...#FirewallPolicyIdentityInitParameters] @go(Identity,[]FirewallPolicyIdentityInitParameters)

	// An insights block as defined below.
	insights?: [...#InsightsInitParameters] @go(Insights,[]InsightsInitParameters)

	// A intrusion_detection block as defined below.
	intrusionDetection?: [...#IntrusionDetectionInitParameters] @go(IntrusionDetection,[]IntrusionDetectionInitParameters)

	// The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
	location?: null | string @go(Location,*string)

	// A list of private IP ranges to which traffic will not be SNAT.
	privateIpRanges?: [...null | string] @go(PrivateIPRanges,[]*string)

	// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between 11000-11999.
	sqlRedirectAllowed?: null | bool @go(SQLRedirectAllowed,*bool)

	// The SKU Tier of the Firewall Policy. Possible values are Standard, Premium and Basic. Changing this forces a new Firewall Policy to be created.
	sku?: null | string @go(Sku,*string)

	// A tls_certificate block as defined below.
	tlsCertificate?: [...#TLSCertificateInitParameters] @go(TLSCertificate,[]TLSCertificateInitParameters)

	// A mapping of tags which should be assigned to the Firewall Policy.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A threat_intelligence_allowlist block as defined below.
	threatIntelligenceAllowlist?: [...#ThreatIntelligenceAllowlistInitParameters] @go(ThreatIntelligenceAllowlist,[]ThreatIntelligenceAllowlistInitParameters)

	// The operation mode for Threat Intelligence. Possible values are Alert, Deny and Off. Defaults to Alert.
	threatIntelligenceMode?: null | string @go(ThreatIntelligenceMode,*string)
}

#FirewallPolicyObservation: {
	// Whether enable auto learn private ip range.
	autoLearnPrivateRangesEnabled?: null | bool @go(AutoLearnPrivateRangesEnabled,*bool)

	// The ID of the base Firewall Policy.
	basePolicyId?: null | string @go(BasePolicyID,*string)

	// A list of reference to child Firewall Policies of this Firewall Policy.
	childPolicies?: [...null | string] @go(ChildPolicies,[]*string)

	// A dns block as defined below.
	dns?: [...#DNSObservation] @go(DNS,[]DNSObservation)

	// A explicit_proxy block as defined below.
	explicitProxy?: [...#ExplicitProxyObservation] @go(ExplicitProxy,[]ExplicitProxyObservation)

	// A list of references to Azure Firewalls that this Firewall Policy is associated with.
	firewalls?: [...null | string] @go(Firewalls,[]*string)

	// The ID of the Firewall Policy.
	id?: null | string @go(ID,*string)

	// An identity block as defined below.
	identity?: [...#FirewallPolicyIdentityObservation] @go(Identity,[]FirewallPolicyIdentityObservation)

	// An insights block as defined below.
	insights?: [...#InsightsObservation] @go(Insights,[]InsightsObservation)

	// A intrusion_detection block as defined below.
	intrusionDetection?: [...#IntrusionDetectionObservation] @go(IntrusionDetection,[]IntrusionDetectionObservation)

	// The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
	location?: null | string @go(Location,*string)

	// A list of private IP ranges to which traffic will not be SNAT.
	privateIpRanges?: [...null | string] @go(PrivateIPRanges,[]*string)

	// The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy.
	ruleCollectionGroups?: [...null | string] @go(RuleCollectionGroups,[]*string)

	// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between 11000-11999.
	sqlRedirectAllowed?: null | bool @go(SQLRedirectAllowed,*bool)

	// The SKU Tier of the Firewall Policy. Possible values are Standard, Premium and Basic. Changing this forces a new Firewall Policy to be created.
	sku?: null | string @go(Sku,*string)

	// A tls_certificate block as defined below.
	tlsCertificate?: [...#TLSCertificateObservation] @go(TLSCertificate,[]TLSCertificateObservation)

	// A mapping of tags which should be assigned to the Firewall Policy.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A threat_intelligence_allowlist block as defined below.
	threatIntelligenceAllowlist?: [...#ThreatIntelligenceAllowlistObservation] @go(ThreatIntelligenceAllowlist,[]ThreatIntelligenceAllowlistObservation)

	// The operation mode for Threat Intelligence. Possible values are Alert, Deny and Off. Defaults to Alert.
	threatIntelligenceMode?: null | string @go(ThreatIntelligenceMode,*string)
}

#FirewallPolicyParameters: {
	// Whether enable auto learn private ip range.
	// +kubebuilder:validation:Optional
	autoLearnPrivateRangesEnabled?: null | bool @go(AutoLearnPrivateRangesEnabled,*bool)

	// The ID of the base Firewall Policy.
	// +kubebuilder:validation:Optional
	basePolicyId?: null | string @go(BasePolicyID,*string)

	// A dns block as defined below.
	// +kubebuilder:validation:Optional
	dns?: [...#DNSParameters] @go(DNS,[]DNSParameters)

	// A explicit_proxy block as defined below.
	// +kubebuilder:validation:Optional
	explicitProxy?: [...#ExplicitProxyParameters] @go(ExplicitProxy,[]ExplicitProxyParameters)

	// An identity block as defined below.
	// +kubebuilder:validation:Optional
	identity?: [...#FirewallPolicyIdentityParameters] @go(Identity,[]FirewallPolicyIdentityParameters)

	// An insights block as defined below.
	// +kubebuilder:validation:Optional
	insights?: [...#InsightsParameters] @go(Insights,[]InsightsParameters)

	// A intrusion_detection block as defined below.
	// +kubebuilder:validation:Optional
	intrusionDetection?: [...#IntrusionDetectionParameters] @go(IntrusionDetection,[]IntrusionDetectionParameters)

	// The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A list of private IP ranges to which traffic will not be SNAT.
	// +kubebuilder:validation:Optional
	privateIpRanges?: [...null | string] @go(PrivateIPRanges,[]*string)

	// The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between 11000-11999.
	// +kubebuilder:validation:Optional
	sqlRedirectAllowed?: null | bool @go(SQLRedirectAllowed,*bool)

	// The SKU Tier of the Firewall Policy. Possible values are Standard, Premium and Basic. Changing this forces a new Firewall Policy to be created.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A tls_certificate block as defined below.
	// +kubebuilder:validation:Optional
	tlsCertificate?: [...#TLSCertificateParameters] @go(TLSCertificate,[]TLSCertificateParameters)

	// A mapping of tags which should be assigned to the Firewall Policy.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A threat_intelligence_allowlist block as defined below.
	// +kubebuilder:validation:Optional
	threatIntelligenceAllowlist?: [...#ThreatIntelligenceAllowlistParameters] @go(ThreatIntelligenceAllowlist,[]ThreatIntelligenceAllowlistParameters)

	// The operation mode for Threat Intelligence. Possible values are Alert, Deny and Off. Defaults to Alert.
	// +kubebuilder:validation:Optional
	threatIntelligenceMode?: null | string @go(ThreatIntelligenceMode,*string)
}

#InsightsInitParameters: {
	// The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the log_analytics_workspace.
	defaultLogAnalyticsWorkspaceId?: null | string @go(DefaultLogAnalyticsWorkspaceID,*string)

	// Whether the insights functionality is enabled for this Firewall Policy.
	enabled?: null | bool @go(Enabled,*bool)

	// A list of log_analytics_workspace block as defined below.
	logAnalyticsWorkspace?: [...#LogAnalyticsWorkspaceInitParameters] @go(LogAnalyticsWorkspace,[]LogAnalyticsWorkspaceInitParameters)

	// The log retention period in days.
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)
}

#InsightsObservation: {
	// The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the log_analytics_workspace.
	defaultLogAnalyticsWorkspaceId?: null | string @go(DefaultLogAnalyticsWorkspaceID,*string)

	// Whether the insights functionality is enabled for this Firewall Policy.
	enabled?: null | bool @go(Enabled,*bool)

	// A list of log_analytics_workspace block as defined below.
	logAnalyticsWorkspace?: [...#LogAnalyticsWorkspaceObservation] @go(LogAnalyticsWorkspace,[]LogAnalyticsWorkspaceObservation)

	// The log retention period in days.
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)
}

#InsightsParameters: {
	// The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the log_analytics_workspace.
	// +kubebuilder:validation:Optional
	defaultLogAnalyticsWorkspaceId?: null | string @go(DefaultLogAnalyticsWorkspaceID,*string)

	// Whether the insights functionality is enabled for this Firewall Policy.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// A list of log_analytics_workspace block as defined below.
	// +kubebuilder:validation:Optional
	logAnalyticsWorkspace?: [...#LogAnalyticsWorkspaceParameters] @go(LogAnalyticsWorkspace,[]LogAnalyticsWorkspaceParameters)

	// The log retention period in days.
	// +kubebuilder:validation:Optional
	retentionInDays?: null | float64 @go(RetentionInDays,*float64)
}

#IntrusionDetectionInitParameters: {
	// In which mode you want to run intrusion detection: Off, Alert or Deny.
	mode?: null | string @go(Mode,*string)

	// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
	privateRanges?: [...null | string] @go(PrivateRanges,[]*string)

	// One or more signature_overrides blocks as defined below.
	signatureOverrides?: [...#SignatureOverridesInitParameters] @go(SignatureOverrides,[]SignatureOverridesInitParameters)

	// One or more traffic_bypass blocks as defined below.
	trafficBypass?: [...#TrafficBypassInitParameters] @go(TrafficBypass,[]TrafficBypassInitParameters)
}

#IntrusionDetectionObservation: {
	// In which mode you want to run intrusion detection: Off, Alert or Deny.
	mode?: null | string @go(Mode,*string)

	// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
	privateRanges?: [...null | string] @go(PrivateRanges,[]*string)

	// One or more signature_overrides blocks as defined below.
	signatureOverrides?: [...#SignatureOverridesObservation] @go(SignatureOverrides,[]SignatureOverridesObservation)

	// One or more traffic_bypass blocks as defined below.
	trafficBypass?: [...#TrafficBypassObservation] @go(TrafficBypass,[]TrafficBypassObservation)
}

#IntrusionDetectionParameters: {
	// In which mode you want to run intrusion detection: Off, Alert or Deny.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
	// +kubebuilder:validation:Optional
	privateRanges?: [...null | string] @go(PrivateRanges,[]*string)

	// One or more signature_overrides blocks as defined below.
	// +kubebuilder:validation:Optional
	signatureOverrides?: [...#SignatureOverridesParameters] @go(SignatureOverrides,[]SignatureOverridesParameters)

	// One or more traffic_bypass blocks as defined below.
	// +kubebuilder:validation:Optional
	trafficBypass?: [...#TrafficBypassParameters] @go(TrafficBypass,[]TrafficBypassParameters)
}

#LogAnalyticsWorkspaceInitParameters: {
	// The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.
	firewallLocation?: null | string @go(FirewallLocation,*string)

	// 12-digit number (id) which identifies your signature.
	id?: null | string @go(ID,*string)
}

#LogAnalyticsWorkspaceObservation: {
	// The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.
	firewallLocation?: null | string @go(FirewallLocation,*string)

	// 12-digit number (id) which identifies your signature.
	id?: null | string @go(ID,*string)
}

#LogAnalyticsWorkspaceParameters: {
	// The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.
	// +kubebuilder:validation:Optional
	firewallLocation?: null | string @go(FirewallLocation,*string)

	// 12-digit number (id) which identifies your signature.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)
}

#SignatureOverridesInitParameters: {
	// 12-digit number (id) which identifies your signature.
	id?: null | string @go(ID,*string)

	// state can be any of Off, Alert or Deny.
	state?: null | string @go(State,*string)
}

#SignatureOverridesObservation: {
	// 12-digit number (id) which identifies your signature.
	id?: null | string @go(ID,*string)

	// state can be any of Off, Alert or Deny.
	state?: null | string @go(State,*string)
}

#SignatureOverridesParameters: {
	// 12-digit number (id) which identifies your signature.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// state can be any of Off, Alert or Deny.
	// +kubebuilder:validation:Optional
	state?: null | string @go(State,*string)
}

#TLSCertificateInitParameters: {
	// The ID of the Key Vault, where the secret or certificate is stored.
	keyVaultSecretId?: null | string @go(KeyVaultSecretID,*string)

	// The name of the certificate.
	name?: null | string @go(Name,*string)
}

#TLSCertificateObservation: {
	// The ID of the Key Vault, where the secret or certificate is stored.
	keyVaultSecretId?: null | string @go(KeyVaultSecretID,*string)

	// The name of the certificate.
	name?: null | string @go(Name,*string)
}

#TLSCertificateParameters: {
	// The ID of the Key Vault, where the secret or certificate is stored.
	// +kubebuilder:validation:Optional
	keyVaultSecretId?: null | string @go(KeyVaultSecretID,*string)

	// The name of the certificate.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#ThreatIntelligenceAllowlistInitParameters: {
	// A list of FQDNs that will be skipped for threat detection.
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// A list of IP addresses or CIDR ranges that will be skipped for threat detection.
	ipAddresses?: [...null | string] @go(IPAddresses,[]*string)
}

#ThreatIntelligenceAllowlistObservation: {
	// A list of FQDNs that will be skipped for threat detection.
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// A list of IP addresses or CIDR ranges that will be skipped for threat detection.
	ipAddresses?: [...null | string] @go(IPAddresses,[]*string)
}

#ThreatIntelligenceAllowlistParameters: {
	// A list of FQDNs that will be skipped for threat detection.
	// +kubebuilder:validation:Optional
	fqdns?: [...null | string] @go(Fqdns,[]*string)

	// A list of IP addresses or CIDR ranges that will be skipped for threat detection.
	// +kubebuilder:validation:Optional
	ipAddresses?: [...null | string] @go(IPAddresses,[]*string)
}

#TrafficBypassInitParameters: {
	// The description for this bypass traffic setting.
	description?: null | string @go(Description,*string)

	// Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
	destinationAddresses?: [...null | string] @go(DestinationAddresses,[]*string)

	// Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
	destinationIpGroups?: [...null | string] @go(DestinationIPGroups,[]*string)

	// Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
	destinationPorts?: [...null | string] @go(DestinationPorts,[]*string)

	// The name which should be used for this bypass traffic setting.
	name?: null | string @go(Name,*string)

	// The protocols any of ANY, TCP, ICMP, UDP that shall be bypassed by intrusion detection.
	protocol?: null | string @go(Protocol,*string)

	// Specifies a list of source addresses that shall be bypassed by intrusion detection.
	sourceAddresses?: [...null | string] @go(SourceAddresses,[]*string)

	// Specifies a list of source IP groups that shall be bypassed by intrusion detection.
	sourceIpGroups?: [...null | string] @go(SourceIPGroups,[]*string)
}

#TrafficBypassObservation: {
	// The description for this bypass traffic setting.
	description?: null | string @go(Description,*string)

	// Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
	destinationAddresses?: [...null | string] @go(DestinationAddresses,[]*string)

	// Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
	destinationIpGroups?: [...null | string] @go(DestinationIPGroups,[]*string)

	// Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
	destinationPorts?: [...null | string] @go(DestinationPorts,[]*string)

	// The name which should be used for this bypass traffic setting.
	name?: null | string @go(Name,*string)

	// The protocols any of ANY, TCP, ICMP, UDP that shall be bypassed by intrusion detection.
	protocol?: null | string @go(Protocol,*string)

	// Specifies a list of source addresses that shall be bypassed by intrusion detection.
	sourceAddresses?: [...null | string] @go(SourceAddresses,[]*string)

	// Specifies a list of source IP groups that shall be bypassed by intrusion detection.
	sourceIpGroups?: [...null | string] @go(SourceIPGroups,[]*string)
}

#TrafficBypassParameters: {
	// The description for this bypass traffic setting.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	destinationAddresses?: [...null | string] @go(DestinationAddresses,[]*string)

	// Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	destinationIpGroups?: [...null | string] @go(DestinationIPGroups,[]*string)

	// Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	destinationPorts?: [...null | string] @go(DestinationPorts,[]*string)

	// The name which should be used for this bypass traffic setting.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The protocols any of ANY, TCP, ICMP, UDP that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// Specifies a list of source addresses that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	sourceAddresses?: [...null | string] @go(SourceAddresses,[]*string)

	// Specifies a list of source IP groups that shall be bypassed by intrusion detection.
	// +kubebuilder:validation:Optional
	sourceIpGroups?: [...null | string] @go(SourceIPGroups,[]*string)
}

// FirewallPolicySpec defines the desired state of FirewallPolicy
#FirewallPolicySpec: {
	forProvider: #FirewallPolicyParameters @go(ForProvider)

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
	initProvider?: #FirewallPolicyInitParameters @go(InitProvider)
}

// FirewallPolicyStatus defines the observed state of FirewallPolicy.
#FirewallPolicyStatus: {
	atProvider?: #FirewallPolicyObservation @go(AtProvider)
}

// FirewallPolicy is the Schema for the FirewallPolicys API. Manages a Firewall Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FirewallPolicy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #FirewallPolicySpec   @go(Spec)
	status?: #FirewallPolicyStatus @go(Status)
}

// FirewallPolicyList contains a list of FirewallPolicys
#FirewallPolicyList: {
	items: [...#FirewallPolicy] @go(Items,[]FirewallPolicy)
}
