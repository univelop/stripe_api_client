// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SetupAttemptPaymentMethodDetailsCardChecks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  String? addressLine1Check;

  ///  If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  String? addressPostalCodeCheck;

  ///  If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  String? cvcCheck;

  /// Instantiates a new [SetupAttemptPaymentMethodDetailsCardChecks] and sets the default values.
  SetupAttemptPaymentMethodDetailsCardChecks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttemptPaymentMethodDetailsCardChecks
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupAttemptPaymentMethodDetailsCardChecks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address_line1_check'] =
        (node) => addressLine1Check = node.getStringValue();
    deserializerMap['address_postal_code_check'] =
        (node) => addressPostalCodeCheck = node.getStringValue();
    deserializerMap['cvc_check'] = (node) => cvcCheck = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('address_line1_check', addressLine1Check);
    writer.writeStringValue(
        'address_postal_code_check', addressPostalCodeCheck);
    writer.writeStringValue('cvc_check', cvcCheck);
    writer.writeAdditionalData(additionalData);
  }
}
