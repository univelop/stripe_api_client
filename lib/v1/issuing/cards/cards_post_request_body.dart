// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_metadata.dart';
import './cards_post_request_body_pin.dart';
import './cards_post_request_body_replacement_reason.dart';
import './cards_post_request_body_second_line.dart';
import './cards_post_request_body_shipping.dart';
import './cards_post_request_body_spending_controls.dart';
import './cards_post_request_body_status.dart';
import './cards_post_request_body_type.dart';

/// auto generated
class CardsPostRequestBody implements Parsable {
  ///  The [Cardholder](https://docs.stripe.com/api#issuing_cardholder_object) object with which the card will be associated.
  String? cardholder;

  ///  The currency for the card.
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The desired expiration month (1-12) for this card if [specifying a custom expiration date](/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
  int? expMonth;

  ///  The desired 4-digit expiration year for this card if [specifying a custom expiration date](/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
  int? expYear;

  ///  The new financial account ID the card will be associated with. This field allows a card to be reassigned to a different financial account.
  String? financialAccount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CardsPostRequestBodyMetadata? metadata;

  ///  The personalization design object belonging to this card.
  String? personalizationDesign;

  ///  The desired PIN for this card.
  CardsPostRequestBodyPin? pin;

  ///  The card this is meant to be a replacement for (if any).
  String? replacementFor;

  ///  If `replacement_for` is specified, this should indicate why that card is being replaced.
  CardsPostRequestBodyReplacementReason? replacementReason;

  ///  The second line to print on the card. Max length: 24 characters.
  CardsPostRequestBodySecondLine? secondLine;

  ///  The address where the card will be shipped.
  CardsPostRequestBodyShipping? shipping;

  ///  Rules that control spending for this card. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  CardsPostRequestBodySpendingControls? spendingControls;

  ///  Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
  CardsPostRequestBodyStatus? status;

  ///  The type of card to issue. Possible values are `physical` or `virtual`.
  CardsPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder'] =
        (node) => cardholder = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardsPostRequestBodyMetadata>(
            CardsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['personalization_design'] =
        (node) => personalizationDesign = node.getStringValue();
    deserializerMap['pin'] = (node) => pin =
        node.getObjectValue<CardsPostRequestBodyPin>(
            CardsPostRequestBodyPin.createFromDiscriminatorValue);
    deserializerMap['replacement_for'] =
        (node) => replacementFor = node.getStringValue();
    deserializerMap['replacement_reason'] = (node) => replacementReason =
        node.getEnumValue<CardsPostRequestBodyReplacementReason>(
            (stringValue) => CardsPostRequestBodyReplacementReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['second_line'] = (node) => secondLine =
        node.getObjectValue<CardsPostRequestBodySecondLine>(
            CardsPostRequestBodySecondLine.createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<CardsPostRequestBodyShipping>(
            CardsPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<CardsPostRequestBodySpendingControls>(
            CardsPostRequestBodySpendingControls.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<CardsPostRequestBodyStatus>((stringValue) =>
            CardsPostRequestBodyStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CardsPostRequestBodyType>((stringValue) =>
            CardsPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('cardholder', cardholder);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<CardsPostRequestBodyMetadata>('metadata', metadata);
    writer.writeStringValue('personalization_design', personalizationDesign);
    writer.writeObjectValue<CardsPostRequestBodyPin>('pin', pin);
    writer.writeStringValue('replacement_for', replacementFor);
    writer.writeEnumValue<CardsPostRequestBodyReplacementReason>(
        'replacement_reason', replacementReason, (e) => e?.value);
    writer.writeObjectValue<CardsPostRequestBodySecondLine>(
        'second_line', secondLine);
    writer.writeObjectValue<CardsPostRequestBodyShipping>('shipping', shipping);
    writer.writeObjectValue<CardsPostRequestBodySpendingControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<CardsPostRequestBodyStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<CardsPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
