package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;

public class List_Post_Company extends AppCompatActivity {

    private ImageButton layoutpost = null;
    private Intent Main_Next = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_post_company);
    }
    private void editPost() {
        layoutpost = (ImageButton) findViewById(R.id.btnLogoStatus);
        layoutpost.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(List_Post_Company.this, Edit_Post.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
}
