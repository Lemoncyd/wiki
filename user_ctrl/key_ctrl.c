#include "gpio.h"
#include "key_ctrl.h"
void key_check(key_eve_t * key_eve)
{
	if(0 == key_eve->gpio_cfig)//GPIO��ʼ��
	{
		hal_gpio_pull_set(key_eve->gpio_key, GPIO_PULL_UP);
		hal_gpioin_register(key_eve->gpio_key, key_eve->key_handler_two, key_eve->key_handler_one);
		key_eve->key_cfg = 1;
		key_eve->gpio_cfig = 1;
		//dbg_printf("gpio_cfg\r\n");
	}
	key_eve->old_key = key_eve->new_key;
	if(0 == hal_gpio_read(key_eve->gpio_key))
	{
		key_eve->new_key = 1;//
		if(key_eve->cnt_key <= key_eve->set_time)
		{
			key_eve->cnt_key++;//
		}
	}
	else
	{
		//key_eve->key_cfg = 1;
		key_eve->new_key = 0;//
	}
	
	if((1 == key_eve->new_key) && (key_eve->new_key == key_eve->old_key))
	{
		//key_eve->key_press = 1;//���水��
		if((0 == key_eve->key_flag) && (0 == key_eve->keystrokes))
		{
			if((key_eve->cnt_key > 15) && (key_eve->cnt_key < key_eve->set_time))
			{
				key_eve->key_press = 1;
			}
			else if(key_eve->cnt_key == key_eve->set_time)//�ж�
			{
				key_eve->long_key = 1; //��������
				key_eve->key_press = 0;
				//dbg_printf("��������\r\n");
			}
		}
	}
	else if((0 == key_eve->new_key) && (key_eve->new_key != key_eve->old_key)
									&& (key_eve->cnt_key < key_eve->set_time))
	{
		if(key_eve->cnt_key > 3)
		{
			if(0 == key_eve->key_flag)
			{
				if(key_eve->cnt_key <= 15)
				{
					key_eve->short_key = 0;//����̰���־λ
					key_eve->keystrokes++; //��¼�����������
					//dbg_printf("key_eve->keystrokes = %d\r\n",key_eve->keystrokes);
				}
				else //if(key_eve->key_press == 1)//�̰�����ʱ��С��2��(����������ʱ��) ����150����
				{
					key_eve->short_key = 1;//���ö̰���־λ
					key_eve->keystrokes = 0;//��������������
					//dbg_printf("�̰�����\r\n");
				}
			}
			key_eve->key_press = 0;
		}
	}
	else
	{
		key_eve->cnt_key = 0;
		key_eve->key_press = 0;
		key_eve->key_flag = 0;
		//dbg_printf("û�а�������\r\n");
	}
	#if 1
	static uint8_t key_press_time[2];
	if(key_eve->keystrokes)
	{
		key_press_time[0]++;
		if(key_press_time[0] < key_eve->double_time)//25//�ĳ�3ȥ��˫��
		{
			//dbg_printf("key_user[0].keystrokes. = %d\r\n", key_user[0].keystrokes);
			if(0 == hal_gpio_read(key_eve->gpio_key))
			{
				key_press_time[0] = 0;
				if(1 == key_eve->keystrokes)
				{
					key_eve->keystrokes = 0;
					key_eve->key_flag = 1;
					key_eve->double_key = 1;
					//dbg_printf("˫��\r\n");	
				}
			}
		}
		else
		{
			key_press_time[0] = 0;
			key_eve->keystrokes = 0;
			if(0 == key_eve->long_key) //&& key_eve->key_press == 0)//�̰�����ʱ��С��150���� ����0����
			{
				key_eve->short_key = 1;
				//key_eve->key_cfg = 1;
				//dbg_printf("�̰�ʱ��С��150\r\n");
			}
		}
	}
	#endif
}

void key_check_2(key_eve_t * key_eve)
{
	if(0 == key_eve->gpio_cfig)//GPIO��ʼ��
	{
		hal_gpio_pull_set(key_eve->gpio_key, GPIO_PULL_UP);
		hal_gpioin_register(key_eve->gpio_key, key_eve->key_handler_two, key_eve->key_handler_one);
		key_eve->key_cfg = 1;
		key_eve->gpio_cfig = 1;
		//dbg_printf("gpio_cfg\r\n");
	}
	key_eve->old_key = key_eve->new_key;
	if(key_eve->key_effect == hal_gpio_read(key_eve->gpio_key))
	{
		key_eve->new_key = 1;//
		//if(key_eve->cnt_key <= key_eve->set_time)
		{
			key_eve->cnt_key++;//
		}
	}
	else
	{
		//key_eve->key_cfg = 1;
		key_eve->new_key = 0;//
	}
	
	if((1 == key_eve->new_key) && (key_eve->new_key == key_eve->old_key))
	{
		//key_eve->key_press = 1;//���水��
		if((0 == key_eve->key_flag) && (0 == key_eve->keystrokes))
		{
			if((key_eve->cnt_key > 15) && (key_eve->cnt_key < key_eve->set_time))
			{
				key_eve->key_press = 1;
			}
			else if(key_eve->cnt_key == key_eve->set_time)//�ж�
			{
				key_eve->long_key = 1; //��������
				key_eve->key_press = 0;
				//dbg_printf("��������\r\n");
			}
		}
	}
	else if((0 == key_eve->new_key) && (key_eve->new_key != key_eve->old_key)
									&& (key_eve->cnt_key < key_eve->set_time))
	{
		if(key_eve->cnt_key > 3)
		{
			if(0 == key_eve->key_flag)
			{
				if(key_eve->cnt_key <= 15)
				{
					key_eve->short_key = 0;//����̰���־λ
					key_eve->keystrokes++; //��¼�����������
					//dbg_printf("key_eve->keystrokes = %d\r\n",key_eve->keystrokes);
				}
				else //if(key_eve->key_press == 1)//�̰�����ʱ��С��2��(����������ʱ��) ����150����
				{
					key_eve->short_key = 1;//���ö̰���־λ
					key_eve->keystrokes = 0;//��������������
					//dbg_printf("�̰�����\r\n");
				}
			}
			key_eve->key_press = 0;
		}
	}
	else
	{
		key_eve->cnt_key = 0;
		key_eve->key_press = 0;
		key_eve->key_flag = 0;
		//dbg_printf("û�а�������\r\n");
	}
	#if 1
	static uint8_t key_press_time[2];
	if(key_eve->keystrokes)
	{
		key_press_time[0]++;
		if(key_press_time[0] < key_eve->double_time)//25//�ĳ�3ȥ��˫��
		{
			//dbg_printf("key_user[0].keystrokes. = %d\r\n", key_user[0].keystrokes);
			if(key_eve->key_effect == hal_gpio_read(key_eve->gpio_key))
			{
				key_press_time[0] = 0;
				if(1 == key_eve->keystrokes)
				{
					key_eve->keystrokes = 0;
					key_eve->key_flag = 1;
					key_eve->double_key = 1;
					//dbg_printf("˫��\r\n");	
				}
			}
		}
		else
		{
			key_press_time[0] = 0;
			key_eve->keystrokes = 0;
			if(0 == key_eve->long_key) //&& key_eve->key_press == 0)//�̰�����ʱ��С��150���� ����0����
			{
				key_eve->short_key = 1;
				//key_eve->key_cfg = 1;
				//dbg_printf("�̰�ʱ��С��150\r\n");
			}
		}
	}
	#endif
}


