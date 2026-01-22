// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './external_accounts_post_request_body_bank_account.dart';
import './external_accounts_post_request_body_metadata.dart';

/// auto generated
class External_accountsPostRequestBody implements Parsable {
  ///  Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
  ExternalAccountsPostRequestBodyBankAccount? bankAccount;

  ///  When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
  bool? defaultForCurrency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A token, like the ones returned by [Stripe.js](https://docs.stripe.com/js) or a dictionary containing a user's external account details (with the options shown below). Please refer to full [documentation](https://stripe.com/docs/api/external_accounts) instead.
  String? externalAccount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  ExternalAccountsPostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static External_accountsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return External_accountsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account'] = (node) => bankAccount =
        node.getObjectValue<ExternalAccountsPostRequestBodyBankAccount>(
            ExternalAccountsPostRequestBodyBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['default_for_currency'] =
        (node) => defaultForCurrency = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['external_account'] =
        (node) => externalAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            ExternalAccountsPostRequestBodyMetadata>(
        ExternalAccountsPostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ExternalAccountsPostRequestBodyBankAccount>(
        'bank_account', bankAccount);
    writer.writeBoolValue('default_for_currency', value: defaultForCurrency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('external_account', externalAccount);
    writer.writeObjectValue<ExternalAccountsPostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
