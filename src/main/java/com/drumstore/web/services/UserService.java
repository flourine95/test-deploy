package com.drumstore.web.services;


import com.drumstore.web.dto.UserDTO;
import com.drumstore.web.models.User;
import com.drumstore.web.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;

public class UserService {
    private final UserRepository userRepository = new UserRepository();

    public int store(UserDTO user) {
        return userRepository.store(user);
    }

    public int update(UserDTO user) {
        return userRepository.update(user);
    }

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public boolean register(User user) {
        return userRepository.registerWithNotAuthen(user);
    }

    public boolean isPhoneExists(String phone) {
        return userRepository.isPhoneExists(phone);
    }

    public boolean isEmailExists(String email) {
        return userRepository.isEmailExists(email);
    }

    public boolean hasPermission(int userId, String permissionName) {
        return userRepository.hasPermission(userId, permissionName);
    }

    public UserDTO login(String username, String password) {
        return userRepository.login(username, password);
    }

    public void updateStatus(String email){
         userRepository.updateStatus(email);
    }

    public UserDTO findUser(String field, Object value) {
        return userRepository.findUser(field, value);
    }

}