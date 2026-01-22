// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_payments_invoice_payment_associated_payment_charge.dart';
import './invoices_payments_invoice_payment_associated_payment_payment_intent.dart';
import './invoices_payments_invoice_payment_associated_payment_payment_record.dart';
import './invoices_payments_invoice_payment_associated_payment_type.dart';

/// auto generated
class InvoicesPaymentsInvoicePaymentAssociatedPayment
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the successful charge for this payment when `type` is `charge`.Note: charge is only surfaced if the charge object is not associated with a payment intent. If the charge object does have a payment intent, the Invoice Payment surfaces the payment intent instead.
  InvoicesPaymentsInvoicePaymentAssociatedPaymentCharge? charge;

  ///  ID of the PaymentIntent associated with this payment when `type` is `payment_intent`. Note: This property is only populated for invoices finalized on or after March 15th, 2019.
  InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentIntent? paymentIntent;

  ///  ID of the PaymentRecord associated with this payment when `type` is `payment_record`.
  InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord? paymentRecord;

  ///  Type of payment object associated with this invoice payment.
  InvoicesPaymentsInvoicePaymentAssociatedPaymentType? type_;

  /// Instantiates a new [InvoicesPaymentsInvoicePaymentAssociatedPayment] and sets the default values.
  InvoicesPaymentsInvoicePaymentAssociatedPayment() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPaymentsInvoicePaymentAssociatedPayment
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPaymentsInvoicePaymentAssociatedPayment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge'] = (node) => charge = node
        .getObjectValue<InvoicesPaymentsInvoicePaymentAssociatedPaymentCharge>(
            InvoicesPaymentsInvoicePaymentAssociatedPaymentCharge
                .createFromDiscriminatorValue);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<
                InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentIntent>(
            InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentIntent
                .createFromDiscriminatorValue);
    deserializerMap['payment_record'] = (node) => paymentRecord =
        node.getObjectValue<
                InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord>(
            InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<InvoicesPaymentsInvoicePaymentAssociatedPaymentType>(
            (stringValue) => InvoicesPaymentsInvoicePaymentAssociatedPaymentType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicesPaymentsInvoicePaymentAssociatedPaymentCharge>(
        'charge', charge);
    writer.writeObjectValue<
            InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeObjectValue<
            InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord>(
        'payment_record', paymentRecord);
    writer.writeEnumValue<InvoicesPaymentsInvoicePaymentAssociatedPaymentType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
