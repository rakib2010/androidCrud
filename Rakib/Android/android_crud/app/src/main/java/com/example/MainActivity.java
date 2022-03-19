package com.example;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText nameField;
    EditText emailField;
    EditText passwordField;
    Button buttonAd;
    Button buttonShow;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        nameField = findViewById(R.id.nameField);
        emailField = findViewById(R.id.emailField);
        passwordField = findViewById(R.id.passwordField);
        buttonAd = findViewById(R.id.btnId);
        buttonShow = findViewById(R.id.showBtnId);

        buttonAd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = nameField.getText().toString();
                String email = emailField.getText().toString();
                String password = passwordField.getText().toString();

                System.out.println(name+email+password);
                if(name.length() <= 0 || email.length() <= 0 || password.length() <=0 ){
                    Toast.makeText(MainActivity.this, "Field can not be empty", Toast.LENGTH_SHORT).show();
                }else{
                    DatabaseHelper databaseHelper = new DatabaseHelper(MainActivity.this);
                    Student student = new Student(name, email, password);
                    databaseHelper.save(student);
                    Toast.makeText(MainActivity.this, "Saved Successfully", Toast.LENGTH_SHORT).show();
                    finish();
                    startActivity(getIntent());

                }


            }
        });



    }
}