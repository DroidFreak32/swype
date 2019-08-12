.class public final Lcom/fsck/k9/NotificationSetting;
.super Ljava/lang/Object;
.source "NotificationSetting.java"


# instance fields
.field private mLed:Z

.field private mLedColor:I

.field private mRing:Z

.field private mRingtoneUri:Ljava/lang/String;

.field private mVibrate:Z

.field private mVibratePattern:I

.field private mVibrateTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getLedColor()I
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->mLedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/NotificationSetting;->mRingtoneUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getVibratePattern()I
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->mVibratePattern:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getVibrateTimes()I
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/NotificationSetting;->mVibrateTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getVibration()[J
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    .line 127
    iget v7, p0, Lcom/fsck/k9/NotificationSetting;->mVibratePattern:I

    iget v8, p0, Lcom/fsck/k9/NotificationSetting;->mVibrateTimes:I

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    new-array v0, v4, [J

    fill-array-data v0, :array_1

    new-array v1, v4, [J

    fill-array-data v1, :array_2

    new-array v2, v4, [J

    fill-array-data v2, :array_3

    new-array v3, v4, [J

    fill-array-data v3, :array_4

    new-array v4, v4, [J

    fill-array-data v4, :array_5

    packed-switch v7, :pswitch_data_0

    move-object v0, v5

    :goto_0
    :pswitch_0
    array-length v1, v0

    mul-int/2addr v1, v8

    new-array v2, v1, [J

    move v1, v6

    :goto_1
    if-ge v1, v8, :cond_0

    array-length v3, v0

    mul-int/2addr v3, v1

    array-length v4, v0

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    goto :goto_0

    :pswitch_2
    move-object v0, v2

    goto :goto_0

    :pswitch_3
    move-object v0, v3

    goto :goto_0

    :pswitch_4
    move-object v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    aput-wide v0, v2, v6

    return-object v2

    nop

    :array_0
    .array-data 8
        0x12c
        0xc8
    .end array-data

    :array_1
    .array-data 8
        0x64
        0xc8
    .end array-data

    :array_2
    .array-data 8
        0x64
        0x1f4
    .end array-data

    :array_3
    .array-data 8
        0xc8
        0xc8
    .end array-data

    :array_4
    .array-data 8
        0xc8
        0x1f4
    .end array-data

    :array_5
    .array-data 8
        0x1f4
        0x1f4
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized isLed()Z
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->mLed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLed(Z)V
    .locals 1
    .param p1, "led"    # Z

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->mLed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->mLedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setRing(Z)V
    .locals 1
    .param p1, "ring"    # Z

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->mRing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setRingtone(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/NotificationSetting;->mRingtoneUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVibrate(Z)V
    .locals 1
    .param p1, "vibrate"    # Z

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/NotificationSetting;->mVibrate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVibratePattern(I)V
    .locals 1
    .param p1, "pattern"    # I

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->mVibratePattern:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVibrateTimes(I)V
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/NotificationSetting;->mVibrateTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized shouldRing()Z
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->mRing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized shouldVibrate()Z
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/NotificationSetting;->mVibrate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
