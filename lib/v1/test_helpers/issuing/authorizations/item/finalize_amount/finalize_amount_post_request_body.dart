// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './finalize_amount_post_request_body_fleet.dart';
import './finalize_amount_post_request_body_fuel.dart';

/// auto generated
class FinalizeAmountPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? finalAmount;

  ///  Fleet-specific information for authorizations using Fleet cards.
  FinalizeAmountPostRequestBodyFleet? fleet;

  ///  Information about fuel that was purchased with this transaction.
  FinalizeAmountPostRequestBodyFuel? fuel;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinalizeAmountPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinalizeAmountPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['final_amount'] =
        (node) => finalAmount = node.getIntValue();
    deserializerMap['fleet'] = (node) => fleet =
        node.getObjectValue<FinalizeAmountPostRequestBodyFleet>(
            FinalizeAmountPostRequestBodyFleet.createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel =
        node.getObjectValue<FinalizeAmountPostRequestBodyFuel>(
            FinalizeAmountPostRequestBodyFuel.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('final_amount', finalAmount);
    writer.writeObjectValue<FinalizeAmountPostRequestBodyFleet>('fleet', fleet);
    writer.writeObjectValue<FinalizeAmountPostRequestBodyFuel>('fuel', fuel);
  }
}
