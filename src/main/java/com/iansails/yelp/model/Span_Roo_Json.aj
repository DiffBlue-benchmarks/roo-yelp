// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.model;

import com.iansails.yelp.model.Span;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Span_Roo_Json {
    
    public String Span.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Span.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Span Span.fromJsonToSpan(String json) {
        return new JSONDeserializer<Span>()
        .use(null, Span.class).deserialize(json);
    }
    
    public static String Span.toJsonArray(Collection<Span> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Span.toJsonArray(Collection<Span> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Span> Span.fromJsonArrayToSpans(String json) {
        return new JSONDeserializer<List<Span>>()
        .use("values", Span.class).deserialize(json);
    }
    
}
