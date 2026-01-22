// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_charge_post_request_body_fraud_details_user_report.dart';

/// auto generated
/// A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
class WithChargePostRequestBodyFraudDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The user_report property
  WithChargePostRequestBodyFraudDetailsUserReport? userReport;

  /// Instantiates a new [WithChargePostRequestBodyFraudDetails] and sets the default values.
  WithChargePostRequestBodyFraudDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithChargePostRequestBodyFraudDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithChargePostRequestBodyFraudDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['user_report'] = (node) => userReport =
        node.getEnumValue<WithChargePostRequestBodyFraudDetailsUserReport>(
            (stringValue) => WithChargePostRequestBodyFraudDetailsUserReport
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithChargePostRequestBodyFraudDetailsUserReport>(
        'user_report', userReport, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
