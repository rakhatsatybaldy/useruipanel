package kenn.shi.userspanel.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long id;

    @Column(name = "user_email")
    private String email;

    @Column(name = "user_password")
    private String password;

    @Column(name = "user_full_name")
    private String fullName;

    @Column(name = "user_address")
    private String address;

    @ManyToOne(fetch = FetchType.EAGER)
    private Cities city;

    @Column(name = "balance")
    private double balance;

    @Column(name = "blocked")
    private boolean blocked;

    @ManyToMany(fetch = FetchType.EAGER)
    private List<Roles> roles;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Goods> goods;

}
