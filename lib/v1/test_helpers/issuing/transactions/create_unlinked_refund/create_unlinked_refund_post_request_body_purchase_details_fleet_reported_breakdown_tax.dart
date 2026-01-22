// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The local_amount_decimal property
  String? localAmountDecimal;

  ///  The national_amount_decimal property
  String? nationalAmountDecimal;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['local_amount_decimal'] =
        (node) => localAmountDecimal = node.getStringValue();
    deserializerMap['national_amount_decimal'] =
        (node) => nationalAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('local_amount_decimal', localAmountDecimal);
    writer.writeStringValue('national_amount_decimal', nationalAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
