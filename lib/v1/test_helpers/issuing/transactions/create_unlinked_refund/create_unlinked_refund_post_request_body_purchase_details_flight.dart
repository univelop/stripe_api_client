// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_unlinked_refund_post_request_body_purchase_details_flight_segments.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The departure_at property
  int? departureAt;

  ///  The passenger_name property
  String? passengerName;

  ///  The refundable property
  bool? refundable;

  ///  The segments property
  Iterable<CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlightSegments>?
      segments;

  ///  The travel_agency property
  String? travelAgency;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['departure_at'] =
        (node) => departureAt = node.getIntValue();
    deserializerMap['passenger_name'] =
        (node) => passengerName = node.getStringValue();
    deserializerMap['refundable'] = (node) => refundable = node.getBoolValue();
    deserializerMap[
        'segments'] = (node) => segments = node.getCollectionOfObjectValues<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlightSegments>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlightSegments
            .createFromDiscriminatorValue);
    deserializerMap['travel_agency'] =
        (node) => travelAgency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('departure_at', departureAt);
    writer.writeStringValue('passenger_name', passengerName);
    writer.writeBoolValue('refundable', value: refundable);
    writer.writeCollectionOfObjectValues<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlightSegments>(
        'segments', segments);
    writer.writeStringValue('travel_agency', travelAgency);
    writer.writeAdditionalData(additionalData);
  }
}
