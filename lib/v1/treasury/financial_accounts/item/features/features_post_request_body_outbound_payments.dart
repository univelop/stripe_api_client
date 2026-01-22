// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_outbound_payments_ach.dart';
import './features_post_request_body_outbound_payments_us_domestic_wire.dart';

/// auto generated
/// Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
class FeaturesPostRequestBodyOutboundPayments
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  FeaturesPostRequestBodyOutboundPaymentsAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_domestic_wire property
  FeaturesPostRequestBodyOutboundPaymentsUsDomesticWire? usDomesticWire;

  /// Instantiates a new [FeaturesPostRequestBodyOutboundPayments] and sets the default values.
  FeaturesPostRequestBodyOutboundPayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBodyOutboundPayments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBodyOutboundPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach =
        node.getObjectValue<FeaturesPostRequestBodyOutboundPaymentsAch>(
            FeaturesPostRequestBodyOutboundPaymentsAch
                .createFromDiscriminatorValue);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire = node
        .getObjectValue<FeaturesPostRequestBodyOutboundPaymentsUsDomesticWire>(
            FeaturesPostRequestBodyOutboundPaymentsUsDomesticWire
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FeaturesPostRequestBodyOutboundPaymentsAch>(
        'ach', ach);
    writer.writeObjectValue<
            FeaturesPostRequestBodyOutboundPaymentsUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
