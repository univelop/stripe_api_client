// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './source_allow_redisplay.dart';
import './source_code_verification_flow.dart';
import './source_metadata.dart';
import './source_object.dart';
import './source_order.dart';
import './source_owner.dart';
import './source_receiver_flow.dart';
import './source_redirect_flow.dart';
import './source_type.dart';
import './source_type_ach_credit_transfer.dart';
import './source_type_ach_debit.dart';
import './source_type_acss_debit.dart';
import './source_type_alipay.dart';
import './source_type_au_becs_debit.dart';
import './source_type_bancontact.dart';
import './source_type_card.dart';
import './source_type_card_present.dart';
import './source_type_eps.dart';
import './source_type_giropay.dart';
import './source_type_ideal.dart';
import './source_type_klarna.dart';
import './source_type_multibanco.dart';
import './source_type_p24.dart';
import './source_type_sepa_debit.dart';
import './source_type_sofort.dart';
import './source_type_three_d_secure.dart';
import './source_type_wechat.dart';

/// auto generated
/// `Source` objects allow you to accept a variety of payment methods. Theyrepresent a customer's payment instrument, and can be used with the Stripe APIjust like a `Card` object: once chargeable, they can be charged, or can beattached to customers.Stripe doesn't recommend using the deprecated [Sources API](https://docs.stripe.com/api/sources).We recommend that you adopt the [PaymentMethods API](https://docs.stripe.com/api/payment_methods).This newer API provides access to our latest features and payment method types.Related guides: [Sources API](https://docs.stripe.com/sources) and [Sources & Customers](https://docs.stripe.com/sources/customers).
class Source implements AdditionalDataHolder, Parsable {
  ///  The ach_credit_transfer property
  SourceTypeAchCreditTransfer? achCreditTransfer;

  ///  The ach_debit property
  SourceTypeAchDebit? achDebit;

  ///  The acss_debit property
  SourceTypeAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The alipay property
  SourceTypeAlipay? alipay;

  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
  SourceAllowRedisplay? allowRedisplay;

  ///  A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
  int? amount;

  ///  The au_becs_debit property
  SourceTypeAuBecsDebit? auBecsDebit;

  ///  The bancontact property
  SourceTypeBancontact? bancontact;

  ///  The card property
  SourceTypeCard? card;

  ///  The card_present property
  SourceTypeCardPresent? cardPresent;

  ///  The client secret of the source. Used for client-side retrieval using a publishable key.
  String? clientSecret;

  ///  The code_verification property
  SourceCodeVerificationFlow? codeVerification;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
  String? currency;

  ///  The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
  String? customer;

  ///  The eps property
  SourceTypeEps? eps;

  ///  The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
  String? flow;

  ///  The giropay property
  SourceTypeGiropay? giropay;

  ///  Unique identifier for the object.
  String? id;

  ///  The ideal property
  SourceTypeIdeal? ideal;

  ///  The klarna property
  SourceTypeKlarna? klarna;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SourceMetadata? metadata;

  ///  The multibanco property
  SourceTypeMultibanco? multibanco;

  ///  String representing the object's type. Objects of the same type share the same value.
  SourceObject? object;

  ///  Information about the owner of the payment instrument that may be used or required by particular source types.
  SourceOwner? owner;

  ///  The p24 property
  SourceTypeP24? p24;

  ///  The receiver property
  SourceReceiverFlow? receiver;

  ///  The redirect property
  SourceRedirectFlow? redirect;

  ///  The sepa_debit property
  SourceTypeSepaDebit? sepaDebit;

  ///  The sofort property
  SourceTypeSofort? sofort;

  ///  The source_order property
  SourceOrder? sourceOrder;

  ///  Extra information about a source. This will appear on your customer's statement every time you charge the source.
  String? statementDescriptor;

  ///  The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
  String? status;

  ///  The three_d_secure property
  SourceTypeThreeDSecure? threeDSecure;

  ///  The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://docs.stripe.com/sources) used.
  SourceType? type_;

  ///  Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
  String? usage;

  ///  The wechat property
  SourceTypeWechat? wechat;

