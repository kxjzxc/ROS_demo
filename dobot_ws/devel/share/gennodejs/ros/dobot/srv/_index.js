
"use strict";

let SetQueuedCmdStopExec = require('./SetQueuedCmdStopExec.js')
let GetEndEffectorSuctionCup = require('./GetEndEffectorSuctionCup.js')
let GetHOMEParams = require('./GetHOMEParams.js')
let GetAlarmsState = require('./GetAlarmsState.js')
let GetIOADC = require('./GetIOADC.js')
let GetIOPWM = require('./GetIOPWM.js')
let GetPose = require('./GetPose.js')
let SetCmdTimeout = require('./SetCmdTimeout.js')
let GetHHTTrigOutput = require('./GetHHTTrigOutput.js')
let SetEMotor = require('./SetEMotor.js')
let GetDeviceVersion = require('./GetDeviceVersion.js')
let SetQueuedCmdStartExec = require('./SetQueuedCmdStartExec.js')
let SetJOGCmd = require('./SetJOGCmd.js')
let SetEndEffectorParams = require('./SetEndEffectorParams.js')
let SetCPCmd = require('./SetCPCmd.js')
let GetPTPCommonParams = require('./GetPTPCommonParams.js')
let GetEndEffectorParams = require('./GetEndEffectorParams.js')
let SetQueuedCmdForceStopExec = require('./SetQueuedCmdForceStopExec.js')
let ClearAllAlarmsState = require('./ClearAllAlarmsState.js')
let SetInfraredSensor = require('./SetInfraredSensor.js')
let SetIOPWM = require('./SetIOPWM.js')
let SetTRIGCmd = require('./SetTRIGCmd.js')
let GetJOGJointParams = require('./GetJOGJointParams.js')
let SetPTPJumpParams = require('./SetPTPJumpParams.js')
let SetHOMEParams = require('./SetHOMEParams.js')
let SetARCParams = require('./SetARCParams.js')
let SetEndEffectorLaser = require('./SetEndEffectorLaser.js')
let SetPTPCommonParams = require('./SetPTPCommonParams.js')
let SetPTPCoordinateParams = require('./SetPTPCoordinateParams.js')
let GetPTPJointParams = require('./GetPTPJointParams.js')
let SetJOGCommonParams = require('./SetJOGCommonParams.js')
let GetCPCmd = require('./GetCPCmd.js')
let GetIODI = require('./GetIODI.js')
let GetCPParams = require('./GetCPParams.js')
let GetEndEffectorLaser = require('./GetEndEffectorLaser.js')
let GetDeviceSN = require('./GetDeviceSN.js')
let SetHHTTrigMode = require('./SetHHTTrigMode.js')
let SetEndEffectorSuctionCup = require('./SetEndEffectorSuctionCup.js')
let SetIODO = require('./SetIODO.js')
let GetIOMultiplexing = require('./GetIOMultiplexing.js')
let GetPTPCoordinateParams = require('./GetPTPCoordinateParams.js')
let SetARCCmd = require('./SetARCCmd.js')
let GetInfraredSensor = require('./GetInfraredSensor.js')
let SetHOMECmd = require('./SetHOMECmd.js')
let SetHHTTrigOutputEnabled = require('./SetHHTTrigOutputEnabled.js')
let GetEndEffectorGripper = require('./GetEndEffectorGripper.js')
let GetColorSensor = require('./GetColorSensor.js')
let SetColorSensor = require('./SetColorSensor.js')
let GetARCParams = require('./GetARCParams.js')
let GetIODO = require('./GetIODO.js')
let GetHHTTrigMode = require('./GetHHTTrigMode.js')
let SetIOMultiplexing = require('./SetIOMultiplexing.js')
let GetHHTTrigOutputEnabled = require('./GetHHTTrigOutputEnabled.js')
let SetQueuedCmdClear = require('./SetQueuedCmdClear.js')
let SetJOGCoordinateParams = require('./SetJOGCoordinateParams.js')
let SetJOGJointParams = require('./SetJOGJointParams.js')
let SetCPParams = require('./SetCPParams.js')
let SetWAITCmd = require('./SetWAITCmd.js')
let SetEndEffectorGripper = require('./SetEndEffectorGripper.js')
let SetPTPCmd = require('./SetPTPCmd.js')
let SetDeviceName = require('./SetDeviceName.js')
let GetPTPJumpParams = require('./GetPTPJumpParams.js')
let GetJOGCommonParams = require('./GetJOGCommonParams.js')
let SetPTPJointParams = require('./SetPTPJointParams.js')
let GetJOGCoordinateParams = require('./GetJOGCoordinateParams.js')
let GetDeviceName = require('./GetDeviceName.js')

