// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_tracking_details_ach.dart';
import './outbound_payments_post_request_body_tracking_details_type.dart';
import './outbound_payments_post_request_body_tracking_details_us_domestic_wire.dart';

/// auto generated
/// Details about network-specific tracking information.
class OutboundPaymentsPostRequestBodyTrackingDetails
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  OutboundPaymentsPostRequestBodyTrackingDetailsAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  OutboundPaymentsPostRequestBodyTrackingDetailsType? type_;

  ///  The us_domestic_wire property
  OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire? usDomesticWire;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyTrackingDetails] and sets the default values.
  OutboundPaymentsPostRequestBodyTrackingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyTrackingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyTrackingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach =
        node.getObjectValue<OutboundPaymentsPostRequestBodyTrackingDetailsAch>(
            OutboundPaymentsPostRequestBodyTrackingDetailsAch
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<OutboundPaymentsPostRequestBodyTrackingDetailsType>(
            (stringValue) => OutboundPaymentsPostRequestBodyTrackingDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire =
        node.getObjectValue<
                OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire>(
            OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<OutboundPaymentsPostRequestBodyTrackingDetailsAch>(
        'ach', ach);
    writer.writeEnumValue<OutboundPaymentsPostRequestBodyTrackingDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
