#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"			/* SD device driver */
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"
#include "xplatform_info.h"

#include <stdio.h>
#include <stdlib.h>

#define WIDTH 	512
#define HEIGHT 	512
#define RGB		3

int bmp_upside_down(void);

static FIL	    fp_s;									/* source file handler */
static FIL 		fp_d;									/* destination file handler */

static FATFS	fatfs;									/* File System Object Structure */
static FRESULT	res;									/* File Function Return Code */

static TCHAR	*Path = "0:/";							/* �������| */

static char		FileReadName[32] = "clena.bmp";			/* ��Ū���ɮצW�� */
static char		FileWriteName[32] = "test.txt";			/* ���g�J�ɮצW�� */
static char		*sd_file;

unsigned char image_s[WIDTH * HEIGHT * RGB];			/* �ӷ��Ϲ��Ϊ��}�C */
unsigned char image_d[WIDTH * HEIGHT * RGB];			/* �ت��Ϲ��Ϊ��}�C */
unsigned char R, G, B;									/* Red, Green, Blue color */

unsigned int  file_size;								/* �ɮפj�p */
unsigned int  rgb_raw_data_offset;						/* RGB��ƪ�offset�A�@��ӻ���54 */

unsigned char header[54] = {							/* BMP�ɮ׼��Y			   - 54Bytes */
	0x42,        										/* �ɮ��ѧO�X�A"B"		   - 1Bytes */
	0x4d,        										/* �ɮ��ѧO�X�A"M"		   - 2Bytes */
	0,    0, 0, 0,  									/* �ɮפj�p				   - 4Bytes */
	0,    0,        									/* �O�d���A�]��0		   - 2Bytes */
	0,    0,        									/* �O�d���A�]��0		   - 2Bytes */
	54,   0, 0, 0, 										/* RGB�}�l���e����ư����q - 4Bytes */

	40,   0, 0, 0, 										/* struct BITMAPINFOHEADER��size					- 4Bytes */
	0,    0, 0, 0,  									/* �v���e��(pixel)									- 4Bytes */
	0,    0, 0, 0, 										/* �v������(pixel)									- 4Bytes */
	1,    0,        									/* �զ�L���ƶq�A�]��1								- 2Bytes */
	24,   0,       										/* �C��pixel�һݦ줸��(1/4/8/16/32)					- 2Bytes */
	0,    0, 0, 0,  									/* ���Y�覡�A0�������Y								- 4Bytes */
	0,    0, 0, 0,  									/* �v���j�p�A�Y�����Y�]��0							- 4Bytes */
	0,    0, 0, 0,  									/* �����ѪR�סGPixel/Meter							- 4Bytes */
	0,    0, 0, 0,										/* �����ѪR�סGPixel/Meter							- 4Bytes */
	0,    0, 0, 0,  									/* �ϥνզ�L���C��ơA0�����ܨϥνզ�L�Ҧ��C��	- 4Bytes */
	0,    0, 0, 0  										/* ���n�C��ơA������0��used_colors�ɡA�����������n - 4Bytes */
};

char test[20] = "This is a TEST.";

int main(void)
{

	xil_printf("Start SD Card Control.\r\n");

	bmp_upside_down();

	xil_printf("\r\nEnd SD Card Control.\r\n");

	return XST_SUCCESS;
}

int bmp_upside_down(void)
{
	UINT		  NumBytesRead  = 0;		/* Pointer to number of bytes read */
	UINT		  NumBytesWrite = 0;		/* Pointer to number of bytes write */

	unsigned int  x, y;						/* �j��p�� */
	unsigned int  width, height;			/* �Ϲ����e�P�� */

	unsigned int  y_avg;					/* y�b�������� */
	unsigned int  y_d;						/* y�b���ؼ� */

	int 		  i;

	width				 = WIDTH;
	height				 = HEIGHT;
	rgb_raw_data_offset  = 54;

	/* Register volume work area, initialize device */
	res = f_mount(&fatfs, Path, 0);
	if(res != FR_OK)
	{
		xil_printf("File Mount ERROR.\r\n");
		return XST_FAILURE;
	}

	/* �}�� */
	sd_file = (char *)FileReadName;

	res = f_open(&fp_s, sd_file, FA_OPEN_EXISTING | FA_READ);
	if(res)
	{
		xil_printf("File Open fp_s ERROR.\r\n");
		return XST_FAILURE;
	}

	/* �ɮ׫��Ы��V���Y  */
	res = f_lseek(&fp_s, 0);
	if (res)
	{
		xil_printf("File seek ERROR.\r\n");
		return XST_FAILURE;
	}

	f_read(&fp_s, (void *)(header), sizeof(unsigned char) * rgb_raw_data_offset, &NumBytesRead) ;

	/* ���� offset ���q�A�H�}�lŪ�i�Ϲ� RGB ����  */
	res = f_lseek(&fp_s, rgb_raw_data_offset);
	if (res)
	{
		xil_printf("File seek ERROR.\r\n");
		return XST_FAILURE;
	}

	/* Ū���Ϲ��� RGB �� */
	f_read(&fp_s, (void *)(image_s), sizeof(unsigned char) * (size_t)(long)(width * height * 3), &NumBytesRead) ;

	/* ���� */
	res = f_close(&fp_s);
	if(res)
	{
		xil_printf("File Close fp_s ERROR.\r\n");
		return XST_FAILURE;
	}

	/* �g�J��ؼЪ��Ϲ� */
	sd_file = (char *)FileWriteName;

	res = f_open(&fp_d, sd_file, FA_OPEN_ALWAYS | FA_WRITE | FA_READ);
	if(res)
	{
		xil_printf("File Open fp_d ERROR.\r\n");
		return XST_FAILURE;
	}

	res = f_lseek(&fp_d, 0);
	if (res)
	{
		xil_printf("File seek ERROR.\r\n");
		return XST_FAILURE;
	}

	/* �g�J�ɮ׼��Y */
	res = f_write(&fp_d, (const void*)(test), 256, &NumBytesWrite);
	if (res)
	{
		xil_printf("File Write ERROR.\r\n");
		return XST_FAILURE;
	}

	for(i = 0; i < 54; i++)
	{
		xil_printf("%d ", header[i]);

		if(i % 10 == 0)
			xil_printf("\r\n");
	}

	res = f_close(&fp_d);
	if(res)
	{
		xil_printf("File Close fp_d ERROR.\r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}