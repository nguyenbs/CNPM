package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Company extends AppCompatActivity {

    private Button addemployees = null;
    private Button deleteemployees = null;
    private Button seachpost = null;
    private Button deletepostcompany = null;
    private Button editinfomation = null;
    private Intent Main_Next = null;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_company);
        goToAddEmployees();
        goToDeleteEmployees();
        goToCompanyPost();
        goToDeletePostCompany();
        editInfomation();
    }
    private void editInfomation() {
        editinfomation = (Button) findViewById(R.id.btnEditInfomationCompany);
        editinfomation.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Company.this, Edit_Infomation_Company.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToDeletePostCompany() {
        deletepostcompany = (Button) findViewById(R.id.btnDeletePostCompany);
        deletepostcompany.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Company.this, Find.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToCompanyPost() {
        seachpost = (Button) findViewById(R.id.btnListpost);
        seachpost.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Company.this, List_Post_Company.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
    private void goToDeleteEmployees() {
        deleteemployees = (Button) findViewById(R.id.btnDeleteEmployees);
        deleteemployees.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Company.this, Find.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }

    private void goToAddEmployees(){
        addemployees = (Button) findViewById(R.id.btnAddEmployees);
        addemployees.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Main_Next = new Intent(Company.this, AddNewPersonal.class);
                startActivity(Main_Next);
                Main_Next = null;
            }
        });
    }
}
