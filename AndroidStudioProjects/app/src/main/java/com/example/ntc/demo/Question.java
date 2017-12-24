package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Question extends AppCompatActivity {

    private Intent Main_Next = null;
    private Button ignore = null;
    private Button send = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_question);
        setIgnore();
        setSend();
    }
    private void setIgnore() {
        ignore = (Button) findViewById(R.id.btnIgnore);
        ignore.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Question.this, Home_Login.class);
                startActivity(Main_Next);
            }
        });
    }
    private void setSend() {
        send = (Button) findViewById(R.id.btnSend);
        send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // viet xu ly den server tai day
                Main_Next = new Intent(Question.this, Home_Login.class);
                startActivity(Main_Next);
            }
        });
    }



}
