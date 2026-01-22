// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsDisputesListFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_payments property
  bool? capturePayments;

  ///  The destination_on_behalf_of_charge_management property
  bool? destinationOnBehalfOfChargeManagement;

  ///  The dispute_management property
  bool? disputeManagement;

  ///  The refund_management property
  bool? refundManagement;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsDisputesListFeatures] and sets the default values.
  AccountSessionsPostRequestBodyComponentsDisputesListFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsDisputesListFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsDisputesListFeatures();
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
