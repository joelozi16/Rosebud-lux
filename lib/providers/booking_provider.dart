import 'package:flutter/material.dart';
import '../models/booking.dart';

class BookingProvider extends ChangeNotifier {
  List<Booking> _bookings = [];
  bool _isLoading = false;
  String _error = '';

  List<Booking> get bookings => _bookings;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> createBooking(Booking booking) async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      // TODO: Implement API call to create booking
      _bookings.add(booking);
    } catch (e) {
      _error = 'Failed to create booking: $e';
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchUserBookings(String userId) async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      // TODO: Implement API call to fetch user bookings
    } catch (e) {
      _error = 'Failed to fetch bookings: $e';
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> cancelBooking(String bookingId) async {
    try {
      _bookings.removeWhere((booking) => booking.id == bookingId);
      notifyListeners();
    } catch (e) {
      _error = 'Failed to cancel booking: $e';
    }
  }
}
