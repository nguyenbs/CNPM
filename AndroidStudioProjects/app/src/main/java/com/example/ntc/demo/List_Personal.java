package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;

public class List_Personal extends AppCompatActivity {

    private Button delete = null;
    private Button addpost = null;
    private ImageButton layoutpost = null;
    private Intent Main_Next = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_personal);
        goToDelete();
        goToAddpost();
        editPost();
    }
    private void  editPost() {
        layoutpost = (ImageButton) findViewById(R.id.btnLogoStatus);
        layoutpost.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(List_Personal.this, Edit_Post.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToAddpost(){
        addpost = (Button) findViewById(R.id.btnAddPostPersonal);
        addpost.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(List_Personal.this, AddNewPost.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToDelete() {
        delete = (Button) findViewById(R.id.btnDeletePostPersonal);
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(List_Personal.this, Find.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
}
