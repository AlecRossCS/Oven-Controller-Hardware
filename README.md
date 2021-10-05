# Oven-Controller-Hardware

This project is about creating a controller for a heating element for a custom designed oven. The temperature needs to be controlled with industrial precision, so this baord contains a microcontroller as well as devices needed to interact with a thermocouple to precisely sense temperature, as well as a large power mosfet, which controls the power to the heating element to control the temperature with great accuracy. 

# Design

![schematic](Heater_Controller.svg)

because of the supply shortage, the microcontroller was chosen as a RP2040 already made onto a Raspberry pi Pico board, because that board can be soldered onto another, as in this case, and both the RP2040, and my second choice of STM32F0 controllers are impossible to buy for any project currently. So buying a premade micro offers flexability as you can buy them in the quantities I need. the Micro interacts with both the sensor and mosfet, as well as capability to drive an LCD screen for display. A notable thing that is different here is that the mosfet does not use a large heatsink. That is not because it does not disspate much power, but because the newer technology on the market allows the Vishay thermal jumper to absorb and funnel much of the heat directly from the heat fin into the ground plane.
