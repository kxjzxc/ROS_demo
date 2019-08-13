
"use strict";

let SetHOMEParams = require('./SetHOMEParams.js')
let GetPose = require('./GetPose.js')
let GetEndEffectorSuctionCup = require('./GetEndEffectorSuctionCup.js')
let GetColorSensor = require('./GetColorSensor.js')
let SetJOGCmd = require('./SetJOGCmd.js')
let SetIOPWM = require('./SetIOPWM.js')
let SetInfraredSensor = require('./SetInfraredSensor.js')
let GetIOADC = require('./GetIOADC.js')
let SetQueuedCmdStopExec = require('./SetQueuedCmdStopExec.js')
let GetEndEffectorGripper = require('./GetEndEffectorGripper.js')
let GetIODI = require('./GetIODI.js')
let SetHHTTrigOutputEnabled = require('./SetHHTTrigOutputEnabled.js')
let SetTRIGCmd = require('./SetTRIGCmd.js')
let GetIODO = require('./GetIODO.js')
let SetJOGJointParams = require('./SetJOGJointParams.js')
let GetHHTTrigOutputEnabled = require('./GetHHTTrigOutputEnabled.js')
let SetCPCmd = require('./SetCPCmd.js')
let SetColorSensor = require('./SetColorSensor.js')
let SetEndEffectorParams = require('./SetEndEffectorParams.js')
let GetHHTTrigOutput = require('./GetHHTTrigOutput.js')
let GetIOPWM = require('./GetIOPWM.js')
let SetPTPCoordinateParams = require('./SetPTPCoordinateParams.js')
let SetPTPJumpParams = require('./SetPTPJumpParams.js')
let SetCmdTimeout = require('./SetCmdTimeout.js')
let SetEMotor = require('./SetEMotor.js')
let SetJOGCoordinateParams = require('./SetJOGCoordinateParams.js')
let SetHOMECmd = require('./SetHOMECmd.js')
let GetDeviceVersion = require('./GetDeviceVersion.js')
let SetARCCmd = require('./SetARCCmd.js')
let SetIODO = require('./SetIODO.js')
let SetCPParams = require('./SetCPParams.js')
let SetIOMultiplexing = require('./SetIOMultiplexing.js')
let GetAlarmsState = require('./GetAlarmsState.js')
let GetIOMultiplexing = require('./GetIOMultiplexing.js')
let GetCPCmd = require('./GetCPCmd.js')
let SetPTPJointParams = require('./SetPTPJointParams.js')
let GetHOMEParams = require('./GetHOMEParams.js')
let SetQueuedCmdForceStopExec = require('./SetQueuedCmdForceStopExec.js')
let GetCPParams = require('./GetCPParams.js')
let SetDeviceName = require('./SetDeviceName.js')
let GetPTPJointParams = require('./GetPTPJointParams.js')
let GetDeviceName = require('./GetDeviceName.js')
let GetPTPCommonParams = require('./GetPTPCommonParams.js')
let SetQueuedCmdStartExec = require('./SetQueuedCmdStartExec.js')
let GetARCParams = require('./GetARCParams.js')
let SetEndEffectorGripper = require('./SetEndEffectorGripper.js')
let SetPTPCmd = require('./SetPTPCmd.js')
let SetWAITCmd = require('./SetWAITCmd.js')
let SetEndEffectorLaser = require('./SetEndEffectorLaser.js')
let SetQueuedCmdClear = require('./SetQueuedCmdClear.js')
let SetPTPCommonParams = require('./SetPTPCommonParams.js')
let GetJOGCommonParams = require('./GetJOGCommonParams.js')
let ClearAllAlarmsState = require('./ClearAllAlarmsState.js')
let GetPTPJumpParams = require('./GetPTPJumpParams.js')
let GetJOGCoordinateParams = require('./GetJOGCoordinateParams.js')
let GetDeviceSN = require('./GetDeviceSN.js')
let GetHHTTrigMode = require('./GetHHTTrigMode.js')
let SetARCParams = require('./SetARCParams.js')
let SetHHTTrigMode = require('./SetHHTTrigMode.js')
let SetJOGCommonParams = require('./SetJOGCommonParams.js')
let GetEndEffectorParams = require('./GetEndEffectorParams.js')
let GetJOGJointParams = require('./GetJOGJointParams.js')
let SetEndEffectorSuctionCup = require('./SetEndEffectorSuctionCup.js')
let GetEndEffectorLaser = require('./GetEndEffectorLaser.js')
let GetPTPCoordinateParams = require('./GetPTPCoordinateParams.js')
let GetInfraredSensor = require('./GetInfraredSensor.js')

