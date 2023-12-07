public class User {
    private int user_id;
    private String full_name;
    private String nic;
    private String email;
    private String phone_number;
    private String password;

    // Getter for user_id
    public int getUserId() {
        return user_id;
    }

    // Setter for user_id
    public void setId(int user_id) {
        this.user_id = user_id;
    }

    // Getter for full_name
    public String getFullName() {
        return full_name;
    }

    // Setter for full_name
    public void setFName(String full_name) {
        this.full_name = full_name;
    }

    // Getter for nic
    public String getNic() {
        return nic;
    }

    // Setter for nic
    public void setNIC(String nic) {
        this.nic = nic;
    }

    // Getter for email
    public String getEmail() {
        return email;
    }

    // Setter for email
    public void setEmail(String email) {
        this.email = email;
    }

    // Getter for phone_number
    public String getPhone() {
        return phone_number;
    }

    // Setter for phone_number
    public void setPhone(String phone_number) {
        this.phone_number = phone_number;
    }

    // Getter for password
    public String getPass() {
        return password;
    }

    // Setter for password
    public void setPass(String password) {
        this.password = password;
    }
}
