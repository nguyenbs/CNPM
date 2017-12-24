package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class GetNotifications extends AppCompatActivity {

    private Button btnok = null;
    private Intent Main_Next = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_get_notifications);
        goToResetPassword();
    }
    private void goToResetPassword() {
        btnok = (Button) findViewById(R.id.btnOk);
        btnok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(GetNotifications.this, FogotPassword.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
}
