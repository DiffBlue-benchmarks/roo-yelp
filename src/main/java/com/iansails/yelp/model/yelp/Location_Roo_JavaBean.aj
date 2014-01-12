// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.model.yelp;

import com.iansails.yelp.model.Coordinate;
import com.iansails.yelp.model.yelp.Location;
import java.util.List;

privileged aspect Location_Roo_JavaBean {
    
    public Coordinate Location.getCoordinate() {
        return this.coordinate;
    }
    
    public void Location.setCoordinate(Coordinate coordinate) {
        this.coordinate = coordinate;
    }
    
    public String Location.getCity() {
        return this.city;
    }
    
    public void Location.setCity(String city) {
        this.city = city;
    }
    
    public String Location.getStateCode() {
        return this.stateCode;
    }
    
    public void Location.setStateCode(String stateCode) {
        this.stateCode = stateCode;
    }
    
    public String Location.getPostalCode() {
        return this.postalCode;
    }
    
    public void Location.setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
    
    public String Location.getCountryCode() {
        return this.countryCode;
    }
    
    public void Location.setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }
    
    public String Location.getCrossStreets() {
        return this.crossStreets;
    }
    
    public void Location.setCrossStreets(String crossStreets) {
        this.crossStreets = crossStreets;
    }
    
    public String Location.getNeighborhoods() {
        return this.neighborhoods;
    }
    
    public void Location.setNeighborhoods(String neighborhoods) {
        this.neighborhoods = neighborhoods;
    }
    
    public int Location.getGeoAccuracy() {
        return this.geoAccuracy;
    }
    
    public void Location.setGeoAccuracy(int geoAccuracy) {
        this.geoAccuracy = geoAccuracy;
    }
    
    public List<String> Location.getDisplayAddress() {
        return this.displayAddress;
    }
    
    public void Location.setDisplayAddress(List<String> displayAddress) {
        this.displayAddress = displayAddress;
    }
    
    public List<String> Location.getAddress() {
        return this.address;
    }
    
    public void Location.setAddress(List<String> address) {
        this.address = address;
    }
    
}