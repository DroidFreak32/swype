.class public Lcom/nuance/swype/input/SystemState;
.super Ljava/lang/Object;
.source "SystemState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/SystemState$CallStateListener;
    }
.end annotation


# static fields
.field private static SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private callStartAction:Ljava/lang/Runnable;

.field private callState:I

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private hasVibrator:Z

.field private isNetworkConnected:Z

.field private final phoneStateListener:Landroid/telephony/PhoneStateListener;

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
    .locals 1

    .prologue
    .line 34
    const-string v0, "SystemState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 65
    const-string v0, "sys.im.enable.vibrator"

    sput-object v0, Lcom/nuance/swype/input/SystemState;->SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v3, p0, Lcom/nuance/swype/input/SystemState;->callState:I

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    .line 68
    new-instance v1, Lcom/nuance/swype/input/SystemState$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/SystemState$1;-><init>(Lcom/nuance/swype/input/SystemState;)V

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v1, Lcom/nuance/swype/input/SystemState$CallStateListener;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/SystemState$CallStateListener;-><init>(Lcom/nuance/swype/input/SystemState;)V

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 110
    iput-object p1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    .line 111
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->audioManager:Landroid/media/AudioManager;

    .line 112
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    .line 113
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    invoke-static {v1}, Lcom/nuance/android/compat/VibratorCompat;->hasVibrator(Landroid/os/Vibrator;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    .line 114
    iget-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Lcom/nuance/android/compat/SystemPropertiesProxy;

    invoke-direct {v0, p1}, Lcom/nuance/android/compat/SystemPropertiesProxy;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "sysProps":Lcom/nuance/android/compat/SystemPropertiesProxy;
    sget-object v1, Lcom/nuance/swype/input/SystemState;->SYSPROP_IM_ENABLE_VIBRATE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/android/compat/SystemPropertiesProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    .line 118
    .end local v0    # "sysProps":Lcom/nuance/android/compat/SystemPropertiesProxy;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/nuance/swype/input/SystemState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/SystemState;->callState:I

    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateRingerMode()V

    .line 121
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateNetworkState()V

    .line 122
    return-void

    :cond_1
    move v1, v3

    .line 113
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/SystemState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/SystemState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->updateNetworkState()V

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getSysBool(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private updateNetworkState()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 234
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/SystemState;->isNetworkConnected:Z

    .line 236
    return-void

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    .line 229
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "updateRingerMode(): ringer mode: "

    iget v2, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private watchCallState(Z)V
    .locals 3
    .param p1, "watch"    # Z

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 240
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz p1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method


# virtual methods
.method public autoCapsValue()I
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_caps"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public autoPunctuateValue()I
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_punctuate"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public autoReplaceValue()I
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/nuance/swype/input/SystemState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_replace"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public closeWatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "close(): stop watching state"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SystemState;->watchCallState(Z)V

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SystemState;->setCallStartAction(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public hasHapticHardwareSupport()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2

    .prologue
    .line 216
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKeySoundEnabled()Z
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isPhoneCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkActive()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->isNetworkConnected:Z

    return v0
.end method

.method public isPhoneCallActive()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/nuance/swype/input/SystemState;->callState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentMode()Z
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x2

    iget v1, p0, Lcom/nuance/swype/input/SystemState;->ringerMode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sound_effects_enabled"

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchTonesEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isSilentMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dtmf_tone"

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/SystemState;->getSysBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/nuance/swype/input/SystemState;->hasVibrator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/SystemState;->isPhoneCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onCallStateChanged(): "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    iput p1, p0, Lcom/nuance/swype/input/SystemState;->callState:I

    .line 264
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->callStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->callStartAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 267
    :cond_0
    return-void
.end method

.method public openWatch(Ljava/lang/Object;)V
    .locals 4
    .param p1, "user"    # Ljava/lang/Object;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/nuance/swype/input/SystemState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "open(): start watching state"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SystemState;->watchCallState(Z)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/SystemState;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SystemState;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public setCallStartAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nuance/swype/input/SystemState;->callStartAction:Ljava/lang/Runnable;

    .line 259
    return-void
.end method
