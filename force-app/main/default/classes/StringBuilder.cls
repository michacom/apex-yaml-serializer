/**
 * Created by Heitor Araujo on 11/02/20.
 */

public with sharing class StringBuilder {

    private List<String> buffer = new List<String>();

    public StringBuilder(){
    }

    public StringBuilder append(String str){
        buffer.add(str);
        return this;
    }

    public StringBuilder append(Object obj){
        buffer.add(String.valueOf(obj));
        return this;
    }

    public String build(){
        return String.join(buffer, '');
    }

    public override String toString() {
        return build();
    }
}
