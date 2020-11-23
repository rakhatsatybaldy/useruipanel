package kenn.shi.userspanel.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "goods")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Proxy(lazy = false)
public class Goods {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "good_id")
    private Long id;

    @Column(name = "good_name")
    private String name;

    @Column(name = "good_description" , columnDefinition = "TEXT")
    private String description;

    @Column(name = "price")
    private double price;

    @Column(name = "amount")
    private int amount;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Categories> categories;

    @Column(name = "picture")
    private String urlOfPicture;




}
