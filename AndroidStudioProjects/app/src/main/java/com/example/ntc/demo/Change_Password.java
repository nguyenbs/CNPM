package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Button;

public class Change_Password extends AppCompatActivity {

    private Button btnChange = null;
    private Intent Main_Next = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_change_password);
        setChange();
    }
    private void setChange() {
        Main_Next = new Intent(Change_Password.this, Home_User.class);
        startActivity(Main_Next);
        finish();
        Main_Next = null;
    }
}
