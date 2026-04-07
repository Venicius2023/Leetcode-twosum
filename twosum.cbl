       IDENTIFICATION DIVISION.
       PROGRAM-ID. TWO_SUN.
       AUTHOR. VENICIUS RODRIGUES

       ENVIRONMENT DIVISION.


       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 VARIAVEL-DE-CONTROLE.
           05 I                PIC 9(02) VALUE 1.
           05 J                PIC 9(02) VALUE 1.
           05 INDICE-01        PIC Z9.
           05 INDICE-02        PIC Z9.
           05 SOMA-TEMPORARIA  PIC 9(05) VALUE 0.
           05 TARGET           PIC 9(05) VALUE 0.
           05 ENCONTROU        PIC X(01) VALUE "N".

       01 MINHA-TABELA.

           05 LISTA-NUMS       PIC 9(05) OCCURS 5 TIMES.


       PROCEDURE DIVISION.
       INICIO.
           
           DISPLAY "---LEETCODE TWO SUM---".

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "DIGITE O NUMS "I": "
               ACCEPT LISTA-NUMS(I)
           END-PERFORM.
           
           DISPLAY "QUAL O TARGET?".
           ACCEPT TARGET.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               
               ADD I 1 GIVING J

               PERFORM VARYING J FROM J BY 1 UNTIL J > 5
                COMPUTE SOMA-TEMPORARIA = LISTA-NUMS(I) + LISTA-NUMS(J)

                 IF SOMA-TEMPORARIA = TARGET AND ENCONTROU = "N"
                   COMPUTE INDICE-01 = I - 1
                   COMPUTE INDICE-02 = J - 1
                   MOVE "S" TO ENCONTROU
                 END-IF 

               END-PERFORM

           END-PERFORM.

           IF ENCONTROU = "S"
               DISPLAY "RESULTADO ENCONTRADO"
               DISPLAY "INDICE:["INDICE-01", "INDICE-02"]"
           ELSE
               DISPLAY "NENHUM PAR ENCONTRADO."
           END-IF.



           STOP RUN.
