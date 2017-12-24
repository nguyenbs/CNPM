package com.example.ntc.demo;

import android.app.Dialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TabHost;

public class Home_User extends AppCompatActivity {

    private TabHost tab_host = null;
    private ImageButton find = null;
    private Intent Main_Next = null;
    private Button history = null;
    private TabHost.TabSpec tab_home = null;
    private TabHost.TabSpec tab_login = null;
    private TabHost.TabSpec tab_menu = null;
    private Button btnchangepassword = null;
    private ImageButton post = null;
    private Button personal = null;
    private Button company = null;
    private Button listcompany = null;
    private Button goback = null;
    private Button createcompany = null;
    private Button editinfomationpersonal = null;
    private Dialog dialog = null;
    public static int key = 0;
    private Button changpassword = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_user);
        addTab();
        setTextName();
        goToFind();
        goToHistory();
        goToPost();
        goToPersonal();
        goToCompany();
        goToListCompany();
        editInfomationPersonal();
        editPassword();
    }
    private void addTab() {
        tab_host = (TabHost) findViewById(R.id.Tab_Host_User);
        tab_host.setup();
        tab_home = tab_host.newTabSpec("tab_home_user");
        tab_home.setIndicator("Home");
//      tab_home.setIndicator("", getResources().getDrawable(R.drawable.ic_home));
        tab_home.setContent(R.id.tab_home_user);
        tab_host.addTab(tab_home);

        tab_login = tab_host.newTabSpec("tab_user");
//      tab_login.setIndicator("",getResources().getDrawable(R.drawable.ic_user));
        tab_login.setIndicator("User");
        tab_login.setContent(R.id.tab_user);
        tab_host.addTab(tab_login);

        tab_menu = tab_host.newTabSpec("tab_menu_user");
//      tab_menu.setIndicator("",getResources().getDrawable(R.drawable.ic_menu));
        tab_menu.setIndicator("Menu");
        tab_menu.setContent(R.id.tab_menu_user);
        tab_host.addTab(tab_menu);
    }
    private void setTextName() {

    }
    private void editPassword() {
        changpassword = (Button) findViewById(R.id.btnChangePassWord);
        changpassword.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, Edit_Password.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void editInfomationPersonal() {
        editinfomationpersonal = (Button) findViewById(R.id.btnInfomationPersonal);
        editinfomationpersonal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, Edit_Infomation_Personal.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToListCompany(){
        listcompany = (Button) findViewById(R.id.btnListCompany);
        listcompany.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, List_Company.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToCompany() {
        clickCompany();
    }
    private void clickCompany() {
        company = (Button) findViewById(R.id.btnCompany);
        company.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (key == 0) {
                    dialog = new Dialog(Home_User.this);
                    dialog.setTitle("Chú ý!");
                    dialog.setContentView(R.layout.layout_dialog);
                    goback = (Button) dialog.findViewById(R.id.btnGoBack);
                    createcompany = (Button) dialog.findViewById(R.id.btnCreateCompany);
                    goback.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            key = 1;
                            dialog.cancel();
                            dialog.dismiss();
                        }
                    });
                    createcompany.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            Main_Next = new Intent(Home_User.this, AddCompany.class);
                            startActivity(Main_Next);
                            Main_Next = null;
                            dialog.cancel();
                            dialog.dismiss();
                        }
                    });
                    dialog.show();
                    key = 1;
                } else {
                    Main_Next = new Intent(Home_User.this, Company.class);
                    startActivity(Main_Next);
                    Main_Next = null;
                }
            }
        });
    }
    private void goToPersonal() {
        personal = (Button) findViewById(R.id.btnPersonal);
        personal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, List_Personal.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToPost() {
        post = (ImageButton) findViewById(R.id.btnPost);
        post.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, Detail.class);
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
                Main_Next = new Intent(Home_User.this, History.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }

    private void goToFind() {
        find = (ImageButton) findViewById(R.id.btnFind_User);
        find.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, Find.class );
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }

    private void setChangepassword() {
        btnchangepassword = (Button) findViewById(R.id.btnChangePassWord);
        btnchangepassword.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Home_User.this, Change_Password.class);
                startActivity(Main_Next);
                finish();
                Main_Next = null;
            }
        });
    }
}
