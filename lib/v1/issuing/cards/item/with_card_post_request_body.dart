// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_card_post_request_body_cancellation_reason.dart';
import './with_card_post_request_body_pin.dart';
import './with_card_post_request_body_shipping.dart';
import './with_card_post_request_body_spending_controls.dart';
import './with_card_post_request_body_status.dart';

/// auto generated
class WithCardPostRequestBody implements Parsable {
  ///  Reason why the `status` of this card is `canceled`.
  WithCardPostRequestBodyCancellationReason? cancellationReason;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The personalization_design property
  String? personalizationDesign;

  ///  The desired new PIN for this card.
  WithCardPostRequestBodyPin? pin;

  ///  Updated shipping information for the card.
  WithCardPostRequestBodyShipping? shipping;

  ///  Rules that control spending for this card. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  WithCardPostRequestBodySpendingControls? spendingControls;

  ///  Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
  WithCardPostRequestBodyStatus? status;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getEnumValue<WithCardPostRequestBodyCancellationReason>(
            (stringValue) => WithCardPostRequestBodyCancellationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['personalization_design'] =
        (node) => personalizationDesign = node.getStringValue();
    deserializerMap['pin'] = (node) => pin =
        node.getObjectValue<WithCardPostRequestBodyPin>(
            WithCardPostRequestBodyPin.createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<WithCardPostRequestBodyShipping>(
            WithCardPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<WithCardPostRequestBodySpendingControls>(
            WithCardPostRequestBodySpendingControls
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<WithCardPostRequestBodyStatus>((stringValue) =>
            WithCardPostRequestBodyStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithCardPostRequestBodyCancellationReason>(
        'cancellation_reason', cancellationReason, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('personalization_design', personalizationDesign);
    writer.writeObjectValue<WithCardPostRequestBodyPin>('pin', pin);
    writer.writeObjectValue<WithCardPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeObjectValue<WithCardPostRequestBodySpendingControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<WithCardPostRequestBodyStatus>(
        'status', status, (e) => e?.value);
  }
}
