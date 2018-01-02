package fr.enelia.dashboardapi.entities;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.List;

@Entity
public class Commercial extends Employe {

    @ManyToMany
    private List<Commission> commissions;

    public List<Commission> getCommissions() {
        return commissions;
    }

    public void setCommissions(List<Commission> commissions) {
        this.commissions = commissions;
    }
}
