// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_features.dart';
import './with_financial_account_post_request_body_forwarding_settings.dart';
import './with_financial_account_post_request_body_metadata.dart';
import './with_financial_account_post_request_body_nickname.dart';
import './with_financial_account_post_request_body_platform_restrictions.dart';

/// auto generated
class WithFinancialAccountPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
  WithFinancialAccountPostRequestBodyFeatures? features;

  ///  A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
  WithFinancialAccountPostRequestBodyForwardingSettings? forwardingSettings;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithFinancialAccountPostRequestBodyMetadata? metadata;

  ///  The nickname for the FinancialAccount.
  WithFinancialAccountPostRequestBodyNickname? nickname;

  ///  The set of functionalities that the platform can restrict on the FinancialAccount.
  WithFinancialAccountPostRequestBodyPlatformRestrictions? platformRestrictions;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithFinancialAccountPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features =
        node.getObjectValue<WithFinancialAccountPostRequestBodyFeatures>(
            WithFinancialAccountPostRequestBodyFeatures
                .createFromDiscriminatorValue);
    deserializerMap['forwarding_settings'] = (node) => forwardingSettings = node
        .getObjectValue<WithFinancialAccountPostRequestBodyForwardingSettings>(
            WithFinancialAccountPostRequestBodyForwardingSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithFinancialAccountPostRequestBodyMetadata>(
            WithFinancialAccountPostRequestBodyMetadata
                .createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname =
        node.getObjectValue<WithFinancialAccountPostRequestBodyNickname>(
            WithFinancialAccountPostRequestBodyNickname
                .createFromDiscriminatorValue);
    deserializerMap['platform_restrictions'] = (node) => platformRestrictions =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyPlatformRestrictions>(
            WithFinancialAccountPostRequestBodyPlatformRestrictions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithFinancialAccountPostRequestBodyFeatures>(
        'features', features);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyForwardingSettings>(
        'forwarding_settings', forwardingSettings);
    writer.writeObjectValue<WithFinancialAccountPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<WithFinancialAccountPostRequestBodyNickname>(
        'nickname', nickname);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyPlatformRestrictions>(
        'platform_restrictions', platformRestrictions);
  }
}
