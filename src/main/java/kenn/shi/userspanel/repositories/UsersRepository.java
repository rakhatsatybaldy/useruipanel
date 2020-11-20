package kenn.shi.userspanel.repositories;


import kenn.shi.userspanel.entities.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public interface UsersRepository extends JpaRepository<Users, Long> {

    Users findByEmail(String email);
    Users findByEmailAndBlocked(String email , boolean blocked);

}
