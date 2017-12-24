package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Login extends AppCompatActivity {

    private Button btnOnLogin = null;
    private Intent Main_Next = null;
    private Button registration = null;
    private Button fogotpassword = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        goToAccount();
        goToRegistration();
        goToFogotPassword();
    }
    private void goToFogotPassword() {
        fogotpassword = (Button) findViewById(R.id.btnFogotPassWord);
        fogotpassword.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Login.this, GetNotifications.class);
                startActivity(Main_Next);
                finish();
                Main_Next = null;
            }
        });
    }
    private void goToAccount()  {
        btnOnLogin = (Button) findViewById(R.id.btnOnLogin);
        btnOnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Login.this, Home_User.class);
                startActivity(Main_Next);
                finish();
                Main_Next = null;
            }
        });
    }
    private void goToRegistration() {
        registration = (Button) findViewById(R.id.btnRegistration);
        registration.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Login.this, Registration.class);
                startActivity(Main_Next);
                finish();
                Main_Next = null;
            }
        });
    }
}
