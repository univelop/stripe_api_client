// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_notes_post_request_body_email_type.dart';
import './credit_notes_post_request_body_lines.dart';
import './credit_notes_post_request_body_metadata.dart';
import './credit_notes_post_request_body_reason.dart';
import './credit_notes_post_request_body_refunds.dart';
import './credit_notes_post_request_body_shipping_cost.dart';

/// auto generated
class CreditNotesPostRequestBody implements Parsable {
  ///  The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  int? amount;

  ///  The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
  int? creditAmount;

  ///  The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
  int? effectiveAt;

  ///  Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
  CreditNotesPostRequestBodyEmailType? emailType;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  ID of the invoice.
  String? invoice;

  ///  Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  Iterable<CreditNotesPostRequestBodyLines>? lines;

  ///  The credit note's memo appears on the credit note PDF.
  String? memo;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CreditNotesPostRequestBodyMetadata? metadata;

  ///  The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
  int? outOfBandAmount;

  ///  Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
  CreditNotesPostRequestBodyReason? reason;

  ///  The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
  int? refundAmount;

  ///  Refunds to link to this credit note.
  Iterable<CreditNotesPostRequestBodyRefunds>? refunds;

  ///  When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  CreditNotesPostRequestBodyShippingCost? shippingCost;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['credit_amount'] =
        (node) => creditAmount = node.getIntValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['email_type'] = (node) => emailType =
        node.getEnumValue<CreditNotesPostRequestBodyEmailType>((stringValue) =>
            CreditNotesPostRequestBodyEmailType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    deserializerMap['lines'] = (node) => lines =
        node.getCollectionOfObjectValues<CreditNotesPostRequestBodyLines>(
            CreditNotesPostRequestBodyLines.createFromDiscriminatorValue);
    deserializerMap['memo'] = (node) => memo = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditNotesPostRequestBodyMetadata>(
            CreditNotesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['out_of_band_amount'] =
        (node) => outOfBandAmount = node.getIntValue();
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<CreditNotesPostRequestBodyReason>((stringValue) =>
            CreditNotesPostRequestBodyReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['refund_amount'] =
        (node) => refundAmount = node.getIntValue();
    deserializerMap['refunds'] = (node) => refunds =
        node.getCollectionOfObjectValues<CreditNotesPostRequestBodyRefunds>(
            CreditNotesPostRequestBodyRefunds.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<CreditNotesPostRequestBodyShippingCost>(
            CreditNotesPostRequestBodyShippingCost
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('credit_amount', creditAmount);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeEnumValue<CreditNotesPostRequestBodyEmailType>(
        'email_type', emailType, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('invoice', invoice);
    writer.writeCollectionOfObjectValues<CreditNotesPostRequestBodyLines>(
        'lines', lines);
    writer.writeStringValue('memo', memo);
    writer.writeObjectValue<CreditNotesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeIntValue('out_of_band_amount', outOfBandAmount);
    writer.writeEnumValue<CreditNotesPostRequestBodyReason>(
        'reason', reason, (e) => e?.value);
    writer.writeIntValue('refund_amount', refundAmount);
    writer.writeCollectionOfObjectValues<CreditNotesPostRequestBodyRefunds>(
        'refunds', refunds);
    writer.writeObjectValue<CreditNotesPostRequestBodyShippingCost>(
        'shipping_cost', shippingCost);
  }
}
