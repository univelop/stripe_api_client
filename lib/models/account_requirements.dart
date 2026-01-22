// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_requirements_alternative.dart';
import './account_requirements_disabled_reason.dart';
import './account_requirements_error.dart';

/// auto generated
class AccountRequirements implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again.
  Iterable<AccountRequirementsAlternative>? alternatives;

  ///  Date by which the fields in `currently_due` must be collected to keep the account enabled. These fields may disable the account sooner if the next threshold is reached before they are collected.
  int? currentDeadline;

  ///  Fields that need to be resolved to keep the account enabled. If not resolved by `current_deadline`, these fields will appear in `past_due` as well, and the account is disabled.
  Iterable<String>? currentlyDue;

  ///  If the account is disabled, this enum describes why. [Learn more about handling verification issues](https://docs.stripe.com/connect/handling-api-verification).
  AccountRequirementsDisabledReason? disabledReason;

  ///  Details about validation and verification failures for `due` requirements that must be resolved.
  Iterable<AccountRequirementsError>? errors;

  ///  Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
  Iterable<String>? eventuallyDue;

  ///  Fields that haven't been resolved by `current_deadline`. These fields need to be resolved to enable the account.
  Iterable<String>? pastDue;

  ///  Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
  Iterable<String>? pendingVerification;

  /// Instantiates a new [AccountRequirements] and sets the default values.
  AccountRequirements() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountRequirements createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountRequirements();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alternatives'] = (node) => alternatives =
        node.getCollectionOfObjectValues<AccountRequirementsAlternative>(
            AccountRequirementsAlternative.createFromDiscriminatorValue);
    deserializerMap['current_deadline'] =
        (node) => currentDeadline = node.getIntValue();
    deserializerMap['currently_due'] =
        (node) => currentlyDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['disabled_reason'] = (node) => disabledReason =
        node.getEnumValue<AccountRequirementsDisabledReason>((stringValue) =>
            AccountRequirementsDisabledReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['errors'] = (node) => errors =
        node.getCollectionOfObjectValues<AccountRequirementsError>(
            AccountRequirementsError.createFromDiscriminatorValue);
    deserializerMap['eventually_due'] =
        (node) => eventuallyDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['past_due'] =
        (node) => pastDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['pending_verification'] = (node) =>
        pendingVerification = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<AccountRequirementsAlternative>(
        'alternatives', alternatives);
    writer.writeIntValue('current_deadline', currentDeadline);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'currently_due', currentlyDue);
    writer.writeEnumValue<AccountRequirementsDisabledReason>(
        'disabled_reason', disabledReason, (e) => e?.value);
    writer.writeCollectionOfObjectValues<AccountRequirementsError>(
        'errors', errors);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'eventually_due', eventuallyDue);
    writer.writeCollectionOfPrimitiveValues<String?>('past_due', pastDue);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'pending_verification', pendingVerification);
    writer.writeAdditionalData(additionalData);
  }
}
