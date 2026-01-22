// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_email_type_query_parameter_type.dart';
import './get_reason_query_parameter_type.dart';

/// auto generated
/// <p>Get a preview of a credit note without creating it.</p>
class PreviewRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  int? amount;

  ///  The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
  /// @QueryParameter('credit_amount')
  int? creditAmount;

  ///  The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
  /// @QueryParameter('effective_at')
  int? effectiveAt;

  ///  Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
  /// @QueryParameter('email_type')
  GetEmail_typeQueryParameterType? emailType;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  ID of the invoice.
  String? invoice;

  ///  Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  List<String>? lines;

  ///  The credit note's memo appears on the credit note PDF.
  String? memo;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
  /// @QueryParameter('out_of_band_amount')
  int? outOfBandAmount;

  ///  Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
  GetReasonQueryParameterType? reason;

  ///  The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
  /// @QueryParameter('refund_amount')
  int? refundAmount;

  ///  Refunds to link to this credit note.
  List<String>? refunds;

  ///  When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
  /// @QueryParameter('shipping_cost')
  String? shippingCost;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'credit_amount': creditAmount,
      'effective_at': effectiveAt,
      'email_type': emailType,
      'expand': expand,
      'invoice': invoice,
      'lines': lines,
      'memo': memo,
      'metadata': metadata,
      'out_of_band_amount': outOfBandAmount,
      'reason': reason,
      'refund_amount': refundAmount,
      'refunds': refunds,
      'shipping_cost': shippingCost,
    };
  }
}