  /// Instantiates a new [Source] and sets the default values.
  Source() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Source createFromDiscriminatorValue(ParseNode parseNode) {
    return Source();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach_credit_transfer'] = (node) => achCreditTransfer =
        node.getObjectValue<SourceTypeAchCreditTransfer>(
            SourceTypeAchCreditTransfer.createFromDiscriminatorValue);
    deserializerMap['ach_debit'] = (node) => achDebit =
        node.getObjectValue<SourceTypeAchDebit>(
            SourceTypeAchDebit.createFromDiscriminatorValue);
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<SourceTypeAcssDebit>(
            SourceTypeAcssDebit.createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<SourceTypeAlipay>(
            SourceTypeAlipay.createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<SourceAllowRedisplay>((stringValue) =>
            SourceAllowRedisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<SourceTypeAuBecsDebit>(
            SourceTypeAuBecsDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<SourceTypeBancontact>(
            SourceTypeBancontact.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SourceTypeCard>(
            SourceTypeCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<SourceTypeCardPresent>(
            SourceTypeCardPresent.createFromDiscriminatorValue);
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['code_verification'] = (node) => codeVerification =
        node.getObjectValue<SourceCodeVerificationFlow>(
            SourceCodeVerificationFlow.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['eps'] = (node) => eps = node.getObjectValue<SourceTypeEps>(
        SourceTypeEps.createFromDiscriminatorValue);
    deserializerMap['flow'] = (node) => flow = node.getStringValue();
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<SourceTypeGiropay>(
            SourceTypeGiropay.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<SourceTypeIdeal>(
            SourceTypeIdeal.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<SourceTypeKlarna>(
            SourceTypeKlarna.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SourceMetadata>(
            SourceMetadata.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<SourceTypeMultibanco>(
            SourceTypeMultibanco.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SourceObject>((stringValue) => SourceObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['owner'] = (node) => owner = node
        .getObjectValue<SourceOwner>(SourceOwner.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 = node.getObjectValue<SourceTypeP24>(
        SourceTypeP24.createFromDiscriminatorValue);
    deserializerMap['receiver'] = (node) => receiver =
        node.getObjectValue<SourceReceiverFlow>(
            SourceReceiverFlow.createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<SourceRedirectFlow>(
            SourceRedirectFlow.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<SourceTypeSepaDebit>(
            SourceTypeSepaDebit.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<SourceTypeSofort>(
            SourceTypeSofort.createFromDiscriminatorValue);
    deserializerMap['source_order'] = (node) => sourceOrder = node
        .getObjectValue<SourceOrder>(SourceOrder.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<SourceTypeThreeDSecure>(
            SourceTypeThreeDSecure.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<SourceType>(
        (stringValue) => SourceType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['usage'] = (node) => usage = node.getStringValue();
    deserializerMap['wechat'] = (node) => wechat =
        node.getObjectValue<SourceTypeWechat>(
            SourceTypeWechat.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SourceTypeAchCreditTransfer>(
        'ach_credit_transfer', achCreditTransfer);
    writer.writeObjectValue<SourceTypeAchDebit>('ach_debit', achDebit);
    writer.writeObjectValue<SourceTypeAcssDebit>('acss_debit', acssDebit);
    writer.writeObjectValue<SourceTypeAlipay>('alipay', alipay);
    writer.writeEnumValue<SourceAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<SourceTypeAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<SourceTypeBancontact>('bancontact', bancontact);
    writer.writeObjectValue<SourceTypeCard>('card', card);
    writer.writeObjectValue<SourceTypeCardPresent>('card_present', cardPresent);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<SourceCodeVerificationFlow>(
        'code_verification', codeVerification);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<SourceTypeEps>('eps', eps);
    writer.writeStringValue('flow', flow);
    writer.writeObjectValue<SourceTypeGiropay>('giropay', giropay);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<SourceTypeIdeal>('ideal', ideal);
    writer.writeObjectValue<SourceTypeKlarna>('klarna', klarna);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<SourceMetadata>('metadata', metadata);
    writer.writeObjectValue<SourceTypeMultibanco>('multibanco', multibanco);
    writer.writeEnumValue<SourceObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<SourceOwner>('owner', owner);
    writer.writeObjectValue<SourceTypeP24>('p24', p24);
    writer.writeObjectValue<SourceReceiverFlow>('receiver', receiver);
    writer.writeObjectValue<SourceRedirectFlow>('redirect', redirect);
    writer.writeObjectValue<SourceTypeSepaDebit>('sepa_debit', sepaDebit);
    writer.writeObjectValue<SourceTypeSofort>('sofort', sofort);
    writer.writeObjectValue<SourceOrder>('source_order', sourceOrder);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('status', status);
    writer.writeObjectValue<SourceTypeThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeEnumValue<SourceType>('type', type_, (e) => e?.value);
    writer.writeStringValue('usage', usage);
    writer.writeObjectValue<SourceTypeWechat>('wechat', wechat);
    writer.writeAdditionalData(additionalData);
  }
}
