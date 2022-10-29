.class public Lcom/nuance/swype/input/SystemState;
.super Ljava/lang/Object;
.source "SystemState.java"


# static fields
.field private static SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field protected hasVibrator:Z

.field private isNetworkConnected:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private ringerMode:I

.field private users:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string/jumbo v0, "SystemState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 59
    const-string/jumbo v0, "sys.im.enable.vibrator"

    sput-object v0, Lcom/nuance/swype/input/SystemState;->SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    .line 62
    new-instance v1, Lcom/nuance/swype/input/SystemState$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/SystemState$1;-><init>(Lcom/nuance/swype/input/SystemState;)V

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->audioManager:Landroid/media/AudioManager;

    .line 83
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    invoke-static {v1}, Lcom/nuance/android/compat/VibratorCompat;->hasVibrator(Landroid/os/Vibrator;)Z

    move-result v1

    if-eqz v1, :cond_62

    move v1, v2

    :goto_3b
    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    .line 85
    iget-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    if-eqz v1, :cond_4e

    .line 86
    new-instance v0, Lcom/nuance/android/compat/SystemPropertiesProxy;

    invoke-direct {v0, p1}, Lcom/nuance/android/compat/SystemPropertiesProxy;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "sysProps":Lcom/nuance/android/compat/SystemPropertiesProxy;
    sget-object v1, Lcom/nuance/swype/input/SystemState;->SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/android/compat/SystemPropertiesProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    .line 89
    .end local v0    # "sysProps":Lcom/nuance/android/compat/SystemPropertiesProxy;
    :cond_4e
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateRingerMode()V

    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateNetworkState()V

    .line 92
    return-void

    .line 84
    :cond_62
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/SystemState;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/SystemState;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateNetworkState()V

    return-void
.end method

.method private getSysBool(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_10

    move v0, v1

    :goto_9
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private updateNetworkState()V
    .registers 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 204
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_f
    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->isNetworkConnected:Z

    .line 1023
    sget-boolean v1, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 206
    if-eqz v1, :cond_24

    .line 207
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/SystemState;->isNetworkConnected:Z

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setNetworkConnected(Z)V

    .line 209
    :cond_24
    return-void

    .line 204
    :cond_25
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private updateRingerMode()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    .line 199
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updateRingerMode(): ringer mode: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 200
    return-void
.end method


# virtual methods
.method public autoCapsValue()I
    .registers 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_caps"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public autoPunctuateValue()I
    .registers 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_punctuate"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public autoReplaceValue()I
    .registers 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_replace"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public closeWatch(Ljava/lang/Object;)V
    .registers 6
    .param p1, "user"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 120
    :cond_8
    :goto_8
    return-void

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 117
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "close(): stop watching state"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_8
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNetworkOperatorMCC()I
    .registers 9

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_4d

    .line 217
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_15
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "mcc":I
    sget-object v3, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Country MCC code:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_32} :catch_33

    .line 225
    .end local v0    # "mcc":I
    :goto_32
    return v0

    .line 222
    :catch_33
    move-exception v3

    sget-object v3, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not parse networkOperator: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    :cond_4d
    move v0, v2

    .line 225
    goto :goto_32
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public hasHapticHardwareSupport()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3

    .prologue
    .line 186
    const-string/jumbo v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKeySoundEnabled()Z
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isPhoneCallActive()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isKeyboardSoundEnabled()I
    .registers 2

    .prologue
    .line 248
    const/4 v0, -0x1

    return v0
.end method

.method public isKeyboardVibrateEnabled()I
    .registers 2

    .prologue
    .line 256
    const/4 v0, -0x1

    return v0
.end method

.method public isNetworkActive()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->isNetworkConnected:Z

    return v0
.end method

.method public isPhoneCallActive()Z
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSilentMode()Z
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x2

    iget v1, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isTouchTonesEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "dtmf_tone"

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isVibrateEnabled()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isPhoneCallActive()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public openWatch(Ljava/lang/Object;)V
    .registers 6
    .param p1, "user"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_34

    .line 104
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "open(): start watching state"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :cond_34
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public setKeyboardSound(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public setKeyboardVibrate(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 261
    return-void
.end method
