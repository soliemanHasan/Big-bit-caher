// This file contains a set of components for displaying different types of failures in a Flutter application.
// Each failure type has its own corresponding component that handles the visual representation of the failure.
import 'package:big_bite_casher/core/errors/failure.dart';
import 'package:big_bite_casher/core/services/service_locator.dart';
import 'package:big_bite_casher/modules/auth/presentation/routes/login_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The [FailureComponent] class is a generic component that takes a [Failure] object and dynamically selects the appropriate
/// sub-component based on the runtime type of the failure. It uses a switch statement to determine the failure type and
/// returns the corresponding component for that type.
///

// TODO: customize failure Components view

class FailureComponent extends StatelessWidget {
  const FailureComponent({super.key, required this.failure});

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    logger.d(
        "============== build failure ================= \n ${failure.runtimeType.toString()}");

    switch (failure) {
      case ForceLogoutFailure _:
        return ForceLogoutFailureComponent(
            failure: failure as ForceLogoutFailure);

      /// NoInternetFailureComponent handles the case when there is no internet connectivity.
      case NoInternetFailure _:
        return NoInternetFailureComponent(
            failure: failure as NoInternetFailure);

      /// ServerFailureComponent handles the case when there is a failure related to the server.
      case ServerFailure _:
        return ServerFailureComponent(failure: failure as ServerFailure);

      /// UnknownFailureComponent handles the case when an unknown failure occurs.
      case UnknownFailure _:
        return UnknownFailureComponent(failure: failure as UnknownFailure);

      /// ForceUpdateFailureComponent handles the case when the app requires an update.
      case ForceUpdateFailure _:
        return ForceUpdateFailureComponent(
            failure: failure as ForceUpdateFailure);

      /// AppUnderMaintenanceFailureComponent handles the case when the app is under maintenance.
      case AppUnderMaintenanceFailure _:
        return AppUnderMaintenanceFailureComponent(
            failure: failure as AppUnderMaintenanceFailure);

      /// SessionExpiredFailureComponent handles the case when the session has expired due to inactivity.
      case SessionExpiredFailure _:
        return SessionExpiredFailureComponent(
            failure: failure as SessionExpiredFailure);

      /// ParsingFailureComponent handles the case when there is a failure in parsing the response.
      case ParsingFailure _:
        return ParsingFailureComponent(failure: failure as ParsingFailure);

      /// Placeholder is a generic component used when the failure type is not recognized.
      default:
        return const Placeholder();
    }
  }
}

// Force logout Failure
class ForceLogoutFailureComponent extends StatefulWidget {
  const ForceLogoutFailureComponent({super.key, required this.failure});

  final ForceLogoutFailure failure;

  @override
  State<ForceLogoutFailureComponent> createState() =>
      _ForceLogoutFailureComponentState();
}

class _ForceLogoutFailureComponentState
    extends State<ForceLogoutFailureComponent> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go(LoginRoute.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [NoInternetFailureComponent] handles the visual representation of the NoInternetFailure type.
///
class NoInternetFailureComponent extends StatelessWidget {
  const NoInternetFailureComponent({super.key, required this.failure});
  final NoInternetFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [ServerFailureComponent] handles the visual representation of the ServerFailure type.
///
class ServerFailureComponent extends StatelessWidget {
  const ServerFailureComponent({super.key, required this.failure});
  final ServerFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.toString(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [UnknownFailureComponent] handles the visual representation of the UnknownFailure type.
///
class UnknownFailureComponent extends StatelessWidget {
  const UnknownFailureComponent({super.key, required this.failure});
  final UnknownFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [ForceUpdateFailureComponent] handles the visual representation of the ForceUpdateFailure type.
///
class ForceUpdateFailureComponent extends StatelessWidget {
  const ForceUpdateFailureComponent({super.key, required this.failure});
  final ForceUpdateFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [AppUnderMaintenanceFailureComponent] handles the visual representation of the AppUnderMaintenanceFailure type.
///
class AppUnderMaintenanceFailureComponent extends StatelessWidget {
  const AppUnderMaintenanceFailureComponent({super.key, required this.failure});
  final AppUnderMaintenanceFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [SessionExpiredFailureComponent] handles the visual representation of the SessionExpiredFailure type.
///
class SessionExpiredFailureComponent extends StatelessWidget {
  const SessionExpiredFailureComponent({super.key, required this.failure});
  final SessionExpiredFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

/// The [ParsingFailureComponent] handles the visual representation of the ParsingFailure type.
///
class ParsingFailureComponent extends StatelessWidget {
  const ParsingFailureComponent({super.key, required this.failure});
  final ParsingFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.toString(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
