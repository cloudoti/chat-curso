class Contact {
  String? name;
  String? image;
  String? lastMessage;
  String? lastMessageTime;
  int? lastEvent;
  bool? isActive;
  String? avatarUrl;

  Contact(
      {this.name,
      this.image,
      this.lastMessage,
      this.lastEvent,
      this.lastMessageTime,
      this.isActive,
      this.avatarUrl});
}
