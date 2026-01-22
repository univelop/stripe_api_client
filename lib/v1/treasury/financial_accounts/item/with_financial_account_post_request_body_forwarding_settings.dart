// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_forwarding_settings_type.dart';

/// auto generated
/// A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
class WithFinancialAccountPostRequestBodyForwardingSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_account property
  String? financialAccount;

  ///  The payment_method property
  String? paymentMethod;

  ///  The type property
  WithFinancialAccountPostRequestBodyForwardingSettingsType? type_;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyForwardingSettings] and sets the default values.
  WithFinancialAccountPostRequestBodyForwardingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyForwardingSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyForwardingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            WithFinancialAccountPostRequestBodyForwardingSettingsType>(
        (stringValue) =>
            WithFinancialAccountPostRequestBodyForwardingSettingsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeEnumValue<
            WithFinancialAccountPostRequestBodyForwardingSettingsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
