package mvc.repositories;

import mvc.models.IndexModel;
import org.springframework.data.repository.CrudRepository;

public interface IndexRepository extends CrudRepository<IndexModel, Integer> {
}
