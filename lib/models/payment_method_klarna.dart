// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_klarna_dob.dart';

/// auto generated
class PaymentMethodKlarna implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's date of birth, if provided.
  PaymentFlowsPrivatePaymentMethodsKlarnaDob? dob;

  /// Instantiates a new [PaymentMethodKlarna] and sets the default values.
  PaymentMethodKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodKlarna createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<PaymentFlowsPrivatePaymentMethodsKlarnaDob>(
            PaymentFlowsPrivatePaymentMethodsKlarnaDob
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentFlowsPrivatePaymentMethodsKlarnaDob>(
        'dob', dob);
    writer.writeAdditionalData(additionalData);
  }
}
