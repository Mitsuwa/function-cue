// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/lexmodels/v1beta1

package v1beta1

#CodeHookObservation: {
	// The version of the request-response that you want Amazon Lex to use
	// to invoke your Lambda function. For more information, see
	// Using Lambda Functions. Must be less than or equal to 5 characters in length.
	messageVersion?: null | string @go(MessageVersion,*string)

	// The Amazon Resource Name (ARN) of the Lambda function.
	uri?: null | string @go(URI,*string)
}

#CodeHookParameters: {
	// The version of the request-response that you want Amazon Lex to use
	// to invoke your Lambda function. For more information, see
	// Using Lambda Functions. Must be less than or equal to 5 characters in length.
	// +kubebuilder:validation:Required
	messageVersion?: null | string @go(MessageVersion,*string)

	// The Amazon Resource Name (ARN) of the Lambda function.
	// +kubebuilder:validation:Required
	uri?: null | string @go(URI,*string)
}

#ConclusionStatementMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ConclusionStatementMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ConclusionStatementObservation: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#ConclusionStatementMessageObservation] @go(Message,[]ConclusionStatementMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#ConclusionStatementParameters: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#ConclusionStatementMessageParameters] @go(Message,[]ConclusionStatementMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#ConfirmationPromptMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ConfirmationPromptMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ConfirmationPromptObservation: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#ConfirmationPromptMessageObservation] @go(Message,[]ConfirmationPromptMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#ConfirmationPromptParameters: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Required
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#ConfirmationPromptMessageParameters] @go(Message,[]ConfirmationPromptMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#DialogCodeHookObservation: {
	// The version of the request-response that you want Amazon Lex to use
	// to invoke your Lambda function. For more information, see
	// Using Lambda Functions. Must be less than or equal to 5 characters in length.
	messageVersion?: null | string @go(MessageVersion,*string)

	// The Amazon Resource Name (ARN) of the Lambda function.
	uri?: null | string @go(URI,*string)
}

#DialogCodeHookParameters: {
	// The version of the request-response that you want Amazon Lex to use
	// to invoke your Lambda function. For more information, see
	// Using Lambda Functions. Must be less than or equal to 5 characters in length.
	// +kubebuilder:validation:Required
	messageVersion?: null | string @go(MessageVersion,*string)

	// The Amazon Resource Name (ARN) of the Lambda function.
	// +kubebuilder:validation:Required
	uri?: null | string @go(URI,*string)
}

