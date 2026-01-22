// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_satispay_capture_method.dart';

/// auto generated
class PaymentMethodOptionsSatispay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentMethodOptionsSatispayCaptureMethod? captureMethod;

  /// Instantiates a new [PaymentMethodOptionsSatispay] and sets the default values.
  PaymentMethodOptionsSatispay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsSatispay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsSatispay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentMethodOptionsSatispayCaptureMethod>(
            (stringValue) => PaymentMethodOptionsSatispayCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodOptionsSatispayCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
