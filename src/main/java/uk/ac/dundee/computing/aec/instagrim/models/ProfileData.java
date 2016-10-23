/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.util.ArrayList;

/**
 *
 * @author carstencheyne 
 */
public class ProfileData {

    Cluster cluster;

    public ProfileData() {
    }

    public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    public ArrayList<String> Retrieveinformation(String User) {
        ArrayList<String> details = new ArrayList<>();
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select login, first_name, last_name from userprofiles where login =?");
        ResultSet rs;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        User));
        if (rs.isExhausted()) {
            System.out.println("No details found");
            return null;
        } else {
            for (Row row : rs) {
                details.add(row.getString("login"));

                if (row.getString("first_name") != null) {
                    details.add(row.getString("first_name"));
                } else {
                    details.add("No Information Found");
                }

                if (row.getString("last_name") != null) {
                    details.add(row.getString("last_name"));
                } else {
                    details.add("No Information Found");
                }
            }
        }

        return details;
    }

}
