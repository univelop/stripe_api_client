// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_decline_charge_on.dart';

/// auto generated
class AccountCardPaymentsSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The decline_on property
  AccountDeclineChargeOn? declineOn;

  ///  The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
  String? statementDescriptorPrefix;

  ///  The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
  String? statementDescriptorPrefixKana;

  ///  The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
  String? statementDescriptorPrefixKanji;

  /// Instantiates a new [AccountCardPaymentsSettings] and sets the default values.
  AccountCardPaymentsSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountCardPaymentsSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountCardPaymentsSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['decline_on'] = (node) => declineOn =
        node.getObjectValue<AccountDeclineChargeOn>(
            AccountDeclineChargeOn.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_prefix'] =
        (node) => statementDescriptorPrefix = node.getStringValue();
    deserializerMap['statement_descriptor_prefix_kana'] =
        (node) => statementDescriptorPrefixKana = node.getStringValue();
    deserializerMap['statement_descriptor_prefix_kanji'] =
        (node) => statementDescriptorPrefixKanji = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountDeclineChargeOn>('decline_on', declineOn);
    writer.writeStringValue(
        'statement_descriptor_prefix', statementDescriptorPrefix);
    writer.writeStringValue(
        'statement_descriptor_prefix_kana', statementDescriptorPrefixKana);
    writer.writeStringValue(
        'statement_descriptor_prefix_kanji', statementDescriptorPrefixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
