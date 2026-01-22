// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './pay_post_request_body_mandate.dart';

/// auto generated
class PayPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  In cases where the source used to pay the invoice has insufficient funds, passing `forgive=true` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due. Passing `forgive=false` will fail the charge if the source hasn't been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference. Defaults to `false`.
  bool? forgive;

  ///  ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the payment_method param or the invoice's default_payment_method or default_source, if set.
  PayPostRequestBodyMandate? mandate;

  ///  Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `true` (off-session).
  bool? offSession;

  ///  Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made. Defaults to `false`.
  bool? paidOutOfBand;

  ///  A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
  String? paymentMethod;

  ///  A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
  String? source;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PayPostRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
    return PayPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['forgive'] = (node) => forgive = node.getBoolValue();
    deserializerMap['mandate'] = (node) => mandate =
        node.getObjectValue<PayPostRequestBodyMandate>(
            PayPostRequestBodyMandate.createFromDiscriminatorValue);
    deserializerMap['off_session'] = (node) => offSession = node.getBoolValue();
    deserializerMap['paid_out_of_band'] =
        (node) => paidOutOfBand = node.getBoolValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['source'] = (node) => source = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeBoolValue('forgive', value: forgive);
    writer.writeObjectValue<PayPostRequestBodyMandate>('mandate', mandate);
    writer.writeBoolValue('off_session', value: offSession);
    writer.writeBoolValue('paid_out_of_band', value: paidOutOfBand);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue('source', source);
  }
}
