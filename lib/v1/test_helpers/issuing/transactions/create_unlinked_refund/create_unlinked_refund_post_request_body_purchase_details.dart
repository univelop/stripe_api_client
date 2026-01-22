// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet.dart';
import './create_unlinked_refund_post_request_body_purchase_details_flight.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fuel.dart';
import './create_unlinked_refund_post_request_body_purchase_details_lodging.dart';
import './create_unlinked_refund_post_request_body_purchase_details_receipt.dart';

/// auto generated
/// Additional purchase information that is optionally provided by the merchant.
class CreateUnlinkedRefundPostRequestBodyPurchaseDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fleet property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet? fleet;

  ///  The flight property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight? flight;

  ///  The fuel property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFuel? fuel;

  ///  The lodging property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging? lodging;

  ///  The receipt property
  Iterable<CreateUnlinkedRefundPostRequestBodyPurchaseDetailsReceipt>? receipt;

  ///  The reference property
  String? reference;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetails] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fleet'] = (node) => fleet = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet
            .createFromDiscriminatorValue);
    deserializerMap['flight'] = (node) => flight = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight
            .createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel = node
        .getObjectValue<CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFuel>(
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFuel
                .createFromDiscriminatorValue);
    deserializerMap['lodging'] = (node) => lodging = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging
            .createFromDiscriminatorValue);
    deserializerMap['receipt'] = (node) => receipt =
        node.getCollectionOfObjectValues<
                CreateUnlinkedRefundPostRequestBodyPurchaseDetailsReceipt>(
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsReceipt
                .createFromDiscriminatorValue);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet>(
        'fleet', fleet);
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFlight>(
        'flight', flight);
    writer.writeObjectValue<
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFuel>('fuel', fuel);
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging>(
        'lodging', lodging);
    writer.writeCollectionOfObjectValues<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsReceipt>(
        'receipt', receipt);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
