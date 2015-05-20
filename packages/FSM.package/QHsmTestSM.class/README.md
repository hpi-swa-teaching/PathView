void initial(QEvent const *e);              // initial pseudostate
   QSTATE s0(QEvent const *e);                       // state-handler
      QSTATE s1(QEvent const *e);                    // state-handler
         QSTATE s11(QEvent const *e);                // state-handler 
      QSTATE s2(QEvent const *e);                    // state-handler
         QSTATE s21(QEvent const *e);                // state-handler
            QSTATE s211(QEvent const *e);            // state-handler
