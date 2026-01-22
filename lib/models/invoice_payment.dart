// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_invoice.dart';
import './invoice_payment_object.dart';
import './invoices_payments_invoice_payment_associated_payment.dart';
import './invoices_payments_invoice_payment_status_transitions.dart';

/// auto generated
/// Invoice Payments represent payments made against invoices. Invoice Payments canbe accessed in two ways:1. By expanding the `payments` field on the [Invoice](https://api.stripe.com#invoice) resource.2. By using the Invoice Payment retrieve and list endpoints.Invoice Payments include the mapping between payment objects, such as Payment Intent, and Invoices.This resource and its endpoints allows you to easily track if a payment is associated with a specific invoice andmonitor the allocation details of the payments.
class InvoicePayment implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount that was actually paid for this invoice, in cents (or local equivalent). This field is null until the payment is `paid`. This amount can be less than the `amount_requested` if the PaymentIntent’s `amount_received` is not sufficient to pay all of the invoices that it is attached to.
  int? amountPaid;

  ///  Amount intended to be paid toward this invoice, in cents (or local equivalent)
  int? amountRequested;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Unique identifier for the object.
  String? id;

  ///  The invoice that was paid.
  InvoicePaymentInvoice? invoice;

  ///  Stripe automatically creates a default InvoicePayment when the invoice is finalized, and keeps it synchronized with the invoice’s `amount_remaining`. The PaymentIntent associated with the default payment can’t be edited or canceled directly.
  bool? isDefault;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  InvoicePaymentObject? object;

  ///  The payment property
  InvoicesPaymentsInvoicePaymentAssociatedPayment? payment;

  ///  The status of the payment, one of `open`, `paid`, or `canceled`.
  String? status;

  ///  The status_transitions property
  InvoicesPaymentsInvoicePaymentStatusTransitions? statusTransitions;

  /// Instantiates a new [InvoicePayment] and sets the default values.
  InvoicePayment() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePayment createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePayment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_paid'] = (node) => amountPaid = node.getIntValue();
    deserializerMap['amount_requested'] =
        (node) => amountRequested = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<InvoicePaymentInvoice>(
            InvoicePaymentInvoice.createFromDiscriminatorValue);
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InvoicePaymentObject>((stringValue) =>
            InvoicePaymentObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment'] = (node) => payment =
        node.getObjectValue<InvoicesPaymentsInvoicePaymentAssociatedPayment>(
            InvoicesPaymentsInvoicePaymentAssociatedPayment
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<InvoicesPaymentsInvoicePaymentStatusTransitions>(
            InvoicesPaymentsInvoicePaymentStatusTransitions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_paid', amountPaid);
    writer.writeIntValue('amount_requested', amountRequested);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<InvoicePaymentInvoice>('invoice', invoice);
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<InvoicePaymentObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<InvoicesPaymentsInvoicePaymentAssociatedPayment>(
        'payment', payment);
    writer.writeStringValue('status', status);
    writer.writeObjectValue<InvoicesPaymentsInvoicePaymentStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeAdditionalData(additionalData);
  }
}