#FollowUpPromptObservation: {
	// Prompts for information from the user. Attributes are documented under prompt.
	prompt?: [...#PromptObservation] @go(Prompt,[]PromptObservation)

	// If the user answers "no" to the question defined in the prompt field,
	// Amazon Lex responds with this statement to acknowledge that the intent was canceled. Attributes are
	// documented below under statement.
	rejectionStatement?: [...#RejectionStatementObservation] @go(RejectionStatement,[]RejectionStatementObservation)
}

#FollowUpPromptParameters: {
	// Prompts for information from the user. Attributes are documented under prompt.
	// +kubebuilder:validation:Required
	prompt: [...#PromptParameters] @go(Prompt,[]PromptParameters)

	// If the user answers "no" to the question defined in the prompt field,
	// Amazon Lex responds with this statement to acknowledge that the intent was canceled. Attributes are
	// documented below under statement.
	// +kubebuilder:validation:Required
	rejectionStatement: [...#RejectionStatementParameters] @go(RejectionStatement,[]RejectionStatementParameters)
}

#FulfillmentActivityObservation: {
	// A description of the Lambda function that is run to fulfill the intent.
	// Required if type is CodeHook. Attributes are documented under code_hook.
	codeHook?: [...#CodeHookObservation] @go(CodeHook,[]CodeHookObservation)

	// How the intent should be fulfilled, either by running a Lambda function or by
	// returning the slot data to the client application. Type can be either ReturnIntent or CodeHook, as documented here.
	type?: null | string @go(Type,*string)
}

#FulfillmentActivityParameters: {
	// A description of the Lambda function that is run to fulfill the intent.
	// Required if type is CodeHook. Attributes are documented under code_hook.
	// +kubebuilder:validation:Optional
	codeHook?: [...#CodeHookParameters] @go(CodeHook,[]CodeHookParameters)

	// How the intent should be fulfilled, either by running a Lambda function or by
	// returning the slot data to the client application. Type can be either ReturnIntent or CodeHook, as documented here.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#IntentObservation_2: {
	// The ARN of the Lex intent.
	arn?: null | string @go(Arn,*string)

	// Checksum identifying the version of the intent that was created. The checksum is not
	// included as an argument because the resource will add it automatically when updating the intent.
	checksum?: null | string @go(Checksum,*string)

	// The statement that you want Amazon Lex to convey to the user
	// after the intent is successfully fulfilled by the Lambda function. This element is relevant only if
	// you provide a Lambda function in the fulfillment_activity. If you return the intent to the client
	// application, you can't specify this element. The follow_up_prompt and conclusion_statement are
	// mutually exclusive. You can specify only one. Attributes are documented under statement.
	conclusionStatement?: [...#ConclusionStatementObservation] @go(ConclusionStatement,[]ConclusionStatementObservation)

	// Prompts the user to confirm the intent. This question should
	// have a yes or no answer. You you must provide both the rejection_statement and confirmation_prompt,
	// or neither. Attributes are documented under prompt.
	confirmationPrompt?: [...#ConfirmationPromptObservation] @go(ConfirmationPrompt,[]ConfirmationPromptObservation)

	// Determines if a new slot type version is created when the initial
	// resource is created and on each update. Defaults to false.
	createVersion?: null | bool @go(CreateVersion,*bool)

	// The date when the intent version was created.
	createdDate?: null | string @go(CreatedDate,*string)

	// A description of the intent. Must be less than or equal to 200 characters in length.
	description?: null | string @go(Description,*string)

	// Specifies a Lambda function to invoke for each user input. You can
	// invoke this Lambda function to personalize user interaction. Attributes are documented under code_hook.
	dialogCodeHook?: [...#DialogCodeHookObservation] @go(DialogCodeHook,[]DialogCodeHookObservation)

	// Amazon Lex uses this prompt to solicit additional activity after
	// fulfilling an intent. For example, after the OrderPizza intent is fulfilled, you might prompt the
	// user to order a drink. The follow_up_prompt field and the conclusion_statement field are mutually
	// exclusive. You can specify only one. Attributes are documented under follow_up_prompt.
	followUpPrompt?: [...#FollowUpPromptObservation] @go(FollowUpPrompt,[]FollowUpPromptObservation)

	// Describes how the intent is fulfilled. For example, after a
	// user provides all of the information for a pizza order, fulfillment_activity defines how the bot
	// places an order with a local pizza store. Attributes are documented under fulfillment_activity.
	fulfillmentActivity?: [...#FulfillmentActivityObservation] @go(FulfillmentActivity,[]FulfillmentActivityObservation)
	id?: null | string @go(ID,*string)

	// The date when the $LATEST version of this intent was updated.
	lastUpdatedDate?: null | string @go(LastUpdatedDate,*string)

	// A unique identifier for the built-in intent to base this
	// intent on. To find the signature for an intent, see
	// Standard Built-in Intents
	// in the Alexa Skills Kit.
	parentIntentSignature?: null | string @go(ParentIntentSignature,*string)

	// When the user answers "no" to the question defined in
	// confirmation_prompt, Amazon Lex responds with this statement to acknowledge that the intent was
	// canceled. You must provide both the rejection_statement and the confirmation_prompt, or neither.
	// Attributes are documented under statement.
	rejectionStatement?: [...#IntentRejectionStatementObservation] @go(RejectionStatement,[]IntentRejectionStatementObservation)

	// An array of utterances (strings) that a user might say to signal
	// the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".
	// In each utterance, a slot name is enclosed in curly braces. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
	sampleUtterances?: [...null | string] @go(SampleUtterances,[]*string)

	// An list of intent slots. At runtime, Amazon Lex elicits required slot values
	// from the user using prompts defined in the slots. Attributes are documented under slot.
	slot?: [...#SlotObservation] @go(Slot,[]SlotObservation)

	// The version of the bot.
	version?: null | string @go(Version,*string)
}

#IntentParameters_2: {
	// The statement that you want Amazon Lex to convey to the user
	// after the intent is successfully fulfilled by the Lambda function. This element is relevant only if
	// you provide a Lambda function in the fulfillment_activity. If you return the intent to the client
	// application, you can't specify this element. The follow_up_prompt and conclusion_statement are
	// mutually exclusive. You can specify only one. Attributes are documented under statement.
	// +kubebuilder:validation:Optional
	conclusionStatement?: [...#ConclusionStatementParameters] @go(ConclusionStatement,[]ConclusionStatementParameters)

	// Prompts the user to confirm the intent. This question should
	// have a yes or no answer. You you must provide both the rejection_statement and confirmation_prompt,
	// or neither. Attributes are documented under prompt.
	// +kubebuilder:validation:Optional
	confirmationPrompt?: [...#ConfirmationPromptParameters] @go(ConfirmationPrompt,[]ConfirmationPromptParameters)

	// Determines if a new slot type version is created when the initial
	// resource is created and on each update. Defaults to false.
	// +kubebuilder:validation:Optional
	createVersion?: null | bool @go(CreateVersion,*bool)

	// A description of the intent. Must be less than or equal to 200 characters in length.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies a Lambda function to invoke for each user input. You can
	// invoke this Lambda function to personalize user interaction. Attributes are documented under code_hook.
	// +kubebuilder:validation:Optional
	dialogCodeHook?: [...#DialogCodeHookParameters] @go(DialogCodeHook,[]DialogCodeHookParameters)

	// Amazon Lex uses this prompt to solicit additional activity after
	// fulfilling an intent. For example, after the OrderPizza intent is fulfilled, you might prompt the
	// user to order a drink. The follow_up_prompt field and the conclusion_statement field are mutually
	// exclusive. You can specify only one. Attributes are documented under follow_up_prompt.
	// +kubebuilder:validation:Optional
	followUpPrompt?: [...#FollowUpPromptParameters] @go(FollowUpPrompt,[]FollowUpPromptParameters)

	// Describes how the intent is fulfilled. For example, after a
	// user provides all of the information for a pizza order, fulfillment_activity defines how the bot
	// places an order with a local pizza store. Attributes are documented under fulfillment_activity.
	// +kubebuilder:validation:Optional
	fulfillmentActivity?: [...#FulfillmentActivityParameters] @go(FulfillmentActivity,[]FulfillmentActivityParameters)

	// A unique identifier for the built-in intent to base this
	// intent on. To find the signature for an intent, see
	// Standard Built-in Intents
	// in the Alexa Skills Kit.
	// +kubebuilder:validation:Optional
	parentIntentSignature?: null | string @go(ParentIntentSignature,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// When the user answers "no" to the question defined in
	// confirmation_prompt, Amazon Lex responds with this statement to acknowledge that the intent was
	// canceled. You must provide both the rejection_statement and the confirmation_prompt, or neither.
	// Attributes are documented under statement.
	// +kubebuilder:validation:Optional
	rejectionStatement?: [...#IntentRejectionStatementParameters] @go(RejectionStatement,[]IntentRejectionStatementParameters)

	// An array of utterances (strings) that a user might say to signal
	// the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".
	// In each utterance, a slot name is enclosed in curly braces. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
	// +kubebuilder:validation:Optional
	sampleUtterances?: [...null | string] @go(SampleUtterances,[]*string)

	// An list of intent slots. At runtime, Amazon Lex elicits required slot values
	// from the user using prompts defined in the slots. Attributes are documented under slot.
	// +kubebuilder:validation:Optional
	slot?: [...#SlotParameters] @go(Slot,[]SlotParameters)
}

#IntentRejectionStatementMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#IntentRejectionStatementMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#IntentRejectionStatementObservation: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#IntentRejectionStatementMessageObservation] @go(Message,[]IntentRejectionStatementMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#IntentRejectionStatementParameters: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#IntentRejectionStatementMessageParameters] @go(Message,[]IntentRejectionStatementMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#PromptMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#PromptMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#PromptObservation: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#PromptMessageObservation] @go(Message,[]PromptMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#PromptParameters: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Required
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#PromptMessageParameters] @go(Message,[]PromptMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#RejectionStatementMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#RejectionStatementMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#RejectionStatementObservation: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#RejectionStatementMessageObservation] @go(Message,[]RejectionStatementMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#RejectionStatementParameters: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#RejectionStatementMessageParameters] @go(Message,[]RejectionStatementMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#SlotObservation: {
	// A description of the bot. Must be less than or equal to 200 characters in length.
	description?: null | string @go(Description,*string)

	// The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length.
	name?: null | string @go(Name,*string)

	// Directs Lex the order in which to elicit this slot value from the user.
	// For example, if the intent has two slots with priorities 1 and 2, AWS Lex first elicits a value for
	// the slot with priority 1. If multiple slots share the same priority, the order in which Lex elicits
	// values is arbitrary. Must be between 1 and 100.
	priority?: null | float64 @go(Priority,*float64)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)

	// If you know a specific pattern with which users might respond to
	// an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This
	// is optional. In most cases, Amazon Lex is capable of understanding user utterances. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
	sampleUtterances?: [...null | string] @go(SampleUtterances,[]*string)

	// Specifies whether the slot is required or optional.
	slotConstraint?: null | string @go(SlotConstraint,*string)

	// The type of the slot, either a custom slot type that you defined or one of
	// the built-in slot types. Must be less than or equal to 100 characters in length.
	slotType?: null | string @go(SlotType,*string)

	// The version of the slot type. Must be less than or equal to 64 characters in length.
	slotTypeVersion?: null | string @go(SlotTypeVersion,*string)

	// The prompt that Amazon Lex uses to elicit the slot value
	// from the user. Attributes are documented under prompt.
	valueElicitationPrompt?: [...#ValueElicitationPromptObservation] @go(ValueElicitationPrompt,[]ValueElicitationPromptObservation)
}

#SlotParameters: {
	// A description of the bot. Must be less than or equal to 200 characters in length.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Directs Lex the order in which to elicit this slot value from the user.
	// For example, if the intent has two slots with priorities 1 and 2, AWS Lex first elicits a value for
	// the slot with priority 1. If multiple slots share the same priority, the order in which Lex elicits
	// values is arbitrary. Must be between 1 and 100.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)

	// If you know a specific pattern with which users might respond to
	// an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This
	// is optional. In most cases, Amazon Lex is capable of understanding user utterances. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
	// +kubebuilder:validation:Optional
	sampleUtterances?: [...null | string] @go(SampleUtterances,[]*string)

	// Specifies whether the slot is required or optional.
	// +kubebuilder:validation:Required
	slotConstraint?: null | string @go(SlotConstraint,*string)

	// The type of the slot, either a custom slot type that you defined or one of
	// the built-in slot types. Must be less than or equal to 100 characters in length.
	// +kubebuilder:validation:Required
	slotType?: null | string @go(SlotType,*string)

	// The version of the slot type. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Optional
	slotTypeVersion?: null | string @go(SlotTypeVersion,*string)

	// The prompt that Amazon Lex uses to elicit the slot value
	// from the user. Attributes are documented under prompt.
	// +kubebuilder:validation:Optional
	valueElicitationPrompt?: [...#ValueElicitationPromptParameters] @go(ValueElicitationPrompt,[]ValueElicitationPromptParameters)
}

#ValueElicitationPromptMessageObservation: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ValueElicitationPromptMessageParameters: {
	// The text of the message. Must be less than or equal to 1000 characters in length.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ValueElicitationPromptObservation: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	message?: [...#ValueElicitationPromptMessageObservation] @go(Message,[]ValueElicitationPromptMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	responseCard?: null | string @go(ResponseCard,*string)
}

#ValueElicitationPromptParameters: {
	// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
	// +kubebuilder:validation:Required
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message. Must contain between 1 and 15 messages.
	// +kubebuilder:validation:Required
	message: [...#ValueElicitationPromptMessageParameters] @go(Message,[]ValueElicitationPromptMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card. Must be less than or equal to 50000 characters in length.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

// IntentSpec defines the desired state of Intent
#IntentSpec: {
	forProvider: #IntentParameters_2 @go(ForProvider)
}

// IntentStatus defines the observed state of Intent.
#IntentStatus: {
	atProvider?: #IntentObservation_2 @go(AtProvider)
}

// Intent is the Schema for the Intents API. Provides an Amazon Lex intent resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Intent: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.fulfillmentActivity)",message="fulfillmentActivity is a required parameter"
	spec:    #IntentSpec   @go(Spec)
	status?: #IntentStatus @go(Status)
}

// IntentList contains a list of Intents
#IntentList: {
	items: [...#Intent] @go(Items,[]Intent)
}
