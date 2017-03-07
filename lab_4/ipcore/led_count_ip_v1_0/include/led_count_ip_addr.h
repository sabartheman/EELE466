/*
 * File Name:         C:\Users\d57w762\Desktop\lab4\ipcore\led_count_ip_v1_0\include\led_count_ip_addr.h
 * Description:       C Header File
 * Created:           2017-03-07 12:53:51
*/

#ifndef LED_COUNT_IP_H_
#define LED_COUNT_IP_H_

#define  IPCore_Reset_led_count_ip           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_led_count_ip          0x4  //enabled (by default) when bit 0 is 0x1
#define  Blink_frequency_Data_led_count_ip   0x100  //data register for port Blink_frequency
#define  Blink_direction_Data_led_count_ip   0x104  //data register for port Blink_direction
#define  Read_back_Data_led_count_ip         0x108  //data register for port Read_back

#endif /* LED_COUNT_IP_H_ */
