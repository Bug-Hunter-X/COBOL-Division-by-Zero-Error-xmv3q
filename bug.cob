```cobol
01  WS-DATA-RECORD.
    05  WS-FIELD-A PIC 9(5) VALUE 0.
    05  WS-FIELD-B PIC 9(5) VALUE 0.

PROCEDURE DIVISION.
    PERFORM 100-INPUT-DATA.
    PERFORM 200-PROCESS-DATA.
    PERFORM 300-OUTPUT-DATA.
    STOP RUN.

100-INPUT-DATA SECTION.
    DISPLAY "Enter value for WS-FIELD-A: ".
    ACCEPT WS-FIELD-A.
    DISPLAY "Enter value for WS-FIELD-B: ".
    ACCEPT WS-FIELD-B.

200-PROCESS-DATA SECTION.
    IF WS-FIELD-B = 0 THEN
        DISPLAY "Division by zero error!" 
        STOP RUN
    ELSE
        COMPUTE WS-FIELD-A = WS-FIELD-A / WS-FIELD-B
    END-IF.

300-OUTPUT-DATA SECTION.
    DISPLAY "Result: " WS-FIELD-A.
```