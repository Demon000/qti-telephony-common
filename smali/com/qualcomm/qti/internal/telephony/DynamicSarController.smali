.class public Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.super Landroid/content/ContextWrapper;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;,
        Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;
    }
.end annotation


# static fields
.field private static final ASDIV_PHONE_ID:I = 0x0

.field private static final DEVICE_TYPE_CEPHEUS:Ljava/lang/String; = "cepheus"

.field private static final DEVICE_TYPE_PERSEUS:Ljava/lang/String; = "perseus"

.field private static final DYNAMIC_SAR_LEVEL_BASE:I = 0x0

.field private static final DYNAMIC_SAR_LEVEL_CABLE:I = 0x1

.field private static final DYNAMIC_SAR_LEVEL_SENSOR_2:I = 0x2

.field private static final DYNAMIC_SAR_LEVEL_SENSOR_3:I = 0x3

.field private static final DYNAMIC_SAR_LEVEL_SENSOR_5:I = 0x5

.field private static final DYNAMIC_SAR_LEVEL_SENSOR_6:I = 0x6

.field private static final EVENT_ASDIV_GET_STATUS_DONE:I = 0x4

.field private static final EVENT_ASDIV_QUERY_DONE:I = 0x3

.field private static final EVENT_DYNAMIC_SAR_CABLE:I = 0x2

.field private static final EVENT_DYNAMIC_SAR_SENSOR:I = 0x1

.field private static final EVENT_GET_ASDIV_STATUS:I = 0x5

.field public static final LOG_TAG:Ljava/lang/String; = "DynamicSarController"

.field private static final PROPERTY_DEVICE_NAME:Ljava/lang/String; = "ro.product.device"

.field private static final PROPERTY_DYNAMIC_SAR_CABLE:Ljava/lang/String; = "persist.radio.sar_cable"

.field private static final PROPERTY_DYNAMIC_SAR_HEADHAND_SENSOR:Ljava/lang/String; = "persist.radio.sar_headhand_sensor"

.field private static final PROPERTY_DYNAMIC_SAR_PROXIMITY_SENSOR:Ljava/lang/String; = "persist.radio.sar_proximity_sensor"

.field private static final PROPERTY_DYNAMIC_SAR_SAR_SENSOR:Ljava/lang/String; = "persist.radio.sar_sar_sensor"

.field private static final PROPERTY_DYNAMIC_SAR_SLIDEMODE_SENSOR:Ljava/lang/String; = "persist.radio.sar_slidemode_sensor"

.field private static final PROPERTY_GLOBAL_HW:Ljava/lang/String; = "ro.boot.hwc"

.field private static final PROPERTY_GLOBAL_VER:Ljava/lang/String; = "ro.product.mod_device"

.field private static final PROPERTY_HW_LEVEL:Ljava/lang/String; = "ro.boot.hwlevel"

.field private static final SENSOR_TYPE_HH_SENSOR:I = 0x1fa2647

.field private static final SENSOR_TYPE_SARSENSOR:I = 0x1fa2654

.field private static final SENSOR_TYPE_SLIDEMODE:I = 0x1fa263a

.field private static final SENSOR_TYPE_WIRELESS_CHARGER:I = 0x1fa269b

.field private static mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

.field private static mCurrentSarState:I

.field private static mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private static mQcRilHookReady:Z

.field private static mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;


# instance fields
.field private bCallStateActive:Z

.field private bDataStateActive:Z

.field private mCableSarEnabled:Z

.field private mChargeConnected:Z

.field private mChargeType:I

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mGlobalHW:Z

.field private mGlobalSW:Z

.field private mHHSensorHHMode:Z

.field private mHeadHandSensor:Landroid/hardware/Sensor;

.field private mHeadHandSensorEnabled:Z

.field private mMPProduct:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSarSensor:Landroid/hardware/Sensor;

.field private mSarSensorCS0:F

.field private mSarSensorCS3:F

.field private mSarSensorEnabled:Z

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSlideMode:Z

.field private mSlideModeSensor:Landroid/hardware/Sensor;

.field private mSlideModeSensorEnabled:Z

