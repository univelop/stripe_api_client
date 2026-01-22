// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_attempt_record_customer_presence.dart';
import './payment_attempt_record_metadata.dart';
import './payment_attempt_record_object.dart';
import './payment_attempt_record_reported_by.dart';
import './payments_primitives_payment_records_resource_amount.dart';
import './payments_primitives_payment_records_resource_customer_details.dart';
import './payments_primitives_payment_records_resource_payment_method_details.dart';
import './payments_primitives_payment_records_resource_processor_details.dart';
import './payments_primitives_payment_records_resource_shipping_details.dart';

/// auto generated
/// A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.Each payment attempt tries to collect a fixed amount of money from a fixed customer and paymentmethod. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Recordcan have guaranteed funds.
class PaymentAttemptRecord implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amount;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountAuthorized;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountCanceled;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountFailed;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountGuaranteed;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountRefunded;

  ///  A representation of an amount of money, consisting of an amount and a currency.
  PaymentsPrimitivesPaymentRecordsResourceAmount? amountRequested;

  ///  ID of the Connect application that created the PaymentAttemptRecord.
  String? application;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Customer information for this payment.
  PaymentsPrimitivesPaymentRecordsResourceCustomerDetails? customerDetails;

  ///  Indicates whether the customer was present in your checkout flow during this payment.
  PaymentAttemptRecordCustomerPresence? customerPresence;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentAttemptRecordMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentAttemptRecordObject? object;

  ///  Information about the Payment Method debited for this payment.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?
      paymentMethodDetails;

  ///  ID of the Payment Record this Payment Attempt Record belongs to.
  String? paymentRecord;

  ///  Processor information associated with this payment.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetails? processorDetails;

  ///  Indicates who reported the payment.
  PaymentAttemptRecordReportedBy? reportedBy;

  ///  Shipping information for this payment.
  PaymentsPrimitivesPaymentRecordsResourceShippingDetails? shippingDetails;

  /// Instantiates a new [PaymentAttemptRecord] and sets the default values.
  PaymentAttemptRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentAttemptRecord createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentAttemptRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_authorized'] = (node) => amountAuthorized =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_canceled'] = (node) => amountCanceled =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_failed'] = (node) => amountFailed =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_guaranteed'] = (node) => amountGuaranteed =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_refunded'] = (node) => amountRefunded =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['amount_requested'] = (node) => amountRequested =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
            PaymentsPrimitivesPaymentRecordsResourceAmount
                .createFromDiscriminatorValue);
    deserializerMap['application'] =
        (node) => application = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceCustomerDetails>(
            PaymentsPrimitivesPaymentRecordsResourceCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['customer_presence'] = (node) => customerPresence =
        node.getEnumValue<PaymentAttemptRecordCustomerPresence>((stringValue) =>
            PaymentAttemptRecordCustomerPresence.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentAttemptRecordMetadata>(
            PaymentAttemptRecordMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentAttemptRecordObject>((stringValue) =>
            PaymentAttemptRecordObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails>(
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_record'] =
        (node) => paymentRecord = node.getStringValue();
    deserializerMap['processor_details'] = (node) => processorDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceProcessorDetails>(
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetails
                .createFromDiscriminatorValue);
    deserializerMap['reported_by'] = (node) => reportedBy =
        node.getEnumValue<PaymentAttemptRecordReportedBy>((stringValue) =>
            PaymentAttemptRecordReportedBy.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<
                PaymentsPrimitivesPaymentRecordsResourceShippingDetails>(
            PaymentsPrimitivesPaymentRecordsResourceShippingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount', amount);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_authorized', amountAuthorized);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_canceled', amountCanceled);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_failed', amountFailed);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_guaranteed', amountGuaranteed);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_refunded', amountRefunded);
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAmount>(
        'amount_requested', amountRequested);
    writer.writeStringValue('application', application);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeEnumValue<PaymentAttemptRecordCustomerPresence>(
        'customer_presence', customerPresence, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentAttemptRecordMetadata>('metadata', metadata);
    writer.writeEnumValue<PaymentAttemptRecordObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeStringValue('payment_record', paymentRecord);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetails>(
        'processor_details', processorDetails);
    writer.writeEnumValue<PaymentAttemptRecordReportedBy>(
        'reported_by', reportedBy, (e) => e?.value);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceShippingDetails>(
        'shipping_details', shippingDetails);
    writer.writeAdditionalData(additionalData);
  }
}
