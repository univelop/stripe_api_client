// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_settings_card_payments_decline_on.dart';
import './accounts_post_request_body_settings_card_payments_statement_descriptor_prefix_kana.dart';
import './accounts_post_request_body_settings_card_payments_statement_descriptor_prefix_kanji.dart';

/// auto generated
class AccountsPostRequestBodySettingsCardPayments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The decline_on property
  AccountsPostRequestBodySettingsCardPaymentsDeclineOn? declineOn;

  ///  The statement_descriptor_prefix property
  String? statementDescriptorPrefix;

  ///  The statement_descriptor_prefix_kana property
  AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana?
      statementDescriptorPrefixKana;

  ///  The statement_descriptor_prefix_kanji property
  AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji?
      statementDescriptorPrefixKanji;

  /// Instantiates a new [AccountsPostRequestBodySettingsCardPayments] and sets the default values.
  AccountsPostRequestBodySettingsCardPayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodySettingsCardPayments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodySettingsCardPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['decline_on'] = (node) => declineOn = node
        .getObjectValue<AccountsPostRequestBodySettingsCardPaymentsDeclineOn>(
            AccountsPostRequestBodySettingsCardPaymentsDeclineOn
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_prefix'] =
        (node) => statementDescriptorPrefix = node.getStringValue();
    deserializerMap['statement_descriptor_prefix_kana'] = (node) =>
        statementDescriptorPrefixKana = node.getObjectValue<
                AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana>(
            AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_prefix_kanji'] = (node) =>
        statementDescriptorPrefixKanji = node.getObjectValue<
                AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji>(
            AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<AccountsPostRequestBodySettingsCardPaymentsDeclineOn>(
            'decline_on', declineOn);
    writer.writeStringValue(
        'statement_descriptor_prefix', statementDescriptorPrefix);
    writer.writeObjectValue<
            AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana>(
        'statement_descriptor_prefix_kana', statementDescriptorPrefixKana);
    writer.writeObjectValue<
            AccountsPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji>(
        'statement_descriptor_prefix_kanji', statementDescriptorPrefixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
