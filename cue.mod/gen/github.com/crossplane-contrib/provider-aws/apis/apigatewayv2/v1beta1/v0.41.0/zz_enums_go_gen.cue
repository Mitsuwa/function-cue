// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1beta1

package v1beta1

#AuthorizationType: string // #enumAuthorizationType

#enumAuthorizationType:
	#AuthorizationType_NONE |
	#AuthorizationType_AWS_IAM |
	#AuthorizationType_CUSTOM |
	#AuthorizationType_JWT

#AuthorizationType_NONE:    #AuthorizationType & "NONE"
#AuthorizationType_AWS_IAM: #AuthorizationType & "AWS_IAM"
#AuthorizationType_CUSTOM:  #AuthorizationType & "CUSTOM"
#AuthorizationType_JWT:     #AuthorizationType & "JWT"

#AuthorizerType: string // #enumAuthorizerType

#enumAuthorizerType:
	#AuthorizerType_REQUEST |
	#AuthorizerType_JWT

#AuthorizerType_REQUEST: #AuthorizerType & "REQUEST"
#AuthorizerType_JWT:     #AuthorizerType & "JWT"

#ConnectionType: string // #enumConnectionType

#enumConnectionType:
	#ConnectionType_INTERNET |
	#ConnectionType_VPC_LINK

#ConnectionType_INTERNET: #ConnectionType & "INTERNET"
#ConnectionType_VPC_LINK: #ConnectionType & "VPC_LINK"

#ContentHandlingStrategy: string // #enumContentHandlingStrategy

#enumContentHandlingStrategy:
	#ContentHandlingStrategy_CONVERT_TO_BINARY |
	#ContentHandlingStrategy_CONVERT_TO_TEXT

#ContentHandlingStrategy_CONVERT_TO_BINARY: #ContentHandlingStrategy & "CONVERT_TO_BINARY"
#ContentHandlingStrategy_CONVERT_TO_TEXT:   #ContentHandlingStrategy & "CONVERT_TO_TEXT"

#DeploymentStatus_SDK: string // #enumDeploymentStatus_SDK

#enumDeploymentStatus_SDK:
	#DeploymentStatus_SDK_PENDING |
	#DeploymentStatus_SDK_FAILED |
	#DeploymentStatus_SDK_DEPLOYED

#DeploymentStatus_SDK_PENDING:  #DeploymentStatus_SDK & "PENDING"
#DeploymentStatus_SDK_FAILED:   #DeploymentStatus_SDK & "FAILED"
#DeploymentStatus_SDK_DEPLOYED: #DeploymentStatus_SDK & "DEPLOYED"

#DomainNameStatus_SDK: string // #enumDomainNameStatus_SDK

#enumDomainNameStatus_SDK:
	#DomainNameStatus_SDK_AVAILABLE |
	#DomainNameStatus_SDK_UPDATING |
	#DomainNameStatus_SDK_PENDING_CERTIFICATE_REIMPORT |
	#DomainNameStatus_SDK_PENDING_OWNERSHIP_VERIFICATION

#DomainNameStatus_SDK_AVAILABLE:                      #DomainNameStatus_SDK & "AVAILABLE"
#DomainNameStatus_SDK_UPDATING:                       #DomainNameStatus_SDK & "UPDATING"
#DomainNameStatus_SDK_PENDING_CERTIFICATE_REIMPORT:   #DomainNameStatus_SDK & "PENDING_CERTIFICATE_REIMPORT"
#DomainNameStatus_SDK_PENDING_OWNERSHIP_VERIFICATION: #DomainNameStatus_SDK & "PENDING_OWNERSHIP_VERIFICATION"

#EndpointType: string // #enumEndpointType

#enumEndpointType:
	#EndpointType_REGIONAL |
	#EndpointType_EDGE

#EndpointType_REGIONAL: #EndpointType & "REGIONAL"
#EndpointType_EDGE:     #EndpointType & "EDGE"

#IntegrationType: string // #enumIntegrationType

#enumIntegrationType:
	#IntegrationType_AWS |
	#IntegrationType_HTTP |
	#IntegrationType_MOCK |
	#IntegrationType_HTTP_PROXY |
	#IntegrationType_AWS_PROXY

#IntegrationType_AWS:        #IntegrationType & "AWS"
#IntegrationType_HTTP:       #IntegrationType & "HTTP"
#IntegrationType_MOCK:       #IntegrationType & "MOCK"
#IntegrationType_HTTP_PROXY: #IntegrationType & "HTTP_PROXY"
#IntegrationType_AWS_PROXY:  #IntegrationType & "AWS_PROXY"

#LoggingLevel: string // #enumLoggingLevel

#enumLoggingLevel:
	#LoggingLevel_ERROR |
	#LoggingLevel_INFO |
	#LoggingLevel_OFF

#LoggingLevel_ERROR: #LoggingLevel & "ERROR"
#LoggingLevel_INFO:  #LoggingLevel & "INFO"
#LoggingLevel_OFF:   #LoggingLevel & "OFF"

#PassthroughBehavior: string // #enumPassthroughBehavior

#enumPassthroughBehavior:
	#PassthroughBehavior_WHEN_NO_MATCH |
	#PassthroughBehavior_NEVER |
	#PassthroughBehavior_WHEN_NO_TEMPLATES

#PassthroughBehavior_WHEN_NO_MATCH:     #PassthroughBehavior & "WHEN_NO_MATCH"
#PassthroughBehavior_NEVER:             #PassthroughBehavior & "NEVER"
#PassthroughBehavior_WHEN_NO_TEMPLATES: #PassthroughBehavior & "WHEN_NO_TEMPLATES"

#ProtocolType: string // #enumProtocolType

#enumProtocolType:
	#ProtocolType_WEBSOCKET |
	#ProtocolType_HTTP

#ProtocolType_WEBSOCKET: #ProtocolType & "WEBSOCKET"
#ProtocolType_HTTP:      #ProtocolType & "HTTP"

#SecurityPolicy: string // #enumSecurityPolicy

#enumSecurityPolicy:
	#SecurityPolicy_TLS_1_0 |
	#SecurityPolicy_TLS_1_2

#SecurityPolicy_TLS_1_0: #SecurityPolicy & "TLS_1_0"
#SecurityPolicy_TLS_1_2: #SecurityPolicy & "TLS_1_2"

#VPCLinkStatus_SDK: string // #enumVPCLinkStatus_SDK

#enumVPCLinkStatus_SDK:
	#VPCLinkStatus_SDK_PENDING |
	#VPCLinkStatus_SDK_AVAILABLE |
	#VPCLinkStatus_SDK_DELETING |
	#VPCLinkStatus_SDK_FAILED |
	#VPCLinkStatus_SDK_INACTIVE

#VPCLinkStatus_SDK_PENDING:   #VPCLinkStatus_SDK & "PENDING"
#VPCLinkStatus_SDK_AVAILABLE: #VPCLinkStatus_SDK & "AVAILABLE"
#VPCLinkStatus_SDK_DELETING:  #VPCLinkStatus_SDK & "DELETING"
#VPCLinkStatus_SDK_FAILED:    #VPCLinkStatus_SDK & "FAILED"
#VPCLinkStatus_SDK_INACTIVE:  #VPCLinkStatus_SDK & "INACTIVE"

#VPCLinkVersion: string // #enumVPCLinkVersion

#enumVPCLinkVersion:
	#VPCLinkVersion_V2

#VPCLinkVersion_V2: #VPCLinkVersion & "V2"
