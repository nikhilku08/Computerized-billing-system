/* ***************************************
 * main.cpp
 *****************************************/

#include <iostream>

#include "classDraw.h"
#include "classGetchoice.h"
#include "classProduct.h"
#include "classConn.h"
#include "classBill.h"
#include "classGetchar.h"
#include "classCustomer.h"

using std::endl;
using std::cin;
using std::cout;

int main()
{
    classGetchoice  *get = new classGetchoice;
    classProduct *prd = new classProduct;
    classDraw *draw  = new classDraw;
    classBill *bill = new classBill;
    classGetchar *getc = new classGetchar;
    classCustomer *customer = new classCustomer;

    MYSQL *mysql;
    mysql = classConn::connection();

    int choice = 0;

    classConn * conn = new classConn;
    do
    {
        draw->clrscr();
        draw->drawRect();

        choice = get->getChoice(conn->menu);
        switch(choice)
        {
        case 1:
            prd->showAllProduct();
            break;
        case 2:
            prd->displayProduct();
            break;
        case 3:
            prd->productEnter();
            break;
        case 4:
            prd->displayProduct("PRODUCT DISPLAY");
            break;
        case 5:
            bill->billing();
            break;
        case 6:
            bill->todaySales();
            break;
        case 7:
			prd->productModify();
            break;
        case 8:
            customer->modifyCustomerRecord();
            break;
        case 9:
            customer->showCustomer();
            break;
        case 10:
            bill->modifyBill();
            break;
        case 11:
            bill->viewBill();
            break;
        case 12:
            bill->delEntry();
            break;
        case 13:
            draw->clrscr();
            exit(0);
            break;
        }

    }while(choice != 13);

    mysql_close(mysql);
    mysql_library_end();
    delete get;
    delete prd;
    delete draw;
    delete bill;
    delete getc;
    delete customer;
}
