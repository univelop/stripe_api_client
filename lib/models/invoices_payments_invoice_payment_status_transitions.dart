// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoicesPaymentsInvoicePaymentStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that the payment was canceled.
  int? canceledAt;

  ///  The time that the payment succeeded.
  int? paidAt;

  /// Instantiates a new [InvoicesPaymentsInvoicePaymentStatusTransitions] and sets the default values.
  InvoicesPaymentsInvoicePaymentStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPaymentsInvoicePaymentStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPaymentsInvoicePaymentStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['paid_at'] = (node) => paidAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeIntValue('paid_at', paidAt);
    writer.writeAdditionalData(additionalData);
  }
}