.field private mWirelessCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCurrentSarState:I

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    .line 219
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$3;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 277
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    .line 64
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensorEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    .line 103
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalSW:Z

    .line 104
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    .line 105
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    .line 108
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    .line 109
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeConnected:Z

    .line 110
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    .line 111
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideMode:Z

    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS0:F

    .line 113
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS3:F

    .line 114
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHHSensorHHMode:Z

    .line 116
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 202
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$2;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 348
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mContext:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getDeviceSarConfig()V

    .line 283
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 286
    .local v0, "anySensorEanbled":Z
    :cond_1
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    .line 287
    :cond_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 288
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 290
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-direct {v2, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;)V

    sput-object v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    .line 291
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->start()V

    .line 292
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 295
    if-eqz v0, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->startSensorSarControl()V

    .line 302
    :cond_3
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    if-eqz v1, :cond_4

    .line 303
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->startPollCableStatus()V

    .line 306
    :cond_4
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 37
    invoke-static {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sendMsgToHandler(III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeConnected:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->onChargerConnect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->onChargerDisconnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->pollCableGpio()V

    return-void
.end method

.method static synthetic access$1500()Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1

    .line 37
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .line 37
    sget v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCurrentSarState:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 37
    sput p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCurrentSarState:I

    return p0
.end method

.method static synthetic access$202(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->evaluateSensorSarControl(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS0:F

    return v0
.end method

.method static synthetic access$402(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS0:F

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)F
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS3:F

    return v0
.end method

.method static synthetic access$502(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS3:F

    return p1
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->refreshSensorListener(II)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 37
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mQcRilHookReady:Z

    return p0
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 37
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    return v0
.end method

.method static synthetic access$902(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    return p1
.end method

.method private evaluateSensorSarControl(I)I
    .locals 6
    .param p1, "sensorType"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "sarState":I
    const/4 v1, 0x0

    .line 172
    .local v1, "bNonHeadHandMode":Z
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 173
    const-string v2, "evaluateSensorSarControl, WirelessCharging is ongoing, ignore sensor enents"

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x5

    return v2

    .line 177
    :cond_0
    const v2, 0x1fa263a

    const/4 v4, 0x0

    if-eq p1, v2, :cond_1

    const v2, 0x1fa2647

    if-eq p1, v2, :cond_1

    const v2, 0x1fa269b

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 181
    :cond_1
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    const/4 v5, 0x6

    if-nez v2, :cond_3

    .line 182
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideMode:Z

    if-ne v2, v3, :cond_2

    move v5, v4

    :cond_2
    move v0, v5

    goto :goto_2

    .line 184
    :cond_3
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    if-nez v2, :cond_5

    .line 185
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideMode:Z

    if-ne v2, v3, :cond_4

    move v5, v4

    :cond_4
    move v0, v5

    goto :goto_2

    .line 187
    :cond_5
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS0:F

    const v5, 0x4604d000    # 8500.0f

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorCS3:F

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    :goto_0
    move v2, v3

    :goto_1
    move v1, v2

    .line 188
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideMode:Z

    if-nez v2, :cond_8

    if-ne v1, v3, :cond_8

    .line 189
    const/4 v0, 0x6

    goto :goto_2

    .line 191
    :cond_8
    const/4 v0, 0x0

    .line 196
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Triger SAR state change from sensorType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sarState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 197
    invoke-static {v3, v0, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sendMsgToHandler(III)V

    .line 198
    return v0
.end method

.method private getDeviceSarConfig()V
    .locals 5

    .line 240
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    .line 241
    const-string v0, "ro.product.mod_device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalSW:Z

    .line 242
    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLOBAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    .line 243
    const-string v0, "ro.boot.hwlevel"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "hWLevel":Ljava/lang/String;
    const-string v1, "P1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "P2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    .line 247
    const-string v1, "persist.radio.sar_cable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    .line 251
    const-string v1, "persist.radio.sar_sar_sensor"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    .line 254
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    const-string v4, "cepheus"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalSW:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    .line 258
    const-string v1, "persist.radio.sar_headhand_sensor"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    .line 259
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    const-string v4, "perseus"

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalSW:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    .line 260
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    .line 264
    const-string v1, "persist.radio.sar_slidemode_sensor"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    .line 265
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    .line 268
    const-string v1, "persist.radio.sar_proximity_sensor"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensorEnabled:Z

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", globalHW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalHW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", globalSW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mGlobalSW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", MPProduct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CableSar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCableSarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", SarSensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", HeadHand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", SlideMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Proximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 564
    const-string v0, "DynamicSarController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .line 236
    :cond_0
    return-void
.end method

.method private onChargerConnect()V
    .locals 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChargerConnect, chargeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSarController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeConnected:Z

    .line 371
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    if-nez v1, :cond_0

    .line 373
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    .line 374
    const v1, 0x1fa2654

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->releaseSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 375
    const/4 v1, 0x5

    .line 376
    .local v1, "sarState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChargerConnect, sarState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sendMsgToHandler(III)V

    .line 379
    .end local v1    # "sarState":I
    :cond_0
    return-void
.end method

.method private onChargerDisconnect()V
    .locals 5

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChargerDisconnect, chargeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSarController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mChargeConnected:Z

    .line 385
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    if-eqz v1, :cond_0

    .line 386
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mWirelessCharging:Z

    .line 388
    const v1, 0x1fa2654

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 389
    const v1, 0x1fa269b

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->evaluateSensorSarControl(I)I

    move-result v1

    .line 391
    .local v1, "sarState":I
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v1, v0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sendDelayedMsgToHandler(IIIJ)V

    .line 393
    .end local v1    # "sarState":I
    :cond_0
    return-void
.end method

.method private final pollCableGpio()V
    .locals 6

    .line 498
    const-string v0, "/dev/gpio_rf"

    .line 499
    .local v0, "hwDevice":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollCableGpio, polling device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 501
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 503
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 504
    .local v2, "value":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollCableGpio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 505
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    invoke-static {v3, v5, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->sendMsgToHandler(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    .end local v2    # "value":Z
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private refreshSensorListener(II)V
    .locals 4
    .param p1, "messageType"    # I
    .param p2, "state"    # I

    .line 456
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne p1, v3, :cond_3

    .line 457
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 461
    :cond_1
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    goto :goto_2

    .line 459
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    goto :goto_2

    .line 463
    :cond_3
    const/16 v3, 0x20

    if-ne p1, v3, :cond_6

    .line 464
    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_1

    .line 466
    :cond_4
    if-nez p2, :cond_6

    .line 467
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    goto :goto_2

    .line 465
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    .line 471
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshSensorListener, call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bCallStateActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->bDataStateActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private registerChargeReceiver()V
    .locals 3

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    return-void
.end method

.method private registerSensorListener(ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .param p1, "sensorType"    # I
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListenerForSensor, sensorType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    .line 398
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-eq p1, v2, :cond_3

    const v2, 0x1fa263a

    if-eq p1, v2, :cond_2

    const v1, 0x1fa2647

    if-eq p1, v1, :cond_1

    const v1, 0x1fa2654

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensor:Landroid/hardware/Sensor;

    .line 416
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListenerForSensor, start SARSENSOR for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensor:Landroid/hardware/Sensor;

    .line 411
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 412
    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    .line 406
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 407
    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 401
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 421
    :cond_4
    :goto_0
    return-void
.end method

.method private releaseSensorListener(ILandroid/hardware/SensorEventListener;)V
    .locals 3
    .param p1, "sensorType"    # I
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseSensorListener, sensorType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    .line 426
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const v1, 0x1fa263a

    if-eq p1, v1, :cond_2

    const v1, 0x1fa2647

    if-eq p1, v1, :cond_1

    const v1, 0x1fa2654

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 444
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensor:Landroid/hardware/Sensor;

    goto :goto_0

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 439
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    .line 440
    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 434
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    .line 435
    goto :goto_0

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 429
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensor:Landroid/hardware/Sensor;

    .line 449
    :cond_4
    :goto_0
    return-void
.end method

.method private static sendDelayedMsgToHandler(IIIJ)V
    .locals 2
    .param p0, "message"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "delayMillis"    # J

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDelayedMsgToHandler, Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->getCmdHandler()Landroid/os/Handler;

    move-result-object v0

    .line 577
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 578
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 579
    return-void
.end method

.method private static sendMsgToHandler(III)V
    .locals 2
    .param p0, "message"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMsgToHandler, Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->log(Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;->getCmdHandler()Landroid/os/Handler;

    move-result-object v0

    .line 570
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 571
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    return-void
.end method

.method private startPhoneListener()V
    .locals 3

    .line 452
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 453
    return-void
.end method

.method private final startPollCableStatus()V
    .locals 1

    .line 487
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$5;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V

    .line 493
    .local v0, "sarGpioPollThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 494
    return-void
.end method

.method private startSensorSarControl()V
    .locals 2

    .line 312
    const-string v0, "DynamicSarController"

    const-string v1, "onSarControlSetup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSarSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 315
    const v0, 0x1fa2654

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 320
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mDeviceName:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mMPProduct:Z

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerChargeReceiver()V

    .line 329
    :cond_2
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSlideModeSensorEnabled:Z

    if-eqz v0, :cond_3

    .line 330
    const v0, 0x1fa263a

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 334
    :cond_3
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mHeadHandSensorEnabled:Z

    if-eqz v0, :cond_4

    .line 335
    const v0, 0x1fa2647

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->registerSensorListener(ILandroid/hardware/SensorEventListener;)V

    .line 338
    :cond_4
    return-void
.end method
