// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/deleted_payment_source.dart';
import '../../../../../models/payment_source.dart';

/// auto generated
/// Composed type wrapper for classes [DeletedPaymentSource], [PaymentSource]
class BankAccountsDeleteResponse implements Parsable {
  ///  Composed type representation for type [DeletedPaymentSource]
  DeletedPaymentSource? deletedPaymentSource;

  ///  Composed type representation for type [PaymentSource]
  PaymentSource? paymentSource;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankAccountsDeleteResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = BankAccountsDeleteResponse();
    result.deletedPaymentSource = DeletedPaymentSource();
    result.paymentSource = PaymentSource();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (deletedPaymentSource != null) {
      deletedPaymentSource!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (paymentSource != null) {
      paymentSource!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DeletedPaymentSource>(
        null, deletedPaymentSource, [paymentSource]);
  }
}
