/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Encoder_reader_simulink.c
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

#include "Encoder_reader_simulink.h"
#include "Encoder_reader_simulink_types.h"
#include "rtwtypes.h"
#include "stm_timer_ll.h"
#include "Encoder_reader_simulink_private.h"

/* Block signals (default storage) */
B_Encoder_reader_simulink_T Encoder_reader_simulink_B;

/* Block states (default storage) */
DW_Encoder_reader_simulink_T Encoder_reader_simulink_DW;

/* Real-time model */
static RT_MODEL_Encoder_reader_simul_T Encoder_reader_simulink_M_;
RT_MODEL_Encoder_reader_simul_T *const Encoder_reader_simulink_M =
  &Encoder_reader_simulink_M_;

/* Forward declaration for local functions */
static void Encoder_reader_SystemCore_setup(stm32cube_blocks_EncoderBlock_T *obj);
static void Encoder_reader_SystemCore_setup(stm32cube_blocks_EncoderBlock_T *obj)
{
  uint8_T ChannelInfo;
  TIM_Type_T b;
  boolean_T isSlaveModeTriggerEnabled;

  /* Start for MATLABSystem: '<Root>/X4' */
  obj->isInitialized = 1;
  b.PeripheralPtr = TIM3;
  b.isCenterAlignedMode = false;

  /* Start for MATLABSystem: '<Root>/X4' */
  b.repetitionCounter = 0U;
  obj->TimerHandle = Timer_Handle_Init(&b);
  enableTimerInterrupts(obj->TimerHandle, 0);
  ChannelInfo = ENABLE_CH;

  /* Start for MATLABSystem: '<Root>/X4' */
  enableTimerChannel1(obj->TimerHandle, ChannelInfo);
  enableTimerChannel2(obj->TimerHandle, ChannelInfo);
  isSlaveModeTriggerEnabled = isSlaveTriggerModeEnabled(obj->TimerHandle);
  if (!isSlaveModeTriggerEnabled) {
    /* Start for MATLABSystem: '<Root>/X4' */
    enableCounter(obj->TimerHandle, false);
  }

  obj->isSetupComplete = true;
}

