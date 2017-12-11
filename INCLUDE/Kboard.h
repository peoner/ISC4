
void init_kb();

void SIO_ISR(void) __interrupt(4);

volatile unsigned int rows[4] = {0,0,0,0};
