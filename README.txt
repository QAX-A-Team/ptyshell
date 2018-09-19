client:   socat STDIN,echo=0,raw tcp-listen:8080
server:  make
              ./pty 1.1.1.1 8080