package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Registration extends AppCompatActivity {

    private Button registrationfinnish = null;
    private Intent Main_Next = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registration);
        goToFinnishRegistration();
    }
    private void goToFinnishRegistration() {
        registrationfinnish = (Button) findViewById(R.id.btnRegistrationFinnish);
        registrationfinnish.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Registration.this, Home_User.class);
                startActivity(Main_Next);
                finish();
                Main_Next = null;
            }
        });
    }
}
