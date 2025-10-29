/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Encoder_reader_simulink_types.h
 *
 * Code generated for Simulink model 'Encoder_reader_simulink'.
 *
 * Model version                  : 2.12
 * Simulink Coder version         : 25.1 (R2025a) 21-Nov-2024
 * C/C++ source code generated on : Mon Oct 27 15:46:40 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex-M
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef Encoder_reader_simulink_types_h_
#define Encoder_reader_simulink_types_h_
#include "rtwtypes.h"
#include "stm_timer_ll.h"
#ifndef struct_tag_oqTgs9IQV1qnhaQ2GI62yC
#define struct_tag_oqTgs9IQV1qnhaQ2GI62yC

struct tag_oqTgs9IQV1qnhaQ2GI62yC
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
};

#endif                                 /* struct_tag_oqTgs9IQV1qnhaQ2GI62yC */

#ifndef typedef_stm32cube_blocks_DigitalPortR_T
#define typedef_stm32cube_blocks_DigitalPortR_T

typedef struct tag_oqTgs9IQV1qnhaQ2GI62yC stm32cube_blocks_DigitalPortR_T;

#endif                             /* typedef_stm32cube_blocks_DigitalPortR_T */

/* Custom Type definition for MATLABSystem: '<Root>/X4' */
#include "stm_timer_ll.h"
#include "stm_timer_ll.h"
#ifndef struct_tag_qYaJQJIsmU5kxDdgK7jtpE
#define struct_tag_qYaJQJIsmU5kxDdgK7jtpE

struct tag_qYaJQJIsmU5kxDdgK7jtpE
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  TIM_Type_T* TimerHandle;
};

#endif                                 /* struct_tag_qYaJQJIsmU5kxDdgK7jtpE */

#ifndef typedef_stm32cube_blocks_EncoderBlock_T
#define typedef_stm32cube_blocks_EncoderBlock_T

typedef struct tag_qYaJQJIsmU5kxDdgK7jtpE stm32cube_blocks_EncoderBlock_T;

#endif                             /* typedef_stm32cube_blocks_EncoderBlock_T */

/* Forward declaration for rtModel */
typedef struct tag_RTM_Encoder_reader_simuli_T RT_MODEL_Encoder_reader_simul_T;

#endif                                 /* Encoder_reader_simulink_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
