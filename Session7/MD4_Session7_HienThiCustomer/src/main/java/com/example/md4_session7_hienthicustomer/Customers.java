package com.example.md4_session7_hienthicustomer;

public class Customers {
        private String name;
        private String date;
        private String address;
        private String image;

        public Customers(String name, String date, String address, String image) {
            this.name = name;
            this.date = date;
            this.address = address;
            this.image = image;
        }

        public Customers() {
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getDate() {
            return date;
        }

        public void setDate(String date) {
            this.date = date;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }

    }
