/*
 * main.c
 *
 *  Created on: Aug 1, 2014
 *      Author: 910560
 */

#include "demo.h"
#include "platform.h"


demo_t demo, demo2;
demo_t *pdemo, *pdemo2;

void cam_R_initial(demo_t *pdemo);
void cam_L_initial(demo_t *pdemo2);

int main() {

	init_platform();

	while( 1 )
	{
		xil_printf("\n\r");
		xil_printf("------------------------------------------------------\n\r");
		xil_printf("--                    FMC-IMAGEON                   --\n\r");
		xil_printf("--               Getting Started Design             --\n\r");
		xil_printf("------------------------------------------------------\n\r");
		xil_printf("\n\r");

		// Init reference design
		demo_init_frame_buffer(pdemo);
		demo_init_frame_buffer(pdemo2);

		cam_R_initial(pdemo);
		cam_L_initial(pdemo2);

		demo_start_frame_buffer(pdemo, pdemo2);

		xil_printf("Press ENTER to Restart.\n\r");
		getchar();
	}

	return 0;
}

void cam_R_initial(demo_t *pdemo) {
	pdemo = &demo;
	demo_init_R( pdemo );

	// Try CAM first
	pdemo->cam_alpha = 0xFF;
	pdemo->hdmi_alpha = 0x00;

	demo_start_cam_R_in(pdemo);
}

void cam_L_initial(demo_t *pdemo2) {
	pdemo2 = &demo2;
	demo_init_L( pdemo2 );

	// Try CAM first
	pdemo2->cam_alpha = 0xFF;
	pdemo2->hdmi_alpha = 0x00;

	demo_start_cam_L_in(pdemo2);
}
