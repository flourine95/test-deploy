import com.drumstore.web.repositories.UserRepository;

public class Test {
    public static void main(String[] args) {
//        System.out.println(new PermissionRepository().createPermission("permissions:create", "description"));
//        System.out.println(new RoleRepository().createRole(RoleDTO.builder().name("ADMIN1").description("asd").build()));

        System.out.println(new UserRepository().login("admin1@gmail.com","admin1@gmail.com"));
    }

}