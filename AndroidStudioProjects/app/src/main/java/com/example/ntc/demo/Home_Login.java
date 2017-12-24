package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TabHost;

public class Home_Login extends AppCompatActivity {

    private TabHost tab_host = null;
    private ImageButton find = null;
    private Intent Main_Next = null;
    private Button login = null;
    private Button history = null;
    private TabHost.TabSpec tab_home = null;
    private TabHost.TabSpec tab_login = null;
    private TabHost.TabSpec tab_menu = null;
    private ImageButton post = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_login);
        addTab();
        setTextName();
        goToFind();
        goToLogin();
        goToHistory();
        goToPost();
    }
    public void addTab() {
        tab_host = (TabHost) findViewById(R.id.Tab_Host_Login);
        tab_host.setup();
        tab_home = tab_host.newTabSpec("tab_home_login");
        tab_home.setIndicator("Home");
//      tab_home.setIndicator("", getResources().getDrawable(R.drawable.ic_home));
        tab_home.setContent(R.id.tab_home_login);
        tab_host.addTab(tab_home);

        tab_login = tab_host.newTabSpec("tab_login");
//      tab_login.setIndicator("",getResources().getDrawable(R.drawable.ic_user));
        tab_login.setIndicator("Login");
        tab_login.setContent(R.id.tab_login);
        tab_host.addTab(tab_login);

        tab_menu = tab_host.newTabSpec("tab_menu");
//      tab_menu.setIndicator("",getResources().getDrawable(R.drawable.ic_menu));
        tab_menu.setIndicator("Menu");
        tab_menu.setContent(R.id.tab_menu_login);
        tab_host.addTab(tab_menu);
    }
    private void setTextName() {

    }
    private void goToPost() {
        post = (ImageButton) findViewById(R.id.btnPost);
        post.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_Login.this, Detail.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToHistory(){
        history = (Button) findViewById(R.id.btnHistory);
        history.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_Login.this, History.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }

    private void goToFind() {
        find = (ImageButton) findViewById(R.id.btnFind_Login);
        find.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_Login.this, Find.class );
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToLogin() {
        login =(Button) findViewById(R.id.btnLogin);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_Login.this, Login.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
}