module.exports = {
  SetHOMEParams: SetHOMEParams,
  GetPose: GetPose,
  GetEndEffectorSuctionCup: GetEndEffectorSuctionCup,
  GetColorSensor: GetColorSensor,
  SetJOGCmd: SetJOGCmd,
  SetIOPWM: SetIOPWM,
  SetInfraredSensor: SetInfraredSensor,
  GetIOADC: GetIOADC,
  SetQueuedCmdStopExec: SetQueuedCmdStopExec,
  GetEndEffectorGripper: GetEndEffectorGripper,
  GetIODI: GetIODI,
  SetHHTTrigOutputEnabled: SetHHTTrigOutputEnabled,
  SetTRIGCmd: SetTRIGCmd,
  GetIODO: GetIODO,
  SetJOGJointParams: SetJOGJointParams,
  GetHHTTrigOutputEnabled: GetHHTTrigOutputEnabled,
  SetCPCmd: SetCPCmd,
  SetColorSensor: SetColorSensor,
  SetEndEffectorParams: SetEndEffectorParams,
  GetHHTTrigOutput: GetHHTTrigOutput,
  GetIOPWM: GetIOPWM,
  SetPTPCoordinateParams: SetPTPCoordinateParams,
  SetPTPJumpParams: SetPTPJumpParams,
  SetCmdTimeout: SetCmdTimeout,
  SetEMotor: SetEMotor,
  SetJOGCoordinateParams: SetJOGCoordinateParams,
  SetHOMECmd: SetHOMECmd,
  GetDeviceVersion: GetDeviceVersion,
  SetARCCmd: SetARCCmd,
  SetIODO: SetIODO,
  SetCPParams: SetCPParams,
  SetIOMultiplexing: SetIOMultiplexing,
  GetAlarmsState: GetAlarmsState,
  GetIOMultiplexing: GetIOMultiplexing,
  GetCPCmd: GetCPCmd,
  SetPTPJointParams: SetPTPJointParams,
  GetHOMEParams: GetHOMEParams,
  SetQueuedCmdForceStopExec: SetQueuedCmdForceStopExec,
  GetCPParams: GetCPParams,
  SetDeviceName: SetDeviceName,
  GetPTPJointParams: GetPTPJointParams,
  GetDeviceName: GetDeviceName,
  GetPTPCommonParams: GetPTPCommonParams,
  SetQueuedCmdStartExec: SetQueuedCmdStartExec,
  GetARCParams: GetARCParams,
  SetEndEffectorGripper: SetEndEffectorGripper,
  SetPTPCmd: SetPTPCmd,
  SetWAITCmd: SetWAITCmd,
  SetEndEffectorLaser: SetEndEffectorLaser,
  SetQueuedCmdClear: SetQueuedCmdClear,
  SetPTPCommonParams: SetPTPCommonParams,
  GetJOGCommonParams: GetJOGCommonParams,
  ClearAllAlarmsState: ClearAllAlarmsState,
  GetPTPJumpParams: GetPTPJumpParams,
  GetJOGCoordinateParams: GetJOGCoordinateParams,
  GetDeviceSN: GetDeviceSN,
  GetHHTTrigMode: GetHHTTrigMode,
  SetARCParams: SetARCParams,
  SetHHTTrigMode: SetHHTTrigMode,
  SetJOGCommonParams: SetJOGCommonParams,
  GetEndEffectorParams: GetEndEffectorParams,
  GetJOGJointParams: GetJOGJointParams,
  SetEndEffectorSuctionCup: SetEndEffectorSuctionCup,
  GetEndEffectorLaser: GetEndEffectorLaser,
  GetPTPCoordinateParams: GetPTPCoordinateParams,
  GetInfraredSensor: GetInfraredSensor,
};
