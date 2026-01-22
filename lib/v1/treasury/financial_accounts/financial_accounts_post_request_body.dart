// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './financial_accounts_post_request_body_features.dart';
import './financial_accounts_post_request_body_metadata.dart';
import './financial_accounts_post_request_body_nickname.dart';
import './financial_accounts_post_request_body_platform_restrictions.dart';

/// auto generated
class FinancialAccountsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
  FinancialAccountsPostRequestBodyFeatures? features;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  FinancialAccountsPostRequestBodyMetadata? metadata;

  ///  The nickname for the FinancialAccount.
  FinancialAccountsPostRequestBodyNickname? nickname;

  ///  The set of functionalities that the platform can restrict on the FinancialAccount.
  FinancialAccountsPostRequestBodyPlatformRestrictions? platformRestrictions;

  ///  The currencies the FinancialAccount can hold a balance in.
  Iterable<String>? supportedCurrencies;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccountsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinancialAccountsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            FinancialAccountsPostRequestBodyFeatures>(
        FinancialAccountsPostRequestBodyFeatures.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            FinancialAccountsPostRequestBodyMetadata>(
        FinancialAccountsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname = node.getObjectValue<
            FinancialAccountsPostRequestBodyNickname>(
        FinancialAccountsPostRequestBodyNickname.createFromDiscriminatorValue);
    deserializerMap['platform_restrictions'] = (node) => platformRestrictions =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyPlatformRestrictions>(
            FinancialAccountsPostRequestBodyPlatformRestrictions
                .createFromDiscriminatorValue);
    deserializerMap['supported_currencies'] = (node) =>
        supportedCurrencies = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<FinancialAccountsPostRequestBodyFeatures>(
        'features', features);
    writer.writeObjectValue<FinancialAccountsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<FinancialAccountsPostRequestBodyNickname>(
        'nickname', nickname);
    writer
        .writeObjectValue<FinancialAccountsPostRequestBodyPlatformRestrictions>(
            'platform_restrictions', platformRestrictions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'supported_currencies', supportedCurrencies);
  }
}
