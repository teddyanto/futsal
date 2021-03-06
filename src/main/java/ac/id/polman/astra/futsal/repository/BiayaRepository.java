package ac.id.polman.astra.futsal.repository;

import ac.id.polman.astra.futsal.model.MsBiaya;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BiayaRepository extends CrudRepository<MsBiaya, Integer> {
    @Query("select * from ms_biaya where id_biaya =:id_biaya")
    MsBiaya findByIdBiaya(@Param("id_biaya") int id_biaya);

    @Query("select * from ms_biaya where status =:status")
    List<MsBiaya> findAllByStatus(@Param("status") int status);
}
