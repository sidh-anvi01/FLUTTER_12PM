import 'package:cloud_firestore/cloud_firestore.dart';

/// Generic Firestore service for user-scoped data.
/// Extend or duplicate this pattern for any collection in your app.
class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // ────────────────────────────────────────────────
  // User Profile (users/{uid})
  // ────────────────────────────────────────────────

  /// Creates or overwrites the user profile document.
  Future<void> createUserProfile({
    required String uid,
    required String email,
    String? displayName,
  }) async {
    await _db.collection('users').doc(uid).set({
      'uid': uid,
      'email': email,
      'displayName': displayName ?? '',
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  /// Reads the user profile document once.
  Future<Map<String, dynamic>?> getUserProfile(String uid) async {
    final doc = await _db.collection('users').doc(uid).get();
    return doc.data();
  }

  /// Streams real-time updates to the user profile.
  Stream<Map<String, dynamic>?> streamUserProfile(String uid) {
    return _db
        .collection('users')
        .doc(uid)
        .snapshots()
        .map((doc) => doc.data());
  }

  /// Updates specific fields on the user profile.
  Future<void> updateUserProfile(
      String uid, Map<String, dynamic> data) async {
    await _db.collection('users').doc(uid).update(data);
  }
}
