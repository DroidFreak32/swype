.class Lcom/facebook/appevents/internal/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static final INTERRUPTION_COUNT_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.interruptionCount"

.field private static final LAST_SESSION_INFO_END_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionEndTime"

.field private static final LAST_SESSION_INFO_START_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionStartTime"

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionId"


# instance fields
.field private diskRestoreTime:Ljava/lang/Long;

.field private interruptionCount:I

.field private sessionId:Ljava/util/UUID;

.field private sessionLastEventTime:Ljava/lang/Long;

.field private sessionStartTime:Ljava/lang/Long;

.field private sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 4
    .param p1, "sessionStartTime"    # Ljava/lang/Long;
    .param p2, "sessionLastEventTime"    # Ljava/lang/Long;

    .prologue
    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V
    .registers 4
    .param p1, "sessionStartTime"    # Ljava/lang/Long;
    .param p2, "sessionLastEventTime"    # Ljava/lang/Long;
    .param p3, "sessionId"    # Ljava/util/UUID;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    .line 53
    iput-object p2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    .line 54
    iput-object p3, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    .line 55
    return-void
.end method

.method public static clearSavedSessionFromDisk()V
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    invoke-static {}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->clearSavedSourceApplicationInfoFromDisk()V

    .line 94
    return-void
.end method

.method public static getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 66
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 67
    .local v6, "startTime":J
    const-string/jumbo v5, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    .local v0, "endTime":J
    const-string/jumbo v5, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "sessionIDStr":Ljava/lang/String;
    cmp-long v5, v6, v8

    if-eqz v5, :cond_2a

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2a

    if-nez v2, :cond_2b

    .line 79
    :cond_2a
    :goto_2a
    return-object v3

    .line 74
    :cond_2b
    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 75
    .local v3, "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    const-string/jumbo v5, "com.facebook.appevents.SessionInfo.interruptionCount"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    .line 76
    invoke-static {}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->getStoredSourceApplicatioInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/appevents/internal/SessionInfo;->diskRestoreTime:Ljava/lang/Long;

    .line 78
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    goto :goto_2a
.end method


# virtual methods
.method public getDiskRestoreTime()J
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->diskRestoreTime:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->diskRestoreTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getInterruptionCount()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    return v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public getSessionLastEventTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionLength()J
    .registers 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_b

    .line 130
    :cond_8
    const-wide/16 v0, 0x0

    .line 133
    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getSessionStartTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    return-object v0
.end method

.method public incrementInterruptionCount()V
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    .line 118
    return-void
.end method

.method public setSessionLastEventTime(Ljava/lang/Long;)V
    .registers 2
    .param p1, "essionLastEventTime"    # Ljava/lang/Long;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public setSessionStartTime(Ljava/lang/Long;)V
    .registers 2
    .param p1, "sessionStartTime"    # Ljava/lang/Long;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    .line 106
    return-void
.end method

.method public setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V
    .registers 2
    .param p1, "sourceApplicationInfo"    # Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 142
    return-void
.end method

.method public writeSessionToDisk()V
    .registers 5

    .prologue
    .line 148
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    iget v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string/jumbo v1, "com.facebook.appevents.SessionInfo.sessionId"

    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    if-eqz v1, :cond_44

    .line 159
    iget-object v1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-virtual {v1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->writeSourceApplicationInfoToDisk()V

    .line 161
    :cond_44
    return-void
.end method
