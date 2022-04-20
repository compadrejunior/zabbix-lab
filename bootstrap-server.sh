#!/bin/bash
sudo systemctl start mysqld
sudo systemctl enable mysqld.service
sudo systemctl start nginx.service