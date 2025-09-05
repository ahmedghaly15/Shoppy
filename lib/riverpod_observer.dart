import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:logger/logger.dart';

/// Custom logger instance with pretty output.
final Logger _logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0, // Hide method calls in logs
    colors: true, // Enable colors
    printEmojis: true, // Enable emojis
  ),
);

/// Observes Riverpod providers and logs their lifecycle.
class RiverpodObserver implements ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    _logger.i(
      '✅ Provider Added: ${_getProviderName(context.provider)} → $value',
    );
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    _logger.w('❌ Provider Disposed: ${_getProviderName(context.provider)}');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    _logger.d(
      '🔄 Provider Updated: ${_getProviderName(context.provider)} → $newValue (was $previousValue)',
    );
  }

  @override
  void mutationError(
    ProviderObserverContext context,
    Mutation<Object?> mutation,
    Object error,
    StackTrace stackTrace,
  ) {
    _logger.e(
      '❗ Provider Mutation Error: ${_getProviderName(context.provider)} → $error',
      stackTrace: stackTrace,
    );
  }

  @override
  void mutationReset(
    ProviderObserverContext context,
    Mutation<Object?> mutation,
  ) {
    _logger.i(
      '🔄 Provider Mutation Reset: ${_getProviderName(context.provider)}',
    );
  }

  @override
  void mutationStart(
    ProviderObserverContext context,
    Mutation<Object?> mutation,
  ) {
    _logger.i(
      '🔄 Provider Mutation Start: ${_getProviderName(context.provider)}',
    );
  }

  @override
  void mutationSuccess(
    ProviderObserverContext context,
    Mutation<Object?> mutation,
    Object? result,
  ) {
    _logger.i(
      '🔄 Provider Mutation Success: ${_getProviderName(context.provider)} → $result',
    );
  }

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    _logger.e(
      '❗ Provider Error: ${_getProviderName(context.provider)} → $error',
      stackTrace: stackTrace,
    );
  }

  // /// Gets a human-readable provider name.
  String _getProviderName(ProviderBase<Object?> provider) {
    return provider.name ?? provider.runtimeType.toString();
  }
}
