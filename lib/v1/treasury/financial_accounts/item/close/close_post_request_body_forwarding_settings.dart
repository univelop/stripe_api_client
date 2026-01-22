// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './close_post_request_body_forwarding_settings_type.dart';

/// auto generated
/// A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
class ClosePostRequestBodyForwardingSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_account property
  String? financialAccount;

  ///  The payment_method property
  String? paymentMethod;

  ///  The type property
  ClosePostRequestBodyForwardingSettingsType? type_;

  /// Instantiates a new [ClosePostRequestBodyForwardingSettings] and sets the default values.
  ClosePostRequestBodyForwardingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ClosePostRequestBodyForwardingSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ClosePostRequestBodyForwardingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ClosePostRequestBodyForwardingSettingsType>(
            (stringValue) => ClosePostRequestBodyForwardingSettingsType.values
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
    writer.writeEnumValue<ClosePostRequestBodyForwardingSettingsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
