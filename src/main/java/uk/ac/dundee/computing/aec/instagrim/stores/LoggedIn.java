/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author Administrator
 */
public class LoggedIn {

    private boolean logedin = false;
    private String Username = null;

    public void LoggedIn() {

    }

    public void setUsername(String name) {
        this.Username = name;
    }

    public String getUsername() {
        return Username;
    }

    public void setLoggedin() {
        logedin = true;
    }

    public void setLoggedout() {
        logedin = false;
    }

    public void setLoginState(boolean logedin) {
        this.logedin = logedin;
    }

    public boolean getloggedin() {
        return logedin;
    }
}
