package com.example.ntc.demo;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;

public class MainActivity extends AppCompatActivity {

    private Intent Main_Next = null;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_main);
        new Thread(new Main_Show()).start();
    }
    private class Main_Show implements Runnable {
        public void run(){
            try{
                Thread.sleep(3000);
                Main_Next = new Intent(MainActivity.this, Home_Login.class);
                startActivity(Main_Next);
                finish();
            } catch (Exception e) {
                
            }
        }
    }
}
