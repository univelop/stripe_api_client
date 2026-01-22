// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_controller_fees.dart';
import './accounts_post_request_body_controller_losses.dart';
import './accounts_post_request_body_controller_requirement_collection.dart';
import './accounts_post_request_body_controller_stripe_dashboard.dart';

/// auto generated
/// A hash of configuration describing the account controller's attributes.
class AccountsPostRequestBodyController
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fees property
  AccountsPostRequestBodyControllerFees? fees;

  ///  The losses property
  AccountsPostRequestBodyControllerLosses? losses;

  ///  The requirement_collection property
  AccountsPostRequestBodyControllerRequirementCollection? requirementCollection;

  ///  The stripe_dashboard property
  AccountsPostRequestBodyControllerStripeDashboard? stripeDashboard;

  /// Instantiates a new [AccountsPostRequestBodyController] and sets the default values.
  AccountsPostRequestBodyController() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyController createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyController();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fees'] = (node) => fees =
        node.getObjectValue<AccountsPostRequestBodyControllerFees>(
            AccountsPostRequestBodyControllerFees.createFromDiscriminatorValue);
    deserializerMap['losses'] = (node) => losses = node.getObjectValue<
            AccountsPostRequestBodyControllerLosses>(
        AccountsPostRequestBodyControllerLosses.createFromDiscriminatorValue);
    deserializerMap['requirement_collection'] = (node) =>
        requirementCollection = node.getEnumValue<
                AccountsPostRequestBodyControllerRequirementCollection>(
            (stringValue) =>
                AccountsPostRequestBodyControllerRequirementCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['stripe_dashboard'] = (node) => stripeDashboard =
        node.getObjectValue<AccountsPostRequestBodyControllerStripeDashboard>(
            AccountsPostRequestBodyControllerStripeDashboard
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountsPostRequestBodyControllerFees>(
        'fees', fees);
    writer.writeObjectValue<AccountsPostRequestBodyControllerLosses>(
        'losses', losses);
    writer
        .writeEnumValue<AccountsPostRequestBodyControllerRequirementCollection>(
            'requirement_collection', requirementCollection, (e) => e?.value);
    writer.writeObjectValue<AccountsPostRequestBodyControllerStripeDashboard>(
        'stripe_dashboard', stripeDashboard);
    writer.writeAdditionalData(additionalData);
  }
}
