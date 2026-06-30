import 'package:flutter/material.dart';
import '../models/apartment.dart';

class ApartmentProvider extends ChangeNotifier {
  List<Apartment> _apartments = [];
  List<Apartment> _filteredApartments = [];
  bool _isLoading = false;
  String _error = '';

  List<Apartment> get apartments => _apartments;
  List<Apartment> get filteredApartments => _filteredApartments;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> fetchApartments() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      // TODO: Implement API call
      // For now, using mock data
      _apartments = [
        Apartment(
          id: '1',
          title: 'Luxury Downtown Apartment',
          description: 'Beautiful apartment in the heart of downtown',
          location: 'Downtown District',
          price: 150.0,
          bedrooms: 2,
          bathrooms: 2,
          imageUrls: ['https://via.placeholder.com/400x300?text=Apartment+1'],
          rating: 4.8,
          reviews: 125,
          amenities: ['WiFi', 'AC', 'Kitchen', 'Washer/Dryer'],
          isAvailable: true,
        ),
        Apartment(
          id: '2',
          title: 'Cozy Studio Apartment',
          description: 'Perfect for solo travelers and couples',
          location: 'Midtown Area',
          price: 80.0,
          bedrooms: 1,
          bathrooms: 1,
          imageUrls: ['https://via.placeholder.com/400x300?text=Apartment+2'],
          rating: 4.5,
          reviews: 87,
          amenities: ['WiFi', 'AC', 'Kitchen'],
          isAvailable: true,
        ),
        Apartment(
          id: '3',
          title: 'Family Villa',
          description: 'Spacious villa for families with pool access',
          location: 'Residential Area',
          price: 250.0,
          bedrooms: 4,
          bathrooms: 3,
          imageUrls: ['https://via.placeholder.com/400x300?text=Apartment+3'],
          rating: 4.9,
          reviews: 200,
          amenities: ['WiFi', 'Pool', 'Kitchen', 'Gym', 'Parking'],
          isAvailable: true,
        ),
      ];
      _filteredApartments = _apartments;
    } catch (e) {
      _error = 'Failed to fetch apartments: $e';
    }

    _isLoading = false;
    notifyListeners();
  }

  void searchApartments(String query) {
    if (query.isEmpty) {
      _filteredApartments = _apartments;
    } else {
      _filteredApartments = _apartments
          .where((apt) =>
              apt.title.toLowerCase().contains(query.toLowerCase()) ||
              apt.location.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void filterByPrice(double minPrice, double maxPrice) {
    _filteredApartments = _apartments
        .where((apt) => apt.price >= minPrice && apt.price <= maxPrice)
        .toList();
    notifyListeners();
  }

  void filterByBedrooms(int bedrooms) {
    _filteredApartments =
        _apartments.where((apt) => apt.bedrooms >= bedrooms).toList();
    notifyListeners();
  }
}
