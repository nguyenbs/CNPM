package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class Find extends AppCompatActivity {


    private Intent Main_Back = null;
    private ImageButton back = null;
    private ImageButton clear = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find);
        goBackHome();
    }
    private void goBackHome() {
        back = (ImageButton) findViewById(R.id.btnBack);
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Back = new Intent(Find.this, Home_Login.class);
                startActivity(Main_Back);
                finish();
            }
        });
    }

}
