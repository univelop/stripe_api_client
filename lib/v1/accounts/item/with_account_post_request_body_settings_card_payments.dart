// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_card_payments_decline_on.dart';
import './with_account_post_request_body_settings_card_payments_statement_descriptor_prefix_kana.dart';
import './with_account_post_request_body_settings_card_payments_statement_descriptor_prefix_kanji.dart';

/// auto generated
class WithAccountPostRequestBodySettingsCardPayments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The decline_on property
  WithAccountPostRequestBodySettingsCardPaymentsDeclineOn? declineOn;

  ///  The statement_descriptor_prefix property
  String? statementDescriptorPrefix;

  ///  The statement_descriptor_prefix_kana property
  WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana?
      statementDescriptorPrefixKana;

  ///  The statement_descriptor_prefix_kanji property
  WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji?
      statementDescriptorPrefixKanji;

  /// Instantiates a new [WithAccountPostRequestBodySettingsCardPayments] and sets the default values.
  WithAccountPostRequestBodySettingsCardPayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsCardPayments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsCardPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['decline_on'] = (node) => declineOn = node.getObjectValue<
            WithAccountPostRequestBodySettingsCardPaymentsDeclineOn>(
        WithAccountPostRequestBodySettingsCardPaymentsDeclineOn
            .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_prefix'] =
        (node) => statementDescriptorPrefix = node.getStringValue();
    deserializerMap['statement_descriptor_prefix_kana'] = (node) =>
        statementDescriptorPrefixKana = node.getObjectValue<
                WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana>(
            WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_prefix_kanji'] = (node) =>
        statementDescriptorPrefixKanji = node.getObjectValue<
                WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji>(
            WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsCardPaymentsDeclineOn>(
        'decline_on', declineOn);
    writer.writeStringValue(
        'statement_descriptor_prefix', statementDescriptorPrefix);
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKana>(
        'statement_descriptor_prefix_kana', statementDescriptorPrefixKana);
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsCardPaymentsStatementDescriptorPrefixKanji>(
        'statement_descriptor_prefix_kanji', statementDescriptorPrefixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
