// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ChargeFraudDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Assessments from Stripe. If set, the value is `fraudulent`.
  String? stripeReport;

  ///  Assessments reported by you. If set, possible values of are `safe` and `fraudulent`.
  String? userReport;

  /// Instantiates a new [ChargeFraudDetails] and sets the default values.
  ChargeFraudDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargeFraudDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return ChargeFraudDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['stripe_report'] =
        (node) => stripeReport = node.getStringValue();
    deserializerMap['user_report'] =
        (node) => userReport = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('stripe_report', stripeReport);
    writer.writeStringValue('user_report', userReport);
    writer.writeAdditionalData(additionalData);
  }
}
