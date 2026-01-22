// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ConnectEmbeddedPaymentsFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether to allow capturing and cancelling payment intents. This is `true` by default.
  bool? capturePayments;

  ///  Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
  bool? destinationOnBehalfOfChargeManagement;

  ///  Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
  bool? disputeManagement;

  ///  Whether sending refunds is enabled. This is `true` by default.
  bool? refundManagement;

  /// Instantiates a new [ConnectEmbeddedPaymentsFeatures] and sets the default values.
  ConnectEmbeddedPaymentsFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedPaymentsFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConnectEmbeddedPaymentsFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_payments'] =
        (node) => capturePayments = node.getBoolValue();
    deserializerMap['destination_on_behalf_of_charge_management'] =
        (node) => destinationOnBehalfOfChargeManagement = node.getBoolValue();
    deserializerMap['dispute_management'] =
        (node) => disputeManagement = node.getBoolValue();
    deserializerMap['refund_management'] =
        (node) => refundManagement = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('capture_payments', value: capturePayments);
    writer.writeBoolValue('destination_on_behalf_of_charge_management',
        value: destinationOnBehalfOfChargeManagement);
    writer.writeBoolValue('dispute_management', value: disputeManagement);
    writer.writeBoolValue('refund_management', value: refundManagement);
    writer.writeAdditionalData(additionalData);
  }
}
