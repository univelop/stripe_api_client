// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_card_authorization_controls.dart';
import '../issuing_card_fraud_warning.dart';
import '../issuing_card_shipping.dart';
import '../issuing_card_wallets.dart';
import './card_cancellation_reason.dart';
import './card_metadata.dart';
import './card_object.dart';
import './card_personalization_design.dart';
import './card_replaced_by.dart';
import './card_replacement_for.dart';
import './card_replacement_reason.dart';
import './card_status.dart';
import './card_type.dart';
import './cardholder.dart';

/// auto generated
/// You can [create physical or virtual cards](https://docs.stripe.com/issuing) that are issued to cardholders.
class Card implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The brand of the card.
  String? brand;

  ///  The reason why the card was canceled.
  CardCancellationReason? cancellationReason;

  ///  An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://docs.stripe.com/issuing) cards.Related guide: [How to create a cardholder](https://docs.stripe.com/issuing/cards/virtual/issue-cards#create-cardholder)
  Cardholder? cardholder;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
  String? currency;

  ///  The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://docs.stripe.com/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://docs.stripe.com/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
  String? cvc;

  ///  The expiration month of the card.
  int? expMonth;

  ///  The expiration year of the card.
  int? expYear;

  ///  The financial account this card is attached to.
  String? financialAccount;

  ///  Unique identifier for the object.
  String? id;

  ///  The last 4 digits of the card number.
  String? last4;

  ///  Stripe’s assessment of whether this card’s details have been compromised. If this property isn't null, cancel and reissue the card to prevent fraudulent activity risk.
  IssuingCardFraudWarning? latestFraudWarning;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CardMetadata? metadata;

  ///  The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://docs.stripe.com/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://docs.stripe.com/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
  String? number;

  ///  String representing the object's type. Objects of the same type share the same value.
  CardObject? object;

  ///  The personalization design object belonging to this card.
  CardPersonalizationDesign? personalizationDesign;

  ///  The latest card that replaces this card, if any.
  CardReplacedBy? replacedBy;

  ///  The card this card replaces, if any.
  CardReplacementFor? replacementFor;

  ///  The reason why the previous card needed to be replaced.
  CardReplacementReason? replacementReason;

  ///  Text separate from cardholder name, printed on the card.
  String? secondLine;

  ///  Where and how the card will be shipped.
  IssuingCardShipping? shipping;

  ///  The spending_controls property
  IssuingCardAuthorizationControls? spendingControls;

  ///  Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
  CardStatus? status;

  ///  The type of the card.
  CardType? type_;

  ///  Information relating to digital wallets (like Apple Pay and Google Pay).
  IssuingCardWallets? wallets;

  /// Instantiates a new [Card] and sets the default values.
  Card() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Card createFromDiscriminatorValue(ParseNode parseNode) {
    return Card();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getEnumValue<CardCancellationReason>((stringValue) =>
            CardCancellationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cardholder'] = (node) => cardholder = node
        .getObjectValue<Cardholder>(Cardholder.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['cvc'] = (node) => cvc = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['latest_fraud_warning'] = (node) => latestFraudWarning =
        node.getObjectValue<IssuingCardFraudWarning>(
            IssuingCardFraudWarning.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardMetadata>(
            CardMetadata.createFromDiscriminatorValue);
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CardObject>((stringValue) => CardObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['personalization_design'] = (node) =>
        personalizationDesign = node.getObjectValue<CardPersonalizationDesign>(
            CardPersonalizationDesign.createFromDiscriminatorValue);
    deserializerMap['replaced_by'] = (node) => replacedBy =
        node.getObjectValue<CardReplacedBy>(
            CardReplacedBy.createFromDiscriminatorValue);
    deserializerMap['replacement_for'] = (node) => replacementFor =
        node.getObjectValue<CardReplacementFor>(
            CardReplacementFor.createFromDiscriminatorValue);
    deserializerMap['replacement_reason'] = (node) => replacementReason =
        node.getEnumValue<CardReplacementReason>((stringValue) =>
            CardReplacementReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['second_line'] =
        (node) => secondLine = node.getStringValue();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<IssuingCardShipping>(
            IssuingCardShipping.createFromDiscriminatorValue);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<IssuingCardAuthorizationControls>(
            IssuingCardAuthorizationControls.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<CardStatus>((stringValue) => CardStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<CardType>(
        (stringValue) => CardType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['wallets'] = (node) => wallets =
        node.getObjectValue<IssuingCardWallets>(
            IssuingCardWallets.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeEnumValue<CardCancellationReason>(
        'cancellation_reason', cancellationReason, (e) => e?.value);
    writer.writeObjectValue<Cardholder>('cardholder', cardholder);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('cvc', cvc);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue('id', id);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<IssuingCardFraudWarning>(
        'latest_fraud_warning', latestFraudWarning);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CardMetadata>('metadata', metadata);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<CardObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<CardPersonalizationDesign>(
        'personalization_design', personalizationDesign);
    writer.writeObjectValue<CardReplacedBy>('replaced_by', replacedBy);
    writer.writeObjectValue<CardReplacementFor>(
        'replacement_for', replacementFor);
    writer.writeEnumValue<CardReplacementReason>(
        'replacement_reason', replacementReason, (e) => e?.value);
    writer.writeStringValue('second_line', secondLine);
    writer.writeObjectValue<IssuingCardShipping>('shipping', shipping);
    writer.writeObjectValue<IssuingCardAuthorizationControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<CardStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<CardType>('type', type_, (e) => e?.value);
    writer.writeObjectValue<IssuingCardWallets>('wallets', wallets);
    writer.writeAdditionalData(additionalData);
  }
}
