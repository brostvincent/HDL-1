// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "ximage_filter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XImage_filter_CfgInitialize(XImage_filter *InstancePtr, XImage_filter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif


XImage_filter setup_ximage_filter(uint input_address) //returns a pointer in userspace to the device
{
    void *mapped_base_reserved_mem;
    int memfd_reserved_mem;
    void *mapped_dev_base;
    off_t dev_base = input_address;

    memfd_reserved_mem = open("/dev/mem", O_RDWR | O_SYNC); //to open this the program needs to be run as root
        if (memfd_reserved_mem == -1) {
        printf("Can't open /dev/mem.\n");
        exit(0);
    }
    //printf("/dev/mem opened.\n"); 

    // Map one page of memory into user space such that the device is in that page, but it may not
    // be at the start of the page.

    mapped_base_reserved_mem = mmap(0, MAP_SIZE_HLS, PROT_READ | PROT_WRITE, MAP_SHARED, memfd_reserved_mem, dev_base & ~MAP_MASK_HLS);
        if (mapped_base_reserved_mem == (void *) -1) {
        printf("Can't map the memory to user space.\n");
        exit(0);
    }
     //printf("Memory mapped at address %p.\n", mapped_base_reserved_mem); 

    // get the address of the device in user space which will be an offset from the base 
    // that was mapped as memory is mapped at the start of a page 

    mapped_dev_base = mapped_base_reserved_mem + (dev_base & MAP_MASK_HLS);
    XImage_filter device;
    device.Control_bus_BaseAddress = mapped_dev_base;
    
    device.IsReady = XIL_COMPONENT_IS_READY;
    close(memfd_reserved_mem);
    return device;
}


void XImage_filter_Start(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XImage_filter_IsDone(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XImage_filter_IsIdle(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XImage_filter_IsReady(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XImage_filter_EnableAutoRestart(XImage_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XImage_filter_DisableAutoRestart(XImage_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XImage_filter_SetRows(XImage_filter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XImage_filter_GetRows(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XImage_filter_SetCols(XImage_filter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XImage_filter_GetCols(XImage_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XImage_filter_InterruptGlobalEnable(XImage_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_GIE, 1);
}

void XImage_filter_InterruptGlobalDisable(XImage_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_GIE, 0);
}

void XImage_filter_InterruptEnable(XImage_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_IER);
    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XImage_filter_InterruptDisable(XImage_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_IER);
    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XImage_filter_InterruptClear(XImage_filter *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_filter_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XImage_filter_InterruptGetEnabled(XImage_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_IER);
}

u32 XImage_filter_InterruptGetStatus(XImage_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_filter_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_FILTER_CONTROL_BUS_ADDR_ISR);
}
