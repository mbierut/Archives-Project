package pl.mbierut.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.mbierut.models.Binder;

import java.util.List;

public interface BinderRepository extends JpaRepository<Binder, Long> {
    List<Binder> findAllByNameContaining(String name);
}
