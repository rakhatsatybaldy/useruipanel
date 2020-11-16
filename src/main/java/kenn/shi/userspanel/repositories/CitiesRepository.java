package kenn.shi.userspanel.repositories;

import kenn.shi.userspanel.entities.Cities;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public interface CitiesRepository extends JpaRepository<Cities , Long> {
}