module.exports = {
  SetQueuedCmdStopExec: SetQueuedCmdStopExec,
  GetEndEffectorSuctionCup: GetEndEffectorSuctionCup,
  GetHOMEParams: GetHOMEParams,
  GetAlarmsState: GetAlarmsState,
  GetIOADC: GetIOADC,
  GetIOPWM: GetIOPWM,
  GetPose: GetPose,
  SetCmdTimeout: SetCmdTimeout,
  GetHHTTrigOutput: GetHHTTrigOutput,
  SetEMotor: SetEMotor,
  GetDeviceVersion: GetDeviceVersion,
  SetQueuedCmdStartExec: SetQueuedCmdStartExec,
  SetJOGCmd: SetJOGCmd,
  SetEndEffectorParams: SetEndEffectorParams,
  SetCPCmd: SetCPCmd,
  GetPTPCommonParams: GetPTPCommonParams,
  GetEndEffectorParams: GetEndEffectorParams,
  SetQueuedCmdForceStopExec: SetQueuedCmdForceStopExec,
  ClearAllAlarmsState: ClearAllAlarmsState,
  SetInfraredSensor: SetInfraredSensor,
  SetIOPWM: SetIOPWM,
  SetTRIGCmd: SetTRIGCmd,
  GetJOGJointParams: GetJOGJointParams,
  SetPTPJumpParams: SetPTPJumpParams,
  SetHOMEParams: SetHOMEParams,
  SetARCParams: SetARCParams,
  SetEndEffectorLaser: SetEndEffectorLaser,
  SetPTPCommonParams: SetPTPCommonParams,
  SetPTPCoordinateParams: SetPTPCoordinateParams,
  GetPTPJointParams: GetPTPJointParams,
  SetJOGCommonParams: SetJOGCommonParams,
  GetCPCmd: GetCPCmd,
  GetIODI: GetIODI,
  GetCPParams: GetCPParams,
  GetEndEffectorLaser: GetEndEffectorLaser,
  GetDeviceSN: GetDeviceSN,
  SetHHTTrigMode: SetHHTTrigMode,
  SetEndEffectorSuctionCup: SetEndEffectorSuctionCup,
  SetIODO: SetIODO,
  GetIOMultiplexing: GetIOMultiplexing,
  GetPTPCoordinateParams: GetPTPCoordinateParams,
  SetARCCmd: SetARCCmd,
  GetInfraredSensor: GetInfraredSensor,
  SetHOMECmd: SetHOMECmd,
  SetHHTTrigOutputEnabled: SetHHTTrigOutputEnabled,
  GetEndEffectorGripper: GetEndEffectorGripper,
  GetColorSensor: GetColorSensor,
  SetColorSensor: SetColorSensor,
  GetARCParams: GetARCParams,
  GetIODO: GetIODO,
  GetHHTTrigMode: GetHHTTrigMode,
  SetIOMultiplexing: SetIOMultiplexing,
  GetHHTTrigOutputEnabled: GetHHTTrigOutputEnabled,
  SetQueuedCmdClear: SetQueuedCmdClear,
  SetJOGCoordinateParams: SetJOGCoordinateParams,
  SetJOGJointParams: SetJOGJointParams,
  SetCPParams: SetCPParams,
  SetWAITCmd: SetWAITCmd,
  SetEndEffectorGripper: SetEndEffectorGripper,
  SetPTPCmd: SetPTPCmd,
  SetDeviceName: SetDeviceName,
  GetPTPJumpParams: GetPTPJumpParams,
  GetJOGCommonParams: GetJOGCommonParams,
  SetPTPJointParams: SetPTPJointParams,
  GetJOGCoordinateParams: GetJOGCoordinateParams,
  GetDeviceName: GetDeviceName,
};
