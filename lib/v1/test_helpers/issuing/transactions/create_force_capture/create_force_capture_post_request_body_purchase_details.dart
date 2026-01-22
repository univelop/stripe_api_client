// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_force_capture_post_request_body_purchase_details_fleet.dart';
import './create_force_capture_post_request_body_purchase_details_flight.dart';
import './create_force_capture_post_request_body_purchase_details_fuel.dart';
import './create_force_capture_post_request_body_purchase_details_lodging.dart';
import './create_force_capture_post_request_body_purchase_details_receipt.dart';

/// auto generated
/// Additional purchase information that is optionally provided by the merchant.
class CreateForceCapturePostRequestBodyPurchaseDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fleet property
  CreateForceCapturePostRequestBodyPurchaseDetailsFleet? fleet;

  ///  The flight property
  CreateForceCapturePostRequestBodyPurchaseDetailsFlight? flight;

  ///  The fuel property
  CreateForceCapturePostRequestBodyPurchaseDetailsFuel? fuel;

  ///  The lodging property
  CreateForceCapturePostRequestBodyPurchaseDetailsLodging? lodging;

  ///  The receipt property
  Iterable<CreateForceCapturePostRequestBodyPurchaseDetailsReceipt>? receipt;

  ///  The reference property
  String? reference;

  /// Instantiates a new [CreateForceCapturePostRequestBodyPurchaseDetails] and sets the default values.
  CreateForceCapturePostRequestBodyPurchaseDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateForceCapturePostRequestBodyPurchaseDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateForceCapturePostRequestBodyPurchaseDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fleet'] = (node) => fleet = node
        .getObjectValue<CreateForceCapturePostRequestBodyPurchaseDetailsFleet>(
            CreateForceCapturePostRequestBodyPurchaseDetailsFleet
                .createFromDiscriminatorValue);
    deserializerMap['flight'] = (node) => flight = node
        .getObjectValue<CreateForceCapturePostRequestBodyPurchaseDetailsFlight>(
            CreateForceCapturePostRequestBodyPurchaseDetailsFlight
                .createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel = node
        .getObjectValue<CreateForceCapturePostRequestBodyPurchaseDetailsFuel>(
            CreateForceCapturePostRequestBodyPurchaseDetailsFuel
                .createFromDiscriminatorValue);
    deserializerMap['lodging'] = (node) => lodging = node.getObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsLodging>(
        CreateForceCapturePostRequestBodyPurchaseDetailsLodging
            .createFromDiscriminatorValue);
    deserializerMap['receipt'] = (node) => receipt =
        node.getCollectionOfObjectValues<
                CreateForceCapturePostRequestBodyPurchaseDetailsReceipt>(
            CreateForceCapturePostRequestBodyPurchaseDetailsReceipt
                .createFromDiscriminatorValue);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        CreateForceCapturePostRequestBodyPurchaseDetailsFleet>('fleet', fleet);
    writer.writeObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFlight>(
        'flight', flight);
    writer
        .writeObjectValue<CreateForceCapturePostRequestBodyPurchaseDetailsFuel>(
            'fuel', fuel);
    writer.writeObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsLodging>(
        'lodging', lodging);
    writer.writeCollectionOfObjectValues<
            CreateForceCapturePostRequestBodyPurchaseDetailsReceipt>(
        'receipt', receipt);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
