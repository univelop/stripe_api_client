// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './charges_post_request_body_card.dart';
import './charges_post_request_body_destination.dart';
import './charges_post_request_body_radar_options.dart';
import './charges_post_request_body_shipping.dart';
import './charges_post_request_body_transfer_data.dart';

/// auto generated
class ChargesPostRequestBody implements Parsable {
  ///  Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  int? amount;

  ///  The application_fee property
  int? applicationFee;

  ///  A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://docs.stripe.com/connect/direct-charges#collect-fees).
  int? applicationFeeAmount;

  ///  Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://api.stripe.com#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://docs.stripe.com/charges/placing-a-hold) documentation.
  bool? capture;

  ///  A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
  ChargesPostRequestBodyCard? card;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of an existing customer that will be charged in this request.
  String? customer;

  ///  An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
  String? description;

  ///  The destination property
  ChargesPostRequestBodyDestination? destination;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The Stripe account ID for which these funds are intended. You can specify the business of record as the connected account using the `on_behalf_of` attribute on the charge. For details, see [Creating Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers#settlement-merchant).
  String? onBehalfOf;

  ///  Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
  ChargesPostRequestBodyRadarOptions? radarOptions;

  ///  The email address to which this charge's [receipt](https://docs.stripe.com/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://docs.stripe.com/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  String? receiptEmail;

  ///  Shipping information for the charge. Helps prevent fraud on charges for physical goods.
  ChargesPostRequestBodyShipping? shipping;

  ///  A payment source to be charged. This can be the ID of a [card](https://docs.stripe.com/api#cards) (i.e., credit or debit card), a [bank account](https://docs.stripe.com/api#bank_accounts), a [source](https://docs.stripe.com/api#sources), a [token](https://docs.stripe.com/api#tokens), or a [connected account](https://docs.stripe.com/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://docs.stripe.com/api#cards), [bank accounts](https://docs.stripe.com/api#bank_accounts), and attached [sources](https://docs.stripe.com/api#sources)---you must also pass the ID of the associated customer.
  String? source;

  ///  For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
  String? statementDescriptorSuffix;

  ///  An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
  ChargesPostRequestBodyTransferData? transferData;

  ///  A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options).
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ChargesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['application_fee'] =
        (node) => applicationFee = node.getIntValue();
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['capture'] = (node) => capture = node.getBoolValue();
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<ChargesPostRequestBodyCard>(
            ChargesPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<ChargesPostRequestBodyDestination>(
            ChargesPostRequestBodyDestination.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<ChargesPostRequestBodyRadarOptions>(
            ChargesPostRequestBodyRadarOptions.createFromDiscriminatorValue);
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<ChargesPostRequestBodyShipping>(
            ChargesPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<ChargesPostRequestBodyTransferData>(
            ChargesPostRequestBodyTransferData.createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('application_fee', applicationFee);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeBoolValue('capture', value: capture);
    writer.writeObjectValue<ChargesPostRequestBodyCard>('card', card);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<ChargesPostRequestBodyDestination>(
        'destination', destination);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<ChargesPostRequestBodyRadarOptions>(
        'radar_options', radarOptions);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeObjectValue<ChargesPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('source', source);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<ChargesPostRequestBodyTransferData>(
        'transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
