/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Encoder_reader_simulink.h
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

#ifndef Encoder_reader_simulink_h_
#define Encoder_reader_simulink_h_
#ifndef Encoder_reader_simulink_COMMON_INCLUDES_
#define Encoder_reader_simulink_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "ext_mode.h"
#include "main.h"
#include "mw_stm32_utils.h"
#endif                            /* Encoder_reader_simulink_COMMON_INCLUDES_ */

#include "Encoder_reader_simulink_types.h"
#include "rtGetInf.h"
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWExtModeInfo
#define rtmGetRTWExtModeInfo(rtm)      ((rtm)->extModeInfo)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                ((rtm)->Timing.t)
#endif

/* Block signals (default storage) */
typedef struct {
  real_T Pulses;                       /* '<Root>/Relative Position' */
  real_T rads;                         /* '<Root>/res_theta' */
  real_T u4rads;                       /* '<Root>/Relative Position1' */
  real_T v_out;                        /* '<Root>/Sum1' */
  real_T Radians;                      /* '<Root>/Angular Position' */
  real_T Degree;                       /* '<Root>/Degree' */
  real_T B;                            /* '<Root>/Sum' */
  real_T pos_out;                      /* '<Root>/WrapAround' */
  uint32_T X4;                         /* '<Root>/X4' */
  boolean_T DigitalPortRead;           /* '<S11>/Digital Port Read' */
  boolean_T DigitalPortRead_f;         /* '<S7>/Digital Port Read' */
} B_Encoder_reader_simulink_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  stm32cube_blocks_DigitalPortR_T obj; /* '<S11>/Digital Port Read' */
  stm32cube_blocks_DigitalPortR_T obj_h;/* '<S9>/Digital Port Read' */
  stm32cube_blocks_DigitalPortR_T obj_e;/* '<S7>/Digital Port Read' */
  stm32cube_blocks_EncoderBlock_T obj_p;/* '<Root>/X4' */
  real_T TimeStampA;                   /* '<Root>/d(Pulses)//dt' */
  real_T LastUAtTimeA;                 /* '<Root>/d(Pulses)//dt' */
  real_T TimeStampB;                   /* '<Root>/d(Pulses)//dt' */
  real_T LastUAtTimeB;                 /* '<Root>/d(Pulses)//dt' */
  real_T old_count;                    /* '<Root>/WrapAround' */
  real_T total_count;                  /* '<Root>/WrapAround' */
  real_T offset;                       /* '<Root>/HOME' */
  boolean_T doneDoubleBufferReInit;    /* '<Root>/WrapAround' */
  boolean_T doneDoubleBufferReInit_m;  /* '<Root>/HOME' */
} DW_Encoder_reader_simulink_T;

/* Real-time Model Data Structure */
struct tag_RTM_Encoder_reader_simuli_T {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    time_T stepSize0;
    uint32_T clockTick1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block signals (default storage) */
extern B_Encoder_reader_simulink_T Encoder_reader_simulink_B;

/* Block states (default storage) */
extern DW_Encoder_reader_simulink_T Encoder_reader_simulink_DW;

/* Model entry point functions */
extern void Encoder_reader_simulink_initialize(void);
extern void Encoder_reader_simulink_step(void);
extern void Encoder_reader_simulink_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Encoder_reader_simul_T *const Encoder_reader_simulink_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Relay' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Encoder_reader_simulink'
 * '<S1>'   : 'Encoder_reader_simulink/A'
 * '<S2>'   : 'Encoder_reader_simulink/B'
 * '<S3>'   : 'Encoder_reader_simulink/HOME'
 * '<S4>'   : 'Encoder_reader_simulink/HOME X4'
 * '<S5>'   : 'Encoder_reader_simulink/WrapAround'
 * '<S6>'   : 'Encoder_reader_simulink/A/ECSoC'
 * '<S7>'   : 'Encoder_reader_simulink/A/ECSoC/ECSimCodegen'
 * '<S8>'   : 'Encoder_reader_simulink/B/ECSoC'
 * '<S9>'   : 'Encoder_reader_simulink/B/ECSoC/ECSimCodegen'
 * '<S10>'  : 'Encoder_reader_simulink/HOME X4/ECSoC'
 * '<S11>'  : 'Encoder_reader_simulink/HOME X4/ECSoC/ECSimCodegen'
 */
#endif                                 /* Encoder_reader_simulink_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
