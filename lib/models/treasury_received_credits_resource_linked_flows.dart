// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_received_credits_resource_source_flows_details.dart';

/// auto generated
class TreasuryReceivedCreditsResourceLinkedFlows
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The CreditReversal created as a result of this ReceivedCredit being reversed.
  String? creditReversal;

  ///  Set if the ReceivedCredit was created due to an [Issuing Authorization](https://api.stripe.com#issuing_authorizations) object.
  String? issuingAuthorization;

  ///  Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://api.stripe.com#issuing_transactions) object.
  String? issuingTransaction;

  ///  ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
  String? sourceFlow;

  ///  The expandable object of the source flow.
  TreasuryReceivedCreditsResourceSourceFlowsDetails? sourceFlowDetails;

  ///  The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
  String? sourceFlowType;

  /// Instantiates a new [TreasuryReceivedCreditsResourceLinkedFlows] and sets the default values.
  TreasuryReceivedCreditsResourceLinkedFlows() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedCreditsResourceLinkedFlows
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryReceivedCreditsResourceLinkedFlows();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['credit_reversal'] =
        (node) => creditReversal = node.getStringValue();
    deserializerMap['issuing_authorization'] =
        (node) => issuingAuthorization = node.getStringValue();
    deserializerMap['issuing_transaction'] =
        (node) => issuingTransaction = node.getStringValue();
    deserializerMap['source_flow'] =
        (node) => sourceFlow = node.getStringValue();
    deserializerMap['source_flow_details'] = (node) => sourceFlowDetails =
        node.getObjectValue<TreasuryReceivedCreditsResourceSourceFlowsDetails>(
            TreasuryReceivedCreditsResourceSourceFlowsDetails
                .createFromDiscriminatorValue);
    deserializerMap['source_flow_type'] =
        (node) => sourceFlowType = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('credit_reversal', creditReversal);
    writer.writeStringValue('issuing_authorization', issuingAuthorization);
    writer.writeStringValue('issuing_transaction', issuingTransaction);
    writer.writeStringValue('source_flow', sourceFlow);
    writer.writeObjectValue<TreasuryReceivedCreditsResourceSourceFlowsDetails>(
        'source_flow_details', sourceFlowDetails);
    writer.writeStringValue('source_flow_type', sourceFlowType);
    writer.writeAdditionalData(additionalData);
  }
}
