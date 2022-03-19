package com.example;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DatabaseHelper extends SQLiteOpenHelper {

    private static final int db_version = 1;
    private static final String db_name = "student_db";
    private static final String table_name = "student";

    public static final String ID = "id";
    public static final String NAME = "name";
    public static final String EMAIL = "email";
    public static final String PASSWORD = "password";
    private static  SQLiteDatabase sqLiteDatabase;

    private static final String create_table = "create table "+ table_name +" ("+
            ID+ " integer primary key autoincrement, "
            + NAME + " text,"
            + EMAIL + " text,"
            + PASSWORD+" text);";

    public DatabaseHelper(Context context){
        super(context, db_name,null, db_version);
    }




    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(create_table);


    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int i, int i1) {
        db.execSQL(" drop table if exists " + table_name);
        onCreate(db);

    }

    public void save(Student student){
        ContentValues contentValues = new ContentValues();
        contentValues.put(DatabaseHelper.NAME, student.getName());
        contentValues.put(DatabaseHelper.EMAIL, student.getEmail());
        contentValues.put(DatabaseHelper.PASSWORD, student.getPassword());
        sqLiteDatabase = this.getWritableDatabase();
        sqLiteDatabase.insert(DatabaseHelper.table_name, null,contentValues);




    }
}
