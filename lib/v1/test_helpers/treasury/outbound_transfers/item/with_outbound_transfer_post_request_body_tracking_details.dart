// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_outbound_transfer_post_request_body_tracking_details_ach.dart';
import './with_outbound_transfer_post_request_body_tracking_details_type.dart';
import './with_outbound_transfer_post_request_body_tracking_details_us_domestic_wire.dart';

/// auto generated
/// Details about network-specific tracking information.
class WithOutboundTransferPostRequestBodyTrackingDetails
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  WithOutboundTransferPostRequestBodyTrackingDetailsAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  WithOutboundTransferPostRequestBodyTrackingDetailsType? type_;

  ///  The us_domestic_wire property
  WithOutboundTransferPostRequestBodyTrackingDetailsUsDomesticWire?
      usDomesticWire;

  /// Instantiates a new [WithOutboundTransferPostRequestBodyTrackingDetails] and sets the default values.
  WithOutboundTransferPostRequestBodyTrackingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithOutboundTransferPostRequestBodyTrackingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithOutboundTransferPostRequestBodyTrackingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node
        .getObjectValue<WithOutboundTransferPostRequestBodyTrackingDetailsAch>(
            WithOutboundTransferPostRequestBodyTrackingDetailsAch
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<WithOutboundTransferPostRequestBodyTrackingDetailsType>(
            (stringValue) =>
                WithOutboundTransferPostRequestBodyTrackingDetailsType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'us_domestic_wire'] = (node) => usDomesticWire = node.getObjectValue<
            WithOutboundTransferPostRequestBodyTrackingDetailsUsDomesticWire>(
        WithOutboundTransferPostRequestBodyTrackingDetailsUsDomesticWire
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        WithOutboundTransferPostRequestBodyTrackingDetailsAch>('ach', ach);
    writer
        .writeEnumValue<WithOutboundTransferPostRequestBodyTrackingDetailsType>(
            'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            WithOutboundTransferPostRequestBodyTrackingDetailsUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