/* Model step function */
void Encoder_reader_simulink_step(void)
{
  {
    real_T diff;
    real_T pos_home;
    real_T *lastU;
    uint32_T pinReadLoc;

    /* MATLABSystem: '<S7>/Digital Port Read' */
    pinReadLoc = LL_GPIO_ReadInputPort(GPIOA);

    /* MATLABSystem: '<S7>/Digital Port Read' */
    Encoder_reader_simulink_B.DigitalPortRead_f = ((pinReadLoc & 64U) != 0U);

    /* MATLABSystem: '<Root>/X4' */
    Encoder_reader_simulink_B.X4 = getTimerCounterValueForG4
      (Encoder_reader_simulink_DW.obj_p.TimerHandle, false, NULL);

    /* MATLABSystem: '<S11>/Digital Port Read' */
    pinReadLoc = LL_GPIO_ReadInputPort(GPIOC);

    /* MATLABSystem: '<S11>/Digital Port Read' */
    Encoder_reader_simulink_B.DigitalPortRead = ((pinReadLoc & 8192U) != 0U);

    /* MATLAB Function: '<Root>/HOME' incorporates:
     *  DataTypeConversion: '<Root>/Data Type Conversion1'
     */
    if (Encoder_reader_simulink_B.DigitalPortRead) {
      Encoder_reader_simulink_DW.offset = Encoder_reader_simulink_B.X4;
    }

    pos_home = (real_T)Encoder_reader_simulink_B.X4 -
      Encoder_reader_simulink_DW.offset;

    /* End of MATLAB Function: '<Root>/HOME' */

    /* MATLAB Function: '<Root>/WrapAround' */
    diff = pos_home - Encoder_reader_simulink_DW.old_count;
    if (diff > 30719.5) {
      diff -= 61440.0;
    } else if (diff < -30719.5) {
      diff += 61440.0;
    }

    Encoder_reader_simulink_DW.total_count += diff;
    Encoder_reader_simulink_B.pos_out = Encoder_reader_simulink_DW.total_count;
    Encoder_reader_simulink_DW.old_count = pos_home;

    /* End of MATLAB Function: '<Root>/WrapAround' */

    /* Gain: '<Root>/Relative Position' */
    Encoder_reader_simulink_B.Pulses = 0.25 * Encoder_reader_simulink_B.pos_out;

    /* Derivative: '<Root>/d(Pulses)//dt' */
    pos_home = Encoder_reader_simulink_M->Timing.t[0];
    if ((Encoder_reader_simulink_DW.TimeStampA >= pos_home) &&
        (Encoder_reader_simulink_DW.TimeStampB >= pos_home)) {
      pos_home = 0.0;
    } else {
      diff = Encoder_reader_simulink_DW.TimeStampA;
      lastU = &Encoder_reader_simulink_DW.LastUAtTimeA;
      if (Encoder_reader_simulink_DW.TimeStampA <
          Encoder_reader_simulink_DW.TimeStampB) {
        if (Encoder_reader_simulink_DW.TimeStampB < pos_home) {
          diff = Encoder_reader_simulink_DW.TimeStampB;
          lastU = &Encoder_reader_simulink_DW.LastUAtTimeB;
        }
      } else if (Encoder_reader_simulink_DW.TimeStampA >= pos_home) {
        diff = Encoder_reader_simulink_DW.TimeStampB;
        lastU = &Encoder_reader_simulink_DW.LastUAtTimeB;
      }

      pos_home = (Encoder_reader_simulink_B.Pulses - *lastU) / (pos_home - diff);
    }

    /* End of Derivative: '<Root>/d(Pulses)//dt' */

    /* Gain: '<Root>/res_theta' */
    Encoder_reader_simulink_B.rads = 0.26179938779914941 * pos_home;

    /* Gain: '<Root>/Relative Position1' */
    Encoder_reader_simulink_B.u4rads = 0.1 * Encoder_reader_simulink_B.rads;

    /* Sum: '<Root>/Sum1' incorporates:
     *  Constant: '<Root>/Constant1'
     */
    Encoder_reader_simulink_B.v_out = Encoder_reader_simulink_B.u4rads + 5.0;

    /* Gain: '<Root>/Angular Position' */
    Encoder_reader_simulink_B.Radians = 0.26179938779914941 *
      Encoder_reader_simulink_B.Pulses;

    /* Gain: '<Root>/Degree' */
    Encoder_reader_simulink_B.Degree = 15.0 * Encoder_reader_simulink_B.Pulses;

    /* MATLABSystem: '<S9>/Digital Port Read' */
    pinReadLoc = LL_GPIO_ReadInputPort(GPIOA);

    /* Sum: '<Root>/Sum' incorporates:
     *  MATLABSystem: '<S9>/Digital Port Read'
     * */
    Encoder_reader_simulink_B.B = (real_T)((pinReadLoc & 16U) != 0U) - 1.5;
  }

  {
    real_T *lastU;

    /* Update for Derivative: '<Root>/d(Pulses)//dt' */
    if (Encoder_reader_simulink_DW.TimeStampA == (rtInf)) {
      Encoder_reader_simulink_DW.TimeStampA =
        Encoder_reader_simulink_M->Timing.t[0];
      lastU = &Encoder_reader_simulink_DW.LastUAtTimeA;
    } else if (Encoder_reader_simulink_DW.TimeStampB == (rtInf)) {
      Encoder_reader_simulink_DW.TimeStampB =
        Encoder_reader_simulink_M->Timing.t[0];
      lastU = &Encoder_reader_simulink_DW.LastUAtTimeB;
    } else if (Encoder_reader_simulink_DW.TimeStampA <
               Encoder_reader_simulink_DW.TimeStampB) {
      Encoder_reader_simulink_DW.TimeStampA =
        Encoder_reader_simulink_M->Timing.t[0];
      lastU = &Encoder_reader_simulink_DW.LastUAtTimeA;
    } else {
      Encoder_reader_simulink_DW.TimeStampB =
        Encoder_reader_simulink_M->Timing.t[0];
      lastU = &Encoder_reader_simulink_DW.LastUAtTimeB;
    }

    *lastU = Encoder_reader_simulink_B.Pulses;

    /* End of Update for Derivative: '<Root>/d(Pulses)//dt' */
  }

  {                                    /* Sample time: [0.1s, 0.0s] */
    extmodeErrorCode_T errorCode = EXTMODE_SUCCESS;
    extmodeSimulationTime_T extmodeTime = (extmodeSimulationTime_T)
      ((Encoder_reader_simulink_M->Timing.clockTick1) * 0.1);

    /* Trigger External Mode event */
    errorCode = extmodeEvent(1, extmodeTime);
    if (errorCode != EXTMODE_SUCCESS) {
      /* Code to handle External Mode event errors
         may be added here */
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   */
  Encoder_reader_simulink_M->Timing.t[0] =
    ((time_T)(++Encoder_reader_simulink_M->Timing.clockTick0)) *
    Encoder_reader_simulink_M->Timing.stepSize0;

  {
    /* Update absolute timer for sample time: [0.1s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.1, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     */
    Encoder_reader_simulink_M->Timing.clockTick1++;
  }
}

/* Model initialize function */
void Encoder_reader_simulink_initialize(void)
{
  /* Registration code */
  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&Encoder_reader_simulink_M->solverInfo,
                          &Encoder_reader_simulink_M->Timing.simTimeStep);
    rtsiSetTPtr(&Encoder_reader_simulink_M->solverInfo, &rtmGetTPtr
                (Encoder_reader_simulink_M));
    rtsiSetStepSizePtr(&Encoder_reader_simulink_M->solverInfo,
                       &Encoder_reader_simulink_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&Encoder_reader_simulink_M->solverInfo,
                          (&rtmGetErrorStatus(Encoder_reader_simulink_M)));
    rtsiSetRTModelPtr(&Encoder_reader_simulink_M->solverInfo,
                      Encoder_reader_simulink_M);
  }

  rtsiSetSimTimeStep(&Encoder_reader_simulink_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetIsMinorTimeStepWithModeChange(&Encoder_reader_simulink_M->solverInfo,
    false);
  rtsiSetIsContModeFrozen(&Encoder_reader_simulink_M->solverInfo, false);
  rtsiSetSolverName(&Encoder_reader_simulink_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(Encoder_reader_simulink_M,
             &Encoder_reader_simulink_M->Timing.tArray[0]);
  rtmSetTFinal(Encoder_reader_simulink_M, -1);
  Encoder_reader_simulink_M->Timing.stepSize0 = 0.1;

  /* External mode info */
  Encoder_reader_simulink_M->Sizes.checksums[0] = (3579278664U);
  Encoder_reader_simulink_M->Sizes.checksums[1] = (1342873288U);
  Encoder_reader_simulink_M->Sizes.checksums[2] = (2369379389U);
  Encoder_reader_simulink_M->Sizes.checksums[3] = (869685154U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[7];
    Encoder_reader_simulink_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    systemRan[6] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(Encoder_reader_simulink_M->extModeInfo,
      &Encoder_reader_simulink_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(Encoder_reader_simulink_M->extModeInfo,
                        Encoder_reader_simulink_M->Sizes.checksums);
    rteiSetTPtr(Encoder_reader_simulink_M->extModeInfo, rtmGetTPtr
                (Encoder_reader_simulink_M));
  }

  /* InitializeConditions for Derivative: '<Root>/d(Pulses)//dt' */
  Encoder_reader_simulink_DW.TimeStampA = (rtInf);
  Encoder_reader_simulink_DW.TimeStampB = (rtInf);

  /* Start for MATLABSystem: '<S7>/Digital Port Read' */
  Encoder_reader_simulink_DW.obj_e.matlabCodegenIsDeleted = false;
  Encoder_reader_simulink_DW.obj_e.isInitialized = 1;
  Encoder_reader_simulink_DW.obj_e.isSetupComplete = true;

  /* Start for MATLABSystem: '<Root>/X4' */
  Encoder_reader_simulink_DW.obj_p.isInitialized = 0;
  Encoder_reader_simulink_DW.obj_p.matlabCodegenIsDeleted = false;
  Encoder_reader_SystemCore_setup(&Encoder_reader_simulink_DW.obj_p);

  /* Start for MATLABSystem: '<S11>/Digital Port Read' */
  Encoder_reader_simulink_DW.obj.matlabCodegenIsDeleted = false;
  Encoder_reader_simulink_DW.obj.isInitialized = 1;
  Encoder_reader_simulink_DW.obj.isSetupComplete = true;

  /* Start for MATLABSystem: '<S9>/Digital Port Read' */
  Encoder_reader_simulink_DW.obj_h.matlabCodegenIsDeleted = false;
  Encoder_reader_simulink_DW.obj_h.isInitialized = 1;
  Encoder_reader_simulink_DW.obj_h.isSetupComplete = true;
}

/* Model terminate function */
void Encoder_reader_simulink_terminate(void)
{
  uint8_T ChannelInfo;

  /* Terminate for MATLABSystem: '<S7>/Digital Port Read' */
  if (!Encoder_reader_simulink_DW.obj_e.matlabCodegenIsDeleted) {
    Encoder_reader_simulink_DW.obj_e.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S7>/Digital Port Read' */
  /* Terminate for MATLABSystem: '<Root>/X4' */
  if (!Encoder_reader_simulink_DW.obj_p.matlabCodegenIsDeleted) {
    Encoder_reader_simulink_DW.obj_p.matlabCodegenIsDeleted = true;
    if ((Encoder_reader_simulink_DW.obj_p.isInitialized == 1) &&
        Encoder_reader_simulink_DW.obj_p.isSetupComplete) {
      disableCounter(Encoder_reader_simulink_DW.obj_p.TimerHandle);
      disableTimerInterrupts(Encoder_reader_simulink_DW.obj_p.TimerHandle, 0);
      ChannelInfo = ENABLE_CH;
      disableTimerChannel1(Encoder_reader_simulink_DW.obj_p.TimerHandle,
                           ChannelInfo);
      disableTimerChannel2(Encoder_reader_simulink_DW.obj_p.TimerHandle,
                           ChannelInfo);
    }
  }

  /* End of Terminate for MATLABSystem: '<Root>/X4' */

  /* Terminate for MATLABSystem: '<S11>/Digital Port Read' */
  if (!Encoder_reader_simulink_DW.obj.matlabCodegenIsDeleted) {
    Encoder_reader_simulink_DW.obj.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S11>/Digital Port Read' */
  /* Terminate for MATLABSystem: '<S9>/Digital Port Read' */
  if (!Encoder_reader_simulink_DW.obj_h.matlabCodegenIsDeleted) {
    Encoder_reader_simulink_DW.obj_h.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S9>/Digital Port Read' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
