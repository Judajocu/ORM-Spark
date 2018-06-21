package Classes;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@NamedQueries({@NamedQuery(name = "Tag.findAllBytag", query = "select p from Tag  p where p.tag like :tag")})
public class Tag implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TAG_ID")
    private long id;
    private String tag;

    public Tag(long id, String tag) {
        this.id = id;
        tag = tag;
    }

    public Tag() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTag() { return this.tag; }

    public void setTag(String tag) {
        this.tag = tag;
    }
}
