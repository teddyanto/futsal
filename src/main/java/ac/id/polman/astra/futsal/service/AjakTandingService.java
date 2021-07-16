package ac.id.polman.astra.futsal.service;

import ac.id.polman.astra.futsal.model.MsAkun;
import ac.id.polman.astra.futsal.model.MsTim;
import ac.id.polman.astra.futsal.model.TrAjakTanding;
import ac.id.polman.astra.futsal.model.TrDaftarTim;
import ac.id.polman.astra.futsal.repository.AjakTandingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AjakTandingService {
    @Autowired
    AjakTandingRepository ajakTandingRepository;

    public List<TrAjakTanding> getAll(){
        List<TrAjakTanding> tandingList = (List<TrAjakTanding>) ajakTandingRepository.findAll();
        return tandingList;
    }

    public TrAjakTanding getAllById(int id){
        TrAjakTanding tandingList = ajakTandingRepository.findById(id);
        return tandingList;
    }

    public List<TrAjakTanding> getAllByTim(int id_tim){
        List<TrAjakTanding> tandingList = ajakTandingRepository.findByIdTim1(id_tim);
        return tandingList;
    }

    public void saveTim(TrAjakTanding trAjakTanding){
        ajakTandingRepository.save(trAjakTanding);
    }
}
