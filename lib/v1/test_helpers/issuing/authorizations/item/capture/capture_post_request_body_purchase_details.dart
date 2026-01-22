// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_purchase_details_fleet.dart';
import './capture_post_request_body_purchase_details_flight.dart';
import './capture_post_request_body_purchase_details_fuel.dart';
import './capture_post_request_body_purchase_details_lodging.dart';
import './capture_post_request_body_purchase_details_receipt.dart';

/// auto generated
/// Additional purchase information that is optionally provided by the merchant.
class CapturePostRequestBodyPurchaseDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fleet property
  CapturePostRequestBodyPurchaseDetailsFleet? fleet;

  ///  The flight property
  CapturePostRequestBodyPurchaseDetailsFlight? flight;

  ///  The fuel property
  CapturePostRequestBodyPurchaseDetailsFuel? fuel;

  ///  The lodging property
  CapturePostRequestBodyPurchaseDetailsLodging? lodging;

  ///  The receipt property
  Iterable<CapturePostRequestBodyPurchaseDetailsReceipt>? receipt;

  ///  The reference property
  String? reference;

  /// Instantiates a new [CapturePostRequestBodyPurchaseDetails] and sets the default values.
  CapturePostRequestBodyPurchaseDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyPurchaseDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBodyPurchaseDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fleet'] = (node) => fleet =
        node.getObjectValue<CapturePostRequestBodyPurchaseDetailsFleet>(
            CapturePostRequestBodyPurchaseDetailsFleet
                .createFromDiscriminatorValue);
    deserializerMap['flight'] = (node) => flight =
        node.getObjectValue<CapturePostRequestBodyPurchaseDetailsFlight>(
            CapturePostRequestBodyPurchaseDetailsFlight
                .createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            CapturePostRequestBodyPurchaseDetailsFuel>(
        CapturePostRequestBodyPurchaseDetailsFuel.createFromDiscriminatorValue);
    deserializerMap['lodging'] = (node) => lodging =
        node.getObjectValue<CapturePostRequestBodyPurchaseDetailsLodging>(
            CapturePostRequestBodyPurchaseDetailsLodging
                .createFromDiscriminatorValue);
    deserializerMap['receipt'] = (node) => receipt =
        node.getCollectionOfObjectValues<
                CapturePostRequestBodyPurchaseDetailsReceipt>(
            CapturePostRequestBodyPurchaseDetailsReceipt
                .createFromDiscriminatorValue);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CapturePostRequestBodyPurchaseDetailsFleet>(
        'fleet', fleet);
    writer.writeObjectValue<CapturePostRequestBodyPurchaseDetailsFlight>(
        'flight', flight);
    writer.writeObjectValue<CapturePostRequestBodyPurchaseDetailsFuel>(
        'fuel', fuel);
    writer.writeObjectValue<CapturePostRequestBodyPurchaseDetailsLodging>(
        'lodging', lodging);
    writer.writeCollectionOfObjectValues<
        CapturePostRequestBodyPurchaseDetailsReceipt>('receipt', receipt);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
