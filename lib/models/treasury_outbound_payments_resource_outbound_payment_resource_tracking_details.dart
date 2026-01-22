// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_outbound_payments_resource_ach_tracking_details.dart';
import './treasury_outbound_payments_resource_outbound_payment_resource_tracking_details_type.dart';
import './treasury_outbound_payments_resource_us_domestic_wire_tracking_details.dart';

/// auto generated
class TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  TreasuryOutboundPaymentsResourceAchTrackingDetails? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The US bank account network used to send funds.
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetailsType?
      type_;

  ///  The us_domestic_wire property
  TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails? usDomesticWire;

  /// Instantiates a new [TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails] and sets the default values.
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach =
        node.getObjectValue<TreasuryOutboundPaymentsResourceAchTrackingDetails>(
            TreasuryOutboundPaymentsResourceAchTrackingDetails
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetailsType>(
        (stringValue) =>
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire =
        node.getObjectValue<
                TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails>(
            TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryOutboundPaymentsResourceAchTrackingDetails>(
        'ach', ach);
    writer.writeEnumValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
