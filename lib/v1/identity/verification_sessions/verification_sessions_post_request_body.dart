// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_sessions_post_request_body_metadata.dart';
import './verification_sessions_post_request_body_options.dart';
import './verification_sessions_post_request_body_provided_details.dart';
import './verification_sessions_post_request_body_related_person.dart';
import './verification_sessions_post_request_body_type.dart';

/// auto generated
class VerificationSessionsPostRequestBody implements Parsable {
  ///  A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
  String? clientReferenceId;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  VerificationSessionsPostRequestBodyMetadata? metadata;

  ///  A set of options for the session’s verification checks.
  VerificationSessionsPostRequestBodyOptions? options;

  ///  Details provided about the user being verified. These details may be shown to the user.
  VerificationSessionsPostRequestBodyProvidedDetails? providedDetails;

  ///  Customer ID
  String? relatedCustomer;

  ///  The ID of the Account representing a customer.
  String? relatedCustomerAccount;

  ///  Tokens referencing a Person resource and it's associated account.
  VerificationSessionsPostRequestBodyRelatedPerson? relatedPerson;

  ///  The URL that the user will be redirected to upon completing the verification flow.
  String? returnUrl;

  ///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
  VerificationSessionsPostRequestBodyType? type_;

  ///  The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows.
  String? verificationFlow;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return VerificationSessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_reference_id'] =
        (node) => clientReferenceId = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<VerificationSessionsPostRequestBodyMetadata>(
            VerificationSessionsPostRequestBodyMetadata
                .createFromDiscriminatorValue);
    deserializerMap['options'] = (node) => options =
        node.getObjectValue<VerificationSessionsPostRequestBodyOptions>(
            VerificationSessionsPostRequestBodyOptions
                .createFromDiscriminatorValue);
    deserializerMap['provided_details'] = (node) => providedDetails =
        node.getObjectValue<VerificationSessionsPostRequestBodyProvidedDetails>(
            VerificationSessionsPostRequestBodyProvidedDetails
                .createFromDiscriminatorValue);
    deserializerMap['related_customer'] =
        (node) => relatedCustomer = node.getStringValue();
    deserializerMap['related_customer_account'] =
        (node) => relatedCustomerAccount = node.getStringValue();
    deserializerMap['related_person'] = (node) => relatedPerson =
        node.getObjectValue<VerificationSessionsPostRequestBodyRelatedPerson>(
            VerificationSessionsPostRequestBodyRelatedPerson
                .createFromDiscriminatorValue);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<VerificationSessionsPostRequestBodyType>(
            (stringValue) => VerificationSessionsPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['verification_flow'] =
        (node) => verificationFlow = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_reference_id', clientReferenceId);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<VerificationSessionsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<VerificationSessionsPostRequestBodyOptions>(
        'options', options);
    writer.writeObjectValue<VerificationSessionsPostRequestBodyProvidedDetails>(
        'provided_details', providedDetails);
    writer.writeStringValue('related_customer', relatedCustomer);
    writer.writeStringValue('related_customer_account', relatedCustomerAccount);
    writer.writeObjectValue<VerificationSessionsPostRequestBodyRelatedPerson>(
        'related_person', relatedPerson);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<VerificationSessionsPostRequestBodyType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('verification_flow', verificationFlow);
  }
}
