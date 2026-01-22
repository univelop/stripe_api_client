// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_requirements_error_code.dart';

/// auto generated
class AccountRequirementsError implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The code for the type of error.
  AccountRequirementsErrorCode? code;

  ///  An informative message that indicates the error type and provides additional details about the error.
  String? reason;

  ///  The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
  String? requirement;

  /// Instantiates a new [AccountRequirementsError] and sets the default values.
  AccountRequirementsError() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountRequirementsError createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountRequirementsError();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<AccountRequirementsErrorCode>((stringValue) =>
            AccountRequirementsErrorCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    deserializerMap['requirement'] =
        (node) => requirement = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountRequirementsErrorCode>(
        'code', code, (e) => e?.value);
    writer.writeStringValue('reason', reason);
    writer.writeStringValue('requirement', requirement);
    writer.writeAdditionalData(additionalData);
  }
}
