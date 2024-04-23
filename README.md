# DSD-Clock
Development of a clock by implementing state machines, memory usage and counters in VHDL leanguage for FPGA.

## Project features
Development of a clock with the DE2-115 card that does the following:
- Display the hour, minutes and seconds.

> [!NOTE]
> The seconds are shown in turn with an LED (8 - Green).

- Hour and minute setting.
- Assigning an alarm.
- The alarm must activate a sequence on the LED's.

## Planning of project
- [ ] Generate a clock with a frequency of one second.
- [ ] Create counters for hours, minutes and seconds.
  - Elaborate the state machines for that counters.
- [ ] Show the counters on the different 7-segment displays.
  - Also, show the seconds on a green LED (That can be done with a clock pulse).
- [ ] Reset the counters on the next state if:
  - Hours equals 23.
  - Minutes is equal to 59.
  - Seconds is equal to 59.

> [!NOTE]
> This is because the next counter is incremented after the reset of each one respectively.
> If seconds reaches 59 and minutes is at 0, seconds will be 0 and minutes will change to 1, and so on taking into account the limits on each counter.

- [ ] Design a module for the alarm.
- [ ] Comparative between time on clock and alarm, if the times are the same, activate a sequence.
- [ ] Set a modification status for the hour and minute counter, to enter these parameters manually.
  - That can be made whit one switch for enable editing that counters; 5 bits for hours and 6 bits for minutes.
- [ ] Implementation of alarm storage in FLASH memory.

## Design diagram