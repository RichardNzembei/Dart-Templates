enum UserRoles {
  admin,
  staff,
  technitian,
  customer;

  List<String> get permissions {
    switch (this) {
      case UserRoles.admin:
        return [
          'view'
              'edit',
          'update',
          'delete',
          'manage_system',
        ];
      case UserRoles.staff:
        return [
          'view'
              'edit',
          'update',
          'delete',
        ];

      case UserRoles.customer:
        return ['view'];

      case UserRoles.technitian:
        return ['manage_system'];
    }
  }
}

void main() {
  UserRoles role = UserRoles.admin;
  print('Admins Permisions: ${role.permissions}');
}
