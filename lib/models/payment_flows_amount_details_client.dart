// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_amount_details_client_resource_tip.dart';

/// auto generated
class PaymentFlowsAmountDetailsClient
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tip property
  PaymentFlowsAmountDetailsClientResourceTip? tip;

  /// Instantiates a new [PaymentFlowsAmountDetailsClient] and sets the default values.
  PaymentFlowsAmountDetailsClient() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAmountDetailsClient createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentFlowsAmountDetailsClient();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tip'] = (node) => tip =
        node.getObjectValue<PaymentFlowsAmountDetailsClientResourceTip>(
            PaymentFlowsAmountDetailsClientResourceTip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentFlowsAmountDetailsClientResourceTip>(
        'tip', tip);
    writer.writeAdditionalData(additionalData);
  }
}
