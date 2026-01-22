// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_card_details_api_resource_multicapture_status.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether or not multiple captures are supported.
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus?
      status;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status = node.getEnumValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus>(
        (stringValue) =>
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
